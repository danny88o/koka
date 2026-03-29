module bootstrap/core/core

import std/num/float64

// Types
// data Type   = TForall  ![TypeVar] !Rho  -- ^ forall a b c. phi, psi => rho
//                                              -- there is at least one variable
//                                              -- every variable occurs at least once in rho
//                                              -- variables are canonically ordered
//                                              -- rho has kind *
//             | TFun     ![(Name,Type)] !Effect !Type    -- ^ (x:a, y:b, z:c) -> m d
//             | TCon     !TypeCon               -- ^ type constant (primitive, label, or newtype; not -> or =>)
//             | TVar     !TypeVar               -- ^ type variable (cannot instantiate to -> or =>)
//             | TApp     !Type ![Type]           -- ^ application of datatypes
//             | TSyn     !TypeSyn ![Type] !Type   -- ^ type synonym indirection
//                                              -- first [Type] list is the actual arguments
//                                              -- final Type is the "real" type (expanded) (always has kind *)
//             deriving (Show)

pub type type-expr
  TForall(vars: list<int>, t: type-expr)
  TFun(args: list<(string, type-expr)>, eff: type-expr, res: type-expr)
  TVar(id: int)
  TCon(name: string)
  TApp(f: type-expr, args: list<type-expr>)
  TSyn(name: string, args: list<type-expr>, t: type-expr)

pub fun (==)(t1: type-expr, t2: type-expr): div bool
  match (t1, t2)
    (TForall(vars1, t1), TForall(vars2, t2))           -> vars1 == vars2 && t1 == t2
    (TFun(args1, eff1, res1), TFun(args2, eff2, res2)) -> args1 == args2 && eff1 == eff2 && res1 == res2
    (TVar(id1), TVar(id2))                             -> id1 == id2
    (TCon(name1), TCon(name2))                         -> name1 == name2
    (TApp(f1, args1), TApp(f2, args2))                 -> f1 == f2 && args1 == args2
    (TSyn(name1, args1, t1), TSyn(name2, args2, t2))   -> name1 == name2 && args1 == args2 && t1 == t2
    _ -> False

pub fun type-expr/show(type-expr: type-expr): div string
  match type-expr
    TForall(vars, t) -> "forall " ++ vars.map(fn(v) v.show).join(" ") ++ ". " ++ t.show
    TFun(args, eff, res) -> "(" ++ args.map(fn((n, t)) n ++ ": " ++ t.show).join(", ") ++ ") -> " ++ eff.show ++ " " ++ res.show
    TVar(id) -> "TVar(" ++ id.show ++ ")"
    TCon(name) -> name
    TApp(f, args) -> f.show ++ " " ++ args.map(type-expr/show).join(" ")
    TSyn(name, args, _) -> name ++ " " ++ args.map(type-expr/show).join(" ")


pub alias name = string

pub type tname
  TName(name: name, tp: type-expr)

pub fun name/is-qualified(name : name) : bool
  name.contains("/")

pub fun tname/is-qualified(tn : tname) : bool
  tn.name.is-qualified

pub fun tname/(==)(tn1: tname, tn2: tname): bool
  tn1.name == tn2.name

pub fun tname/show(tn: tname): div string
  tn.name ++ ": " ++ tn.tp.show

pub type lit
  LitInt(i: int)
  LitFloat(d: float64)
  LitChar(c: char)
  LitString(s: string)

pub fun lit/show(l: lit): div string
  match l
    LitInt(i) -> i.show
    LitFloat(d) -> d.show
    LitChar(c) -> c.show
    LitString(s) -> "\"" ++ s ++ "\""

// Representations
pub type value-repr
  ValueRepr(raw-val: int, scan: int, align: int)

pub fun value-repr/show(vr: value-repr): div string
  "ValueRepr(raw-val: " ++ vr.raw-val.show ++ ", scan: " ++ vr.scan.show ++ ", align: " ++ vr.align.show ++ ")"

pub type ctx-path
  CtxNone
  CtxField(name: name)

pub fun ctx-path/show(cp: ctx-path): div string
  match cp
    CtxNone -> "CtxNone"
    CtxField(name) -> "CtxField(" ++ name ++ ")"

pub type data-repr
  DataEnum
  DataIso
  DataSingleStruct
  DataStructAsMaybe
  DataStruct
  DataSingle(has-singletons: bool)
  DataAsMaybe
  DataAsList
  DataSingleNormal
  DataNormal(has-singletons: bool)
  DataOpen

pub fun data-repr/show(dr: data-repr): string
  match dr
    DataEnum -> "DataEnum"
    DataIso -> "DataIso"
    DataSingleStruct -> "DataSingleStruct"
    DataStructAsMaybe -> "DataStructAsMaybe"
    DataStruct -> "DataStruct"
    DataSingle(has-singletons) -> "DataSingle(" ++ has-singletons.bool/show ++ ")"
    DataAsMaybe -> "DataAsMaybe"
    DataAsList -> "DataAsList"
    DataSingleNormal -> "DataSingleNormal"
    DataNormal(has-singletons) -> "DataNormal(" ++ has-singletons.bool/show ++ ")"
    DataOpen -> "DataOpen"

pub type con-repr
  ConEnum(typename: name, dr: data-repr, vr: value-repr, tag: int)
  ConIso(typename: name, dr: data-repr, vr: value-repr, tag: int)
  ConSingleton(typename: name, dr: data-repr, vr: value-repr, tag: int)
  ConSingle(typename: name, dr: data-repr, vr: value-repr, path: ctx-path, tag: int)
  ConAsJust(typename: name, dr: data-repr, vr: value-repr, name: name, tag: int)
  ConStruct(typename: name, dr: data-repr, vr: value-repr, tag: int)
  ConAsCons(typename: name, dr: data-repr, vr: value-repr, name: name, path: ctx-path, tag: int)
  ConOpen(typename: name, dr: data-repr, vr: value-repr, path: ctx-path, tag: int)
  ConNormal(typename: name, dr: data-repr, vr: value-repr, path: ctx-path, tag: int)

pub fun con-repr/show(cr: con-repr): div string
  match cr
    ConEnum(typename, dr, vr, tag) -> "ConEnum(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ tag.show ++ ")"
    ConIso(typename, dr, vr, tag) -> "ConIso(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ tag.show ++ ")"
    ConSingleton(typename, dr, vr, tag) -> "ConSingleton(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ tag.show ++ ")"
    ConSingle(typename, dr, vr, path, tag) -> "ConSingle(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ path.show ++ ", " ++ tag.show ++ ")"
    ConAsJust(typename, dr, vr, name, tag) -> "ConAsJust(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ name.show ++ ", " ++ tag.show ++ ")"
    ConStruct(typename, dr, vr, tag) -> "ConStruct(" ++ typename ++ ", " ++ dr.show ++ ", " ++ vr.show ++ ", " ++ tag.show ++ ")"
    ConAsCons(typename, dr, vr, name, path, tag) -> "ConAsCons("++ typename++", "++dr.show++", "++vr.show++", "++name.show++", "++path.show++", "++tag.show++")"
    ConOpen(typename, dr, vr, path, tag) -> "ConOpen("++ typename++", "++dr.show++", "++vr.show++", "++path.show++", "++tag.show++")"
    ConNormal(typename, dr, vr, path, tag) -> "ConNormal("++ typename++", "++dr.show++", "++vr.show++", "++path.show++", "++tag.show++")"

// Expressions
pub type pattern
  PatCon(tname: tname, args: list<pattern>, repr: con-repr, targs: list<type-expr>)
  PatVar(tname: tname, pat: pattern)
  PatLit(lit: lit)
  PatWild

pub type guard
  Guard(test: expr, expr: expr)

pub fun guard/show(g: guard): div string
  "Guard(test: " ++ g.test.show ++ ", expr: " ++ g.expr.show ++ ")"

pub type branch
  Branch(patterns: list<pattern>, guards: list<guard>)

pub fun pattern/show(p: pattern): div string
  match p
    PatCon(tname, args, repr, targs) -> "PatCon(" ++ tname.show ++ ", [" ++ args.map(pattern/show).join(", ") ++ "], " ++ repr.show ++ ", [" ++ targs.map(type-expr/show).join(", ") ++ "])"
    PatVar(tname, pat) -> "PatVar(" ++ tname.show ++ ", " ++ pat.show ++ ")"
    PatLit(lit) -> "PatLit(" ++ lit.show ++ ")"
    PatWild -> "PatWild"

pub fun branch/show(b: branch): div string
  "Branch([" ++ b.patterns.map(fn(p) p.show).join(", ") ++ "], [" ++ b.guards.map(fn(g) g.show).join(", ") ++ "])"

pub type expr
  Lam(tnames: list<tname>, eff: type-expr, body: expr)
  Var(tname: tname)
  App(f: expr, args: list<expr>)
  TypeLam(tvs: list<int>, body: expr)
  TypeApp(f: expr, tps: list<type-expr>)
  Con(tname: tname, repr: con-repr)
  Lit(lit: lit)
  Let(def-groups: list<def-group>, body: expr)
  Case(scruts: list<expr>, branches: list<branch>)

pub fun expr/show(e: expr): div string
  match e
    Lam(tnames, eff, body) -> "Lam(" ++ tnames.map(tname/show).join(", ") ++ ", " ++ eff.show ++ ", " ++ body.show ++ ")"
    Var(tn) -> "Var(" ++ tn.show ++ ")"
    App(f, args) -> "App(" ++ f.show ++ ", [" ++ args.map(expr/show).join(", ") ++ "])"
    TypeLam(tvs, body) -> "TypeLam([" ++ tvs.map(fn(v) v.show).join(", ") ++ "], " ++ body.show ++ ")"
    TypeApp(f, tps) -> "TypeApp(" ++ f.show ++ ", [" ++ tps.map(type-expr/show).join(", ") ++ "])"
    Con(tn, repr) -> "Con(" ++ tn.show ++ ", " ++ repr.show ++ ")"
    Lit(lit) -> "Lit(" ++ lit.show ++ ")"
    Let(def-groups, body) -> "Let([" ++ def-groups.map(show).join(", ") ++ "], " ++ body.show ++ ")"
    Case(scruts, branches) -> "Case([" ++ scruts.map(expr/show).join(", ") ++ "], [" ++ branches.map(show).join(", ") ++ "])"

