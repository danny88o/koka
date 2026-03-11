module Core.SPretty (prettySExpr, prettyDefToSExpr) where

import Core.Core
import Common.Name
import Type.Type
import Lib.PPrint
import qualified Type.Pretty as TP
import Common.ColorScheme


data SExpr = SAtom String
           | SList [SExpr]

isList :: SExpr -> Bool
isList (SList _) = True
isList _         = False

prettySExprToDoc :: SExpr -> Doc
prettySExprToDoc (SAtom s) = text s
prettySExprToDoc (SList []) = text "()"
prettySExprToDoc (SList (x:xs)) = group $ parens $ nest 2 $ vsep (map prettySExprToDoc (x:xs))

instance Show SExpr where
  show sexpr = displayS (renderPretty 0.4 80 (prettySExprToDoc sexpr)) ""


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
prettyTypeToSExpr tp = case tp of
  TForall vars t    -> SList [SAtom "forall", SList (map prettyTypeVarToSExpr vars), prettyTypeToSExpr t]
  TFun args eff res -> SList [SAtom "fun", SList (map prettyParamToSExpr args), prettyTypeToSExpr eff, prettyTypeToSExpr res]
  TVar tv           -> SList [SAtom "tvar", prettyTypeVarToSExpr tv]
  TCon tc           -> SList [SAtom "tcon", prettyTypeConToSExpr tc]
  TApp f args       -> SList (SAtom "tapp" : prettyTypeToSExpr f : map prettyTypeToSExpr args)
  TSyn syn args t   -> SList (SAtom "tsyn" : prettyTypeSynToSExpr syn : map prettyTypeToSExpr args ++ [prettyTypeToSExpr t])


prettyParamToSExpr :: (Name, Type) -> SExpr
prettyParamToSExpr (name, tp) = SList [SAtom (show (pretty name)), prettyTypeToSExpr tp]


prettyTypeConToSExpr :: TypeCon -> SExpr
prettyTypeConToSExpr (TypeCon name kind) = SList [SAtom (show (pretty name)), SAtom (show (pretty kind))]


prettyTypeSynToSExpr :: TypeSyn -> SExpr
prettyTypeSynToSExpr (TypeSyn name kind rank _) = SList [SAtom (show (pretty name)), SAtom (show (pretty kind)), SAtom (show rank)]


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
