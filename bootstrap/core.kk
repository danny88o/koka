module bootstrap/core

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

pub type tname
  TName(name: string, tp: type-expr)

pub type lit
  LitInt(i: int)
  LitFloat(d: float64)
  LitChar(c: char)
  LitString(s: string)

// Representations
pub type value-repr
  ValueRepr(raw-val: int, scan: int, align: int)

pub type ctx-path
  CtxNone
  CtxField(name: string)

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

pub type con-repr
  ConEnum(dr: data-repr, vr: value-repr, tag: int)
  ConIso(dr: data-repr, vr: value-repr, tag: int)
  ConSingleton(dr: data-repr, vr: value-repr, tag: int)
  ConSingle(dr: data-repr, vr: value-repr, path: ctx-path, tag: int)
  ConAsJust(dr: data-repr, vr: value-repr, name: string, tag: int)
  ConStruct(dr: data-repr, vr: value-repr, tag: int)
  ConAsCons(dr: data-repr, vr: value-repr, name: string, path: ctx-path, tag: int)
  ConOpen(dr: data-repr, vr: value-repr, path: ctx-path, tag: int)
  ConNormal(dr: data-repr, vr: value-repr, path: ctx-path, tag: int)

// Expressions
pub type pattern
  PatCon(name: string, args: list<pattern>, repr: con-repr, targs: list<type-expr>)
  PatVar(name: string, pat: pattern)
  PatLit(lit: lit)
  PatWild

pub type guard
  Guard(test: expr, expr: expr)

pub type branch
  Branch(patterns: list<pattern>, guards: list<guard>)

pub type expr
  Lam(tnames: list<tname>, eff: type-expr, body: expr)
  Var(name: string)
  App(f: expr, args: list<expr>)
  TypeLam(tvs: list<int>, body: expr)
  TypeApp(f: expr, tps: list<type-expr>)
  Con(name: string, repr: con-repr)
  Lit(lit: lit)
  Let(def-groups: list<def-group>, body: expr)
  Case(scruts: list<expr>, branches: list<branch>)

// Definitions
pub type param-info
  Borrow
  Own

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

pub type def
  Def(name: string, tp: type-expr, expr: expr, sort: def-sort)

pub type def-group
  DefRec(defs: list<def>)
  DefNonRec(def: def)

// Type Definitions
pub type data-def
  DataDefValue(vr: value-repr)
  DataDefNormal
  DataDefLazy(fip-tag: fip-tag)
  DataDefOpen(is-ext: bool)
  DataDefAuto(is-struct: bool)

pub type con-info
  ConInfo(name: string, params: list<(string, type-expr)>, lazy: fip-tag)

pub type data-info
  DataInfo(name: string, params: list<int>, constrs: list<con-info>, is-rec: bool, ddef: data-def)

pub type type-def
  Synonym(name: string, tp: type-expr)
  Data(info: data-info)

pub type type-def-group
  TypeDefGroup(tdefs: list<type-def>)

pub type core
  Core(type-defs: list<type-def-group>, defs: list<def-group>)