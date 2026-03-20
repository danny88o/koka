module bootstrap/parser

import bootstrap/core
import bootstrap/lexer

import std/num/float64

// Conversion helpers
fun expect-list(s: sexpr): <exn> list<sexpr>
  match s
    List(l) -> l
    Atom(a) -> throw("Expected list, found atom: " ++ a)

fun expect-atom(s: sexpr): <exn> string
  match s
    Atom(a) -> a
    List(_) -> throw("Expected atom, found list")

fun expect-tag(l: list<sexpr>, tag: string): <exn> list<sexpr>
  match l
    Cons(Atom(t), rest) | t == tag -> rest
    _ -> throw("Expected tag " ++ tag)

// Conversions
pub fun sexpr-to-type-expr(s: sexpr): <div,exn> type-expr
  match s
    List(Cons(Atom("forall"), [List(vars), t])) ->
      TForall(vars.map(fn(v) v.expect-atom.parse-int.default(0)), t.sexpr-to-type-expr)
    List(Cons(Atom("fun"), [List(args), eff, res])) ->
      TFun(args.map(fn(a) match a { List([name, tp]) -> (name.expect-atom, tp.sexpr-to-type-expr); _ -> throw("Invalid fun arg") }),
           eff.sexpr-to-type-expr, res.sexpr-to-type-expr)
    List(Cons(Atom("tvar"), [id])) -> TVar(id.expect-atom.parse-int.default(0))
    List(Cons(Atom("tcon"), [name])) -> TCon(name.expect-atom)
    List(Cons(Atom("tapp"), Cons(f, args))) -> TApp(f.sexpr-to-type-expr, args.map(sexpr-to-type-expr))
    List(Cons(Atom("tsyn"), Cons(Atom(name), rest))) ->
      match rest.reverse
        Cons(t, args-rev) -> TSyn(name, args-rev.reverse.map(sexpr-to-type-expr), t.sexpr-to-type-expr)
        _ -> throw("Invalid tsyn sexpr")
    _ -> throw("Invalid type-expr sexpr: " ++ s.sexpr/show)

pub fun sexpr-to-tname(s: sexpr): <div,exn> tname
  match s.expect-list
    [name, tp] -> TName(name.expect-atom, tp.sexpr-to-type-expr)
    _ -> throw("Invalid tname sexpr")

pub fun sexpr-to-lit(s: sexpr): <exn> lit
  match s
    Atom(a) ->
      match a.parse-int
        Just(i) -> LitInt(i)
        Nothing -> match a.parse-float64
          Just(d) -> LitFloat(d)
          Nothing -> if a.starts-with("\"").is-just && a.ends-with("\"").is-just then LitString(a.unquote) else LitChar(a.list.head.default(' '))
    _ -> throw("Invalid lit sexpr")

fun unquote(s: string): string
  if s.starts-with("\"").is-just && s.ends-with("\"").is-just then s.slice.subslice(1, s.count - 1).string else s

// Representations
pub fun sexpr-to-value-repr(s: sexpr): <exn> value-repr
  match s.expect-list.expect-tag("value-repr")
    [r, scan, align] -> ValueRepr(r.expect-atom.parse-int.default(0), scan.expect-atom.parse-int.default(0), align.expect-atom.parse-int.default(0))
    _ -> throw("Invalid value-repr sexpr")

pub fun sexpr-to-ctx-path(s: sexpr): <exn> ctx-path
  match s
    Atom("none") -> CtxNone
    List([Atom("field"), name]) -> CtxField(name.expect-atom)
    _ -> throw("Invalid ctx-path sexpr")

pub fun sexpr-to-data-repr(s: sexpr): <exn> data-repr
  match s
    Atom("enum") -> DataEnum
    Atom("iso") -> DataIso
    Atom("single-struct") -> DataSingleStruct
    Atom("struct-as-maybe") -> DataStructAsMaybe
    Atom("struct") -> DataStruct
    List([Atom("single"), has]) -> DataSingle(has.expect-atom == "True")
    Atom("as-maybe") -> DataAsMaybe
    Atom("as-list") -> DataAsList
    Atom("single-normal") -> DataSingleNormal
    List([Atom("normal"), has]) -> DataNormal(has.expect-atom == "True")
    Atom("open") -> DataOpen
    _ -> throw("Invalid data-repr sexpr")

pub fun sexpr-to-maybe(s: sexpr, f: (sexpr) -> <div|e> a): <div|e> maybe<a>
  match s
    Atom("nothing") -> Nothing
    List(Cons(Atom("just"), [x])) -> Just(f(x))
    _ -> Nothing

pub fun sexpr-to-con-repr(s: sexpr): <div,exn> con-repr
  match s.expect-list
    Cons(Atom("enum"), [tn, dr, vr, tag]) -> ConEnum(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, tag.expect-atom.parse-int.default(0))
    Cons(Atom("iso"), [tn, dr, vr, tag]) -> ConIso(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, tag.expect-atom.parse-int.default(0))
    Cons(Atom("singleton"), [tn, dr, vr, tag]) -> ConSingleton(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, tag.expect-atom.parse-int.default(0))
    Cons(Atom("single"), [tn, dr, vr, path, tag]) -> ConSingle(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, path.sexpr-to-ctx-path, tag.expect-atom.parse-int.default(0))
    Cons(Atom("as-just"), [tn, dr, vr, name, tag]) -> ConAsJust(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, name.expect-atom, tag.expect-atom.parse-int.default(0))
    Cons(Atom("struct"), [tn, dr, vr, tag]) -> ConStruct(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, tag.expect-atom.parse-int.default(0))
    Cons(Atom("as-cons"), [tn, dr, vr, name, path, tag]) -> ConAsCons(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, name.expect-atom, path.sexpr-to-ctx-path, tag.expect-atom.parse-int.default(0))
    Cons(Atom("open"), [tn, dr, vr, path, tag]) -> ConOpen(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, path.sexpr-to-ctx-path, tag.expect-atom.parse-int.default(0))
    Cons(Atom("normal"), [tn, dr, vr, path, tag]) -> ConNormal(tn.expect-atom, dr.sexpr-to-data-repr, vr.sexpr-to-value-repr, path.sexpr-to-ctx-path, tag.expect-atom.parse-int.default(0))
    l -> throw("Invalid con-repr sexpr:\n" ++ l.show)

// Expressions
pub fun sexpr-to-expr(s: sexpr): <div,exn> expr
  match s.expect-list
    Cons(Atom("lam"), [List(tnames), eff, body]) ->
      Lam(tnames.map(sexpr-to-tname), eff.sexpr-to-type-expr, body.sexpr-to-expr)
    Cons(Atom("var"), [tn]) -> Var(tn.sexpr-to-tname)
    Cons(Atom("app"), Cons(f, args)) -> App(f.sexpr-to-expr, args.map(sexpr-to-expr))
    Cons(Atom("type-lam"), [List(tvs), body]) -> TypeLam(tvs.map(fn(v) v.expect-atom.parse-int.default(0)), body.sexpr-to-expr)
    Cons(Atom("type-app"), Cons(f, tps)) -> TypeApp(f.sexpr-to-expr, tps.map(sexpr-to-type-expr))
    Cons(Atom("con"), [name, repr]) -> Con(TName(name.expect-atom, TVar(-1)), repr.sexpr-to-con-repr)
    Cons(Atom("let"), [List(dgs), body]) -> Let(dgs.map(sexpr-to-def-group), body.sexpr-to-expr)
    Cons(Atom("case"), [List(scruts), List(branches)]) -> Case(scruts.map(sexpr-to-expr), branches.map(sexpr-to-branch))
    [l] -> Lit(l.sexpr-to-lit)
    _ -> throw("Invalid expr sexpr: " ++ s.sexpr/show)

pub fun sexpr-to-def-group(s: sexpr): <div,exn> def-group
  match s.expect-list
    Cons(Atom("rec"), defs) -> DefRec(defs.map(sexpr-to-def))
    Cons(Atom("non-rec"), [d]) -> DefNonRec(d.sexpr-to-def)
    _ -> throw("Invalid def-group sexpr")

pub fun sexpr-to-param-info(s: sexpr): <exn> param-info
  match s.expect-atom
    "borrow" -> Borrow
    "own" -> Own
    _ -> throw("Invalid param-info sexpr")

pub fun sexpr-to-fip-alloc(s: sexpr): <div,exn> fip-alloc
  match s
    List(Cons(Atom("at-most"), [n])) -> AllocAtMost(n.expect-atom.parse-int.default(0))
    Atom("finitely") -> AllocFinitely
    Atom("unlimited") -> AllocUnlimited
    _ -> throw("Invalid fip-alloc sexpr: " ++ s.sexpr/show)

pub fun sexpr-to-fip(s: sexpr): <div,exn> fip-tag
  match s.expect-list
    Cons(Atom("fip"), [alloc]) -> Fip(alloc.sexpr-to-fip-alloc)
    Cons(Atom("fbip"), [alloc, tail]) -> Fbip(alloc.sexpr-to-fip-alloc, tail.expect-atom == "True")
    Cons(Atom("no-fip"), [tail]) -> NoFip(tail.expect-atom == "True")
    _ -> throw("Invalid fip sexpr")

