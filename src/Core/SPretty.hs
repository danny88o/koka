module Core.SPretty (prettySExpr) where

import Core.Core
import Common.Name
import Type.Type
import Lib.PPrint
import qualified Type.Pretty as TP
import Common.ColorScheme


data SExpr = SAtom String
           | SList [SExpr]
           deriving (Show)


prettySExpr :: Expr -> SExpr
prettySExpr expr = case expr of
  Lam tnames eff body -> SList [SAtom "lam", SList (map prettyTNameToSExpr tnames), prettyEffectToSExpr eff, prettySExpr body]
  Var tname _ -> SList [SAtom "var", prettyTNameToSExpr tname]
  App f args -> SList (SAtom "app" : prettySExpr f : map prettySExpr args)
  TypeLam tvs body -> SList [SAtom "type-lam", SList (map prettyTypeVarToSExpr tvs), prettySExpr body]
  TypeApp f tps -> SList (SAtom "type-app" : prettySExpr f : map prettyTypeToSExpr tps)
  Con tname _ -> SList [SAtom "con", prettyTNameToSExpr tname]
  Lit lit -> prettyLitToSExpr lit
  Let defGroups body -> SList [SAtom "let", SList (map prettyDefGroupToSExpr defGroups), prettySExpr body]
  Case scruts branches -> SList [SAtom "case", SList (map prettySExpr scruts), SList (map prettyBranchToSExpr branches)]


prettyTNameToSExpr :: TName -> SExpr
prettyTNameToSExpr (TName name tp) = SList [SAtom (show (pretty name)), prettyTypeToSExpr tp]


prettyEffectToSExpr :: Effect -> SExpr
prettyEffectToSExpr eff = prettyTypeToSExpr eff


prettyTypeVarToSExpr :: TypeVar -> SExpr
prettyTypeVarToSExpr tv = SAtom (show tv)



prettyTypeToSExpr :: Type -> SExpr
prettyTypeToSExpr tp = SAtom (show (TP.ppType TP.defaultEnv tp)) --TODO


prettyLitToSExpr :: Lit -> SExpr
prettyLitToSExpr lit = case lit of
  LitInt i -> SAtom (show i)
  LitFloat d -> SAtom (show d)
  LitChar c -> SAtom (show c)
  LitString s -> SAtom (show s)


prettyDefGroupToSExpr :: DefGroup -> SExpr
prettyDefGroupToSExpr dg = case dg of
  DefRec defs -> SList (SAtom "rec" : map prettyDefToSExpr defs)
  DefNonRec def -> SList [SAtom "non-rec", prettyDefToSExpr def]


prettyDefToSExpr :: Def -> SExpr
prettyDefToSExpr (Def name tp expr _ _ _ _ _) =
  SList [SAtom "def", SAtom (show (pretty name)), prettyTypeToSExpr tp, prettySExpr expr]


prettyBranchToSExpr :: Branch -> SExpr
prettyBranchToSExpr (Branch patterns guards) =
  SList [SAtom "branch", SList (map prettyPatternToSExpr patterns), SList (map prettyGuardToSExpr guards)]


prettyGuardToSExpr :: Guard -> SExpr
prettyGuardToSExpr (Guard test expr) =
  SList [SAtom "guard", prettySExpr test, prettySExpr expr]


prettyPatternToSExpr :: Pattern -> SExpr
prettyPatternToSExpr pat = case pat of
  PatCon tname args _ targs _ _ _ _ ->
    SList (SAtom "pat-con" : prettyTNameToSExpr tname : map prettyPatternToSExpr args ++ map prettyTypeToSExpr targs)
  PatVar tname p ->
    SList [SAtom "pat-var", prettyTNameToSExpr tname, prettyPatternToSExpr p]
  PatLit lit ->
    SList [SAtom "pat-lit", prettyLitToSExpr lit]
  PatWild ->
    SAtom "pat-wild"
