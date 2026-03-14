module bootstrap/spretty

import bootstrap/core
import bootstrap/lexer

import std/num/float64

// Conversion from Core to S-expression (Equivalent of SPretty.hs)

fun bool/sexpr( b : bool ) : sexpr
  Atom(if b then "True" else "False")

pub fun type-expr/sexpr( t : type-expr ) : div sexpr
  match t
    TForall(vars, tp) -> List([Atom("forall"), List(vars.map(fn(v) Atom(v.show))), tp.sexpr])
    TFun(args, eff, res) ->
      List([Atom("fun"), List(args.map(fn(p) { val (n,tp) = p; List([Atom(n), tp.sexpr]) })), eff.sexpr, res.sexpr])
    TVar(id) -> List([Atom("tvar"), Atom(id.show)])
    TCon(name) -> List([Atom("tcon"), Atom(name)])
    TApp(f, args) -> List(Cons(Atom("tapp"), Cons(f.sexpr, args.map(sexpr))))
    TSyn(name, args, tp) ->
      List(Cons(Atom("tsyn"), Cons(Atom(name), args.map(sexpr) ++ [tp.sexpr])))

pub fun lit/sexpr( l : lit ) : sexpr
  match l
    LitInt(i) -> Atom(i.show)
    LitFloat(d) -> Atom(d.show)
    LitChar(c) -> Atom(c.show)
    LitString(s) -> Atom(s.show)

pub fun value-repr/sexpr( v : value-repr ) : sexpr
  List([Atom("value-repr"), Atom(v.raw-val.show), Atom(v.scan.show), Atom(v.align.show)])

pub fun ctx-path/sexpr( p : ctx-path ) : sexpr
  match p
    CtxNone -> Atom("none")
    CtxField(name) -> List([Atom("field"), Atom(name)])

pub fun data-repr/sexpr( dr : data-repr ) : sexpr
  match dr
    DataEnum -> Atom("enum")
    DataIso -> Atom("iso")
    DataSingleStruct -> Atom("single-struct")
    DataStructAsMaybe -> Atom("struct-as-maybe")
    DataStruct -> Atom("struct")
    DataSingle(has) -> List([Atom("single"), has.bool/sexpr])
    DataAsMaybe -> Atom("as-maybe")
    DataAsList -> Atom("as-list")
    DataSingleNormal -> Atom("single-normal")
    DataNormal(has) -> List([Atom("normal"), has.bool/sexpr])
    DataOpen -> Atom("open")

pub fun con-repr/sexpr( cr : con-repr ) : div sexpr
  match cr
    ConEnum(dr, vr, tag) -> List([Atom("enum"), dr.sexpr, vr.sexpr, Atom(tag.show)])
    ConIso(dr, vr, tag) -> List([Atom("iso"), dr.sexpr, vr.sexpr, Atom(tag.show)])
    ConSingleton(dr, vr, tag) -> List([Atom("singleton"), dr.sexpr, vr.sexpr, Atom(tag.show)])
    ConSingle(dr, vr, path, tag) -> List([Atom("single"), dr.sexpr, vr.sexpr, path.sexpr, Atom(tag.show)])
    ConAsJust(dr, vr, name, tag) -> List([Atom("as-just"), dr.sexpr, vr.sexpr, Atom(name), Atom(tag.show)])
    ConStruct(dr, vr, tag) -> List([Atom("struct"), dr.sexpr, vr.sexpr, Atom(tag.show)])
    ConAsCons(dr, vr, name, path, tag) -> List([Atom("as-cons"), dr.sexpr, vr.sexpr, Atom(name), path.sexpr, Atom(tag.show)])
    ConOpen(dr, vr, path, tag) -> List([Atom("open"), dr.sexpr, vr.sexpr, path.sexpr, Atom(tag.show)])
    ConNormal(dr, vr, path, tag) -> List([Atom("normal"), dr.sexpr, vr.sexpr, path.sexpr, Atom(tag.show)])

pub fun pattern/sexpr( p : pattern ) : div sexpr
  match p
    PatCon(name, args, repr, targs) ->
      List([Atom("pat-con"), Atom(name), List(args.map(sexpr)), repr.sexpr, List(targs.map(sexpr))])
    PatVar(name, pat) -> List([Atom("pat-var"), Atom(name), pat.sexpr])
    PatLit(l) -> List([Atom("pat-lit"), l.sexpr])
    PatWild -> Atom("pat-wild")

pub fun guard/sexpr( g : guard ) : div sexpr
  List([Atom("guard"), g.test.sexpr, g.expr.sexpr])

pub fun branch/sexpr( b : branch ) : div sexpr
  List([Atom("branch"), List(b.patterns.map(sexpr)), List(b.guards.map(sexpr))])

pub fun expr/sexpr( e : expr ) : div sexpr
  match e
    Lam(tnames, eff, body) -> List([Atom("lam"), List(tnames.map(fn(tn) List([Atom(tn.name), tn.tp.sexpr]))), eff.sexpr, body.sexpr])
    Var(name) -> List([Atom("var"), Atom(name)])
    App(f, args) -> List(Cons(Atom("app"), Cons(f.sexpr, args.map(sexpr))))
    TypeLam(tvs, body) -> List([Atom("type-lam"), List(tvs.map(fn(v) Atom(v.show))), body.sexpr])
    TypeApp(f, tps) -> List(Cons(Atom("type-app"), Cons(f.sexpr, tps.map(sexpr))))
    Con(name, repr) -> List([Atom("con"), Atom(name), repr.sexpr])
    Lit(l) -> l.sexpr
    Let(dgs, body) -> List([Atom("let"), List(dgs.map(sexpr)), body.sexpr])
    Case(scruts, branches) -> List([Atom("case"), List(scruts.map(sexpr)), List(branches.map(sexpr))])

pub fun param-info/sexpr( pi : param-info ) : sexpr
  match pi
    Borrow -> Atom("borrow")
    Own -> Atom("own")

pub fun fip-alloc/sexpr( fa : fip-alloc ) : sexpr
  match fa
    AllocAtMost(n) -> List([Atom("at-most"), Atom(n.show)])
    AllocFinitely -> Atom("finitely")
    AllocUnlimited -> Atom("unlimited")

pub fun fip/sexpr( f : fip ) : div sexpr
  match f
    Fip(alloc) -> List([Atom("fip"), alloc.sexpr])
    Fbip(alloc, tail) -> List([Atom("fbip"), alloc.sexpr, tail.bool/sexpr])
    NoFip(tail) -> List([Atom("no-fip"), tail.bool/sexpr])

pub fun def-sort/sexpr( ds : def-sort ) : div sexpr
  match ds
    DefFun(pinfos, f) -> List([Atom("def-fun"), List(pinfos.map(sexpr)), f.sexpr])
    DefVal -> Atom("def-val")
    DefVar -> Atom("def-var")

pub fun def/sexpr( d : def ) : div sexpr
  List([Atom("def"), Atom(d.name), d.tp.sexpr, d.expr.sexpr, d.sort.sexpr])

pub fun def-group/sexpr( dg : def-group ) : div sexpr
  match dg
    DefRec(defs) -> List(Cons(Atom("rec"), defs.map(sexpr)))
    DefNonRec(d) -> List([Atom("non-rec"), d.sexpr])

pub fun data-def/sexpr( dd : data-def ) : div sexpr
  match dd
    DataDefValue(vr) -> List([Atom("value"), vr.sexpr])
    DataDefNormal -> Atom("normal")
    DataDefLazy(f) -> List([Atom("lazy"), f.sexpr])
    DataDefOpen(is-ext) -> List([Atom("open"), is-ext.bool/sexpr])
    DataDefAuto(is-struct) -> List([Atom("auto"), is-struct.bool/sexpr])

pub fun con-info/sexpr( ci : con-info ) : div sexpr
  List([Atom("con-info"), Atom(ci.name), List(ci.params.map(fn(p) { val (n,t) = p; List([Atom(n), t.sexpr]) })), ci.lazy.sexpr])

pub fun data-info/sexpr( di : data-info ) : div sexpr
  List([Atom("data-info"), Atom(di.name), List(di.params.map(fn(p) Atom(p.show))), List(di.constrs.map(sexpr)), di.is-rec.bool/sexpr, di.ddef.sexpr])

pub fun type-def/sexpr( td : type-def ) : div sexpr
  match td
    Synonym(name, tp) -> List([Atom("synonym"), Atom(name), tp.sexpr])
    Data(info) -> List([Atom("data"), info.sexpr])

pub fun type-def-group/sexpr( tdg : type-def-group ) : div sexpr
  List(Cons(Atom("type-def-group"), tdg.tdefs.map(sexpr)))

pub fun core/sexpr( c : core ) : div sexpr
  List([Atom("core"), List(c.type-defs.map(sexpr)), List(c.defs.map(sexpr))])
