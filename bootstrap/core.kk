module bootstrap/core

// Types
pub type type-expr
  TForall(vars: list<int>, t: type-expr)
  TFun(args: list<(string, type-expr)>, eff: type-expr, res: type-expr)
  TVar(id: int)
  TCon(name: string)
  TApp(f: type-expr, args: list<type-expr>)
  TSyn(name: string, args: list<type-expr>, t: type-expr)

// Representations
pub type value-repr
  ValueRepr(raw-val: int, scan: int, align: int)

pub type ctx-path
  CtxNone

pub type data-repr
  DataEnum
  DataAsList

pub type con-repr
  ConEnum(dr: data-repr, vr: value-repr, tag: int)
  ConSingleton(dr: data-repr, vr: value-repr, tag: int)
  ConAsCons(dr: data-repr, vr: value-repr, name: string, path: ctx-path, tag: int)

// Expressions
pub type pattern
  PatCon(name: string, args: list<pattern>, repr: con-repr, targs: list<type-expr>)
  PatVar(name: string, pat: pattern)
  PatWild

pub type guard
  Guard(test: expr, expr: expr)

pub type branch
  Branch(patterns: list<pattern>, guards: list<guard>)

pub type expr
  Lam(args: list<(string, type-expr)>, eff: type-expr, body: expr)
  Var(name: string)
  App(f: expr, args: list<expr>)
  TypeLam(tvs: list<int>, body: expr)
  TypeApp(f: expr, tps: list<type-expr>)
  Con(name: string, repr: con-repr)
  Case(scruts: list<expr>, branches: list<branch>)

// Definitions
pub type fip-alloc
  AllocAtMost(n: int)

pub type fip
  Fip(alloc: fip-alloc)
  NoFip(tail: bool)

pub type def-sort
  DefFun(fip: fip) // simplified to ignore param-infos for now as they are empty in Ex 1/2

pub type def
  Def(name: string, tp: type-expr, expr: expr, sort: def-sort)

pub type def-group
  DefRec(defs: list<def>)
  DefNonRec(def: def)

pub type core
  Core(defs: list<def-group>) // Ex 1/2 have empty type-defs, so we omit them from the AST entirely