// Definitions
pub type param-info
  Borrow
  Own

pub fun param-infow/show(p: param-info): div string
  match p
    Borrow -> "Borrow"
    Own -> "Own"

pub fun param-info/(==)(p1: param-info, p2: param-info): bool
  match (p1, p2)
    (Borrow, Borrow) -> True
    (Own, Own) -> True
    _ -> False

pub type fip-alloc
  AllocAtMost(n: int)
  AllocFinitely
  AllocUnlimited

pub fun fip-alloc/show(fa: fip-alloc): string
  match fa
    AllocAtMost(n) -> "AllocAtMost(" ++ n.show ++ ")"
    AllocFinitely -> "AllocFinitely"
    AllocUnlimited -> "AllocUnlimited"

pub type fip-tag
  Fip(alloc: fip-alloc)
  Fbip(alloc: fip-alloc, tail: bool)
  NoFip(tail: bool)

pub fun fip-tag/show(f: fip-tag): string
  match f
    Fip(alloc) -> "Fip(" ++ alloc.show ++ ")"
    Fbip(alloc, tail) -> "Fbip(" ++ alloc.show ++ ", " ++ tail.bool/show ++ ")"
    NoFip(tail) -> "NoFip(" ++ tail.bool/show ++ ")"

pub type def-sort
  DefFun(pinfos: list<param-info>, fip-tag: fip-tag)
  DefVal
  DefVar

pub fun def-sort/show(s: def-sort): div string
  match s
    DefFun(pinfos, fip-tag) -> "DefFun([" ++ pinfos.map(show).join(", ") ++ "], " ++ fip-tag.show ++ ")"
    DefVal -> "DefVal"
    DefVar -> "DefVar"

pub type def
  Def(name: string, tp: type-expr, expr: expr, sort: def-sort)

pub fun def/show(d: def): div string
  "Def(" ++ d.name ++ ": " ++ d.tp.show ++ " = " ++ d.expr.show ++ ", sort: " ++  d.sort.show ++ ")"

pub type def-group
  DefRec(defs: list<def>)
  DefNonRec(def: def)

pub fun def-group/show(dg: def-group): div string
  match dg
    DefRec(defs) -> "DefRec([" ++ defs.map(show).join(", ") ++ "])"
    DefNonRec(def) -> "DefNonRec(" ++ def.show ++ ")"

// Type Definitions
pub type data-def
  DataDefValue(vr: value-repr)
  DataDefNormal
  DataDefLazy(fip-tag: fip-tag)
  DataDefOpen(is-ext: bool)
  DataDefAuto(is-struct: bool)

pub struct con-info
  name: name
  tp: type-expr
  params: list<(string, type-expr)>
  lazy: maybe<fip-tag>

pub struct data-info
  name: name
  params: list<int>
  constrs: list<con-info>
  is-rec: bool
  ddef: data-def

pub type type-def
  Synonym(name: name, tp: type-expr)
  Data(info: data-info)

pub alias type-def-group = list<type-def>

pub type core
  Core(gamma: list<(name, fip-tag)>, type-defs: list<type-def-group>, defs: list<def-group>)

pub fun expand-syn(l: type-expr): type-expr
  match l
    TSyn(_, _, tp) -> expand-syn(tp)
    _ -> l

pub fun type-of(e : expr) : _ type-expr
  match e
    Lam(tnames, eff, res) -> TFun(tnames.map(fn(tn) (tn.name, tn.tp)), eff, type-of(res))
    Var(tn) -> tn.tp
    App(f, _) -> // Note very different core line 1223 in core
      match type-of(f).expand-syn
        TFun(_, _, res) -> res
        _ -> TVar(0)
    TypeLam(tvs, body) -> TForall(tvs, type-of(body))
    TypeApp(f, _) ->
      match type-of(f).expand-syn // Also quite different
        TForall(_, t) -> t
        _ -> TVar(0)
    Con(tn, _) -> tn.tp
    Lit(l) -> match l
      LitInt -> TCon("std/core/int")
      LitFloat -> TCon("std/core/float64")
      LitChar -> TCon("std/core/char")
      LitString -> TCon("std/core/string")
    Let(_, body) -> type-of(body)
    Case(_, branches) ->
      match branches
        Cons(Branch(_, guards), _) ->
          match guards
            Cons(Guard(_, e'), _) -> type-of(e')
            _ -> TVar(0)
        _ -> TVar(0)