pub fun sexpr-to-def-sort(s: sexpr): <div,exn> def-sort
  match s
    List(Cons(Atom("def-fun"), [List(pinfos), fip])) ->
      DefFun(pinfos.map(sexpr-to-param-info), fip.sexpr-to-fip)
    Atom("def-val") -> DefVal
    Atom("def-var") -> DefVar
    _ -> throw("Invalid def-sort sexpr")

pub fun sexpr-to-def(s: sexpr): <div,exn> def
  match s.expect-list.expect-tag("def")
    [name, tp, expr, sort] -> Def(name.expect-atom, tp.sexpr-to-type-expr, expr.sexpr-to-expr, sort.sexpr-to-def-sort)
    _ -> throw("Invalid def sexpr")

// Type Definitions
pub fun sexpr-to-type-def-group(s: sexpr): <div,exn> type-def-group
  s.expect-list.expect-tag("type-def-group").map(sexpr-to-type-def)

pub fun sexpr-to-type-def(s: sexpr): <div,exn> type-def
  match s.expect-list
    Cons(Atom("synonym"), [name, tp]) -> Synonym(name.expect-atom, tp.sexpr-to-type-expr)
    Cons(Atom("data"), [info]) -> Data(info.sexpr-to-data-info)
    _ -> throw("Invalid type-def sexpr")

pub fun sexpr-to-data-info(s: sexpr): <div,exn> data-info
  match s.expect-list.expect-tag("data-info")
    [name, List(params), List(constrs), is-rec, ddef] ->
      Data-info(name.expect-atom, params.map(fn(p) p.expect-atom.parse-int.default(0)), constrs.map(sexpr-to-con-info), is-rec.expect-atom == "True", ddef.sexpr-to-data-def)
    _ -> throw("Invalid data-info sexpr")

pub fun sexpr-to-con-info(s: sexpr): <div,exn> con-info
  match s.expect-list.expect-tag("con-info")
    [name, List(params), f] ->
      Con-info(name.expect-atom, TVar(-1), params.map(fn(p) match p { List([n, t]) -> (n.expect-atom, t.sexpr-to-type-expr); _ -> throw("Invalid con-info param") }), f.sexpr-to-maybe(sexpr-to-fip))
    _ -> throw("Invalid con-info sexpr")

pub fun sexpr-to-data-def(s: sexpr): <div,exn> data-def
  match s
    List([Atom("value"), vr]) -> DataDefValue(vr.sexpr-to-value-repr)
    Atom("normal") -> DataDefNormal
    List([Atom("lazy"), f]) -> DataDefLazy(f.sexpr-to-fip)
    List([Atom("open"), isExt]) -> DataDefOpen(isExt.expect-atom == "True")
    List([Atom("auto"), isStruct]) -> DataDefAuto(isStruct.expect-atom == "True")
    _ -> throw("Invalid data-def sexpr")

// Core
pub fun sexpr-to-core(s: sexpr): <div,exn> core
  match s.expect-list.expect-tag("core")
    [List(tdefs), List(defs)] -> Core(tdefs.map(sexpr-to-type-def-group), defs.map(sexpr-to-def-group))
    _ -> throw("Invalid core sexpr")

pub fun sexpr-to-branch(s: sexpr): <div,exn> branch
  match s.expect-list.expect-tag("branch")
    [List(patterns), List(guards)] -> Branch(patterns.map(sexpr-to-pattern), guards.map(sexpr-to-guard))
    _ -> throw("Invalid branch sexpr")

pub fun sexpr-to-guard(s: sexpr): <div,exn> guard
  match s.expect-list.expect-tag("guard")
    [test, body] -> Guard(test.sexpr-to-expr, body.sexpr-to-expr)
    _ -> throw("Invalid guard sexpr")

pub fun sexpr-to-pattern(s: sexpr): <div,exn> pattern
  match s
    List(Cons(Atom("pat-con"), [name, List(pats), repr, List(targs)])) ->
      PatCon(TName(name.expect-atom, TVar(-1)), pats.map(sexpr-to-pattern), repr.sexpr-to-con-repr, targs.map(sexpr-to-type-expr))
    List(Cons(Atom("pat-var"), [name, p])) -> PatVar(TName(name.expect-atom, TVar(-1)), p.sexpr-to-pattern)
    List(Cons(Atom("pat-lit"), [l])) -> PatLit(l.sexpr-to-lit)
    Atom("pat-wild") -> PatWild
    _ -> throw("Invalid pattern sexpr: " ++ s.sexpr/show)

pub fun parse-core(input: string): pure core
  val sprogram = parse-sexpr(input)
  sexpr-to-core(sprogram)
