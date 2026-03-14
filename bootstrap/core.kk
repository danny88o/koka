module bootstrap/core

// Types
pub type type-expr
  TForall(vars: list<int>, t: type-expr)
  TFun(args: list<(string, type-expr)>, eff: type-expr, res: type-expr)
  TVar(id: int)
  TCon(name: string)
  TApp(f: type-expr, args: list<type-expr>)
  TSyn(name: string, args: list<type-expr>, t: type-expr)

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

pub type fip-alloc
  AllocAtMost(n: int)
  AllocFinitely
  AllocUnlimited

pub type fip
  Fip(alloc: fip-alloc)
  Fbip(alloc: fip-alloc, tail: bool)
  NoFip(tail: bool)

pub type def-sort
  DefFun(pinfos: list<param-info>, fip: fip)
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
  DataDefLazy(fip: fip)
  DataDefOpen(is-ext: bool)
  DataDefAuto(is-struct: bool)

pub type con-info
  ConInfo(name: string, params: list<(string, type-expr)>, lazy: fip)

pub type data-info
  DataInfo(name: string, params: list<int>, constrs: list<con-info>, is-rec: bool, ddef: data-def)

pub type type-def
  Synonym(name: string, tp: type-expr)
  Data(info: data-info)

pub type type-def-group
  TypeDefGroup(tdefs: list<type-def>)

pub type core
  Core(type-defs: list<type-def-group>, defs: list<def-group>)