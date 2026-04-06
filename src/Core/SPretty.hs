module Core.SPretty (prettyCoreToSExpr, prettyDefToSExpr, prettyTypeDefGroupToSExpr) where

import Core.Core hiding (InfoExternal)
import Common.Name
import Common.Syntax
import Type.Type
import Kind.Kind
import Lib.PPrint
import Data.Maybe (fromMaybe)
import qualified Type.Pretty as TP
import Common.ColorScheme
import Type.Assumption
import Kind.Newtypes
import Core.Borrowed
import qualified Common.NameMap as NM
import qualified Data.Set as S
import qualified Data.List as L

data SExpr = SAtom String
           | SList [SExpr]

prettySExprToDoc :: SExpr -> Doc
prettySExprToDoc (SAtom s) = text (show s)
prettySExprToDoc (SList []) = text "()"
prettySExprToDoc (SList (x:xs)) = group $ parens $ nest 2 $ vsep (map prettySExprToDoc (x:xs))

instance Show SExpr where
  show sexpr = displayS (renderPretty 1.0 80 (prettySExprToDoc sexpr)) ""

prettyCoreToSExpr :: Borrowed -> Gamma -> Newtypes -> TypeDefGroups -> DefGroups -> SExpr
prettyCoreToSExpr borrowed gamma newtypes tdgs dgs = SList [SAtom "core", prettyBorrowed borrowed, prettyGamma gamma, prettyNewtypes newtypes, SList (map prettyTypeDefGroupToSExpr tdgs), SList (map prettyDefGroupToSExpr dgs)]

prettyBorrowed :: Borrowed -> SExpr
prettyBorrowed (Borrowed borrowed) = SList (map prettyBorrowDefToSExpr (NM.toList borrowed))

prettyBorrowDefToSExpr :: (Name, [ParamInfo]) -> SExpr
prettyBorrowDefToSExpr (name, pinfos) = SList [SAtom (show (pretty name)), SList (map prettyParamInfoToSExpr pinfos)]

prettyGamma :: Gamma -> SExpr
prettyGamma gamma =
  let infos = map snd (gammaList gamma)
      extInfos = filter isExternalInfo infos
  in SList (map prettyNameInfoToSExpr extInfos)

prettyNewtypes :: Newtypes -> SExpr
prettyNewtypes newtypes =
  let infos = NM.elems (newtypesTypeDefs newtypes)
  in SList (map prettyDataInfoToSExpr infos)

isExternalInfo :: NameInfo -> Bool
isExternalInfo info = case info of
  InfoFun{} -> True
  InfoExternal{} -> True
  _ -> False

prettyNameInfoToSExpr :: NameInfo -> SExpr
prettyNameInfoToSExpr info = case info of
  InfoFun _ name _ _ _ fip _ _ -> SList [SAtom (show (pretty name)), prettyFipToSExpr fip]
  InfoExternal _ name _ _ fip _ _ -> SList [SAtom (show (pretty name)), prettyFipToSExpr fip]
  _ -> SList []


-- Types
prettyTypeToSExpr :: Type -> SExpr
prettyTypeToSExpr tp = case tp of
  TForall vars t    -> SList [SAtom "forall", SList (map (SAtom . show . typevarId) vars), prettyTypeToSExpr t]
  TFun args eff res -> SList [SAtom "fun", SList (map prettyParamToSExpr args), prettyTypeToSExpr eff, prettyTypeToSExpr res]
  TVar tv           -> SList [SAtom "tvar", SAtom (show (typevarId tv))]
  TCon tc           -> SList [SAtom "tcon", SAtom (show (pretty (typeConName tc)))]
  TApp f args       -> SList (SAtom "tapp" : prettyTypeToSExpr f : map prettyTypeToSExpr args)
  TSyn syn args t   -> SList (SAtom "tsyn" : SAtom (show (pretty (typeSynName syn))) : map prettyTypeToSExpr args ++ [prettyTypeToSExpr t])

prettyParamToSExpr :: (Name, Type) -> SExpr
prettyParamToSExpr (name, tp) = SList [SAtom (show (pretty name)), prettyTypeToSExpr tp]

-- Expressions
prettySExpr :: Expr -> SExpr
prettySExpr expr = case expr of
  Lam tnames eff body -> SList [SAtom "lam", SList (map prettyTNameToSExpr tnames), prettyTypeToSExpr eff, prettySExpr body]
  Var tname _ -> SList [SAtom "var", prettyTNameToSExpr tname]
  App f args -> SList (SAtom "app" : prettySExpr f : map prettySExpr args)
  TypeLam tvs body -> SList [SAtom "type-lam", SList (map (SAtom . show . typevarId) tvs), prettySExpr body]
  TypeApp f tps -> SList (SAtom "type-app" : prettySExpr f : map prettyTypeToSExpr tps)
  Con tname repr -> SList [SAtom "con", SAtom (show (pretty (getName tname))), prettyConReprToSExpr repr]
  Lit lit -> prettyLitToSExpr lit
  Let defGroups body -> SList [SAtom "let", SList (map prettyDefGroupToSExpr defGroups), prettySExpr body]
  Case scruts branches -> SList [SAtom "case", SList (map prettySExpr scruts), SList (map prettyBranchToSExpr branches)]

prettyTNameToSExpr :: TName -> SExpr
prettyTNameToSExpr (TName name tp) = SList [SAtom (show (pretty name)), prettyTypeToSExpr tp]

prettyLitToSExpr :: Lit -> SExpr
prettyLitToSExpr lit = case lit of
  LitInt i -> SAtom (show i)
  LitFloat d -> SAtom (show d)
  LitChar c -> SAtom (show c)
  LitString s -> SAtom (show s)

-- Definitions
prettyDefGroupToSExpr :: DefGroup -> SExpr
prettyDefGroupToSExpr dg = case dg of
  DefRec defs -> SList (SAtom "rec" : map prettyDefToSExpr defs)
  DefNonRec def -> SList [SAtom "non-rec", prettyDefToSExpr def]

prettyDefToSExpr :: Def -> SExpr
prettyDefToSExpr (Def name tp expr _ sort _ _ _) =
  SList [SAtom "def", SAtom (show (pretty name)), prettyTypeToSExpr tp, prettySExpr expr, prettyDefSortToSExpr sort]

prettyDefSortToSExpr :: DefSort -> SExpr
prettyDefSortToSExpr ds = case ds of
  DefFun pinfos fip -> SList [SAtom "def-fun", SList (map prettyParamInfoToSExpr pinfos), prettyFipToSExpr fip]
  DefVal -> SAtom "def-val"
  DefVar -> SAtom "def-var"

prettyParamInfoToSExpr :: ParamInfo -> SExpr
prettyParamInfoToSExpr Borrow = SAtom "borrow"
prettyParamInfoToSExpr Own = SAtom "own"

prettyFipToSExpr :: Fip -> SExpr
prettyFipToSExpr fip = case fip of
  Fip alloc -> SList [SAtom "fip", prettyFipAllocToSExpr alloc]
  Fbip alloc tail -> SList [SAtom "fbip", prettyFipAllocToSExpr alloc, SAtom (show tail)]
  NoFip tail -> SList [SAtom "no-fip", SAtom (show tail)]

prettyFipAllocToSExpr :: FipAlloc -> SExpr
prettyFipAllocToSExpr (AllocAtMost n) = SList [SAtom "at-most", SAtom (show n)]
prettyFipAllocToSExpr AllocFinitely = SAtom "finitely"
prettyFipAllocToSExpr AllocUnlimited = SAtom "unlimited"

prettyMaybeToSExpr :: (a -> SExpr) -> Maybe a -> SExpr
prettyMaybeToSExpr f Nothing  = SAtom "nothing"
prettyMaybeToSExpr f (Just x) = SList [SAtom "just", f x]

-- Type Definitions
prettyTypeDefGroupToSExpr :: TypeDefGroup -> SExpr
prettyTypeDefGroupToSExpr (TypeDefGroup tdefs) = SList (SAtom "type-def-group" : map prettyTypeDefToSExpr tdefs)

prettyTypeDefToSExpr :: TypeDef -> SExpr
prettyTypeDefToSExpr (Synonym info) = SList [SAtom "synonym", SAtom (show (pretty (synInfoName info))), prettyTypeToSExpr (synInfoType info)]
prettyTypeDefToSExpr (Data info) = SList [SAtom "data", prettyDataInfoToSExpr info]

prettyDataInfoToSExpr :: DataInfo -> SExpr
prettyDataInfoToSExpr info = SList [SAtom "data-info", SAtom (show (pretty (dataInfoName info))), SList (map (SAtom . show . typevarId) (dataInfoParams info)), SList (map prettyConInfoToSExpr (dataInfoConstrs info)), SAtom (show (dataInfoIsRec info)), prettyDataDefToSExpr (dataInfoDef info)]

prettyConInfoToSExpr :: ConInfo -> SExpr
prettyConInfoToSExpr info = SList [SAtom "con-info", SAtom (show (pretty (conInfoName info))), SList (map prettyParamToSExpr (conInfoParams info)), prettyMaybeToSExpr prettyFipToSExpr (conInfoLazy info), prettyValueReprToSExpr (conInfoValueRepr info)]

prettyDataDefToSExpr :: DataDef -> SExpr
prettyDataDefToSExpr def = case def of
  DataDefValue repr -> SList [SAtom "value", prettyValueReprToSExpr repr]
  DataDefNormal -> SAtom "normal"
  DataDefLazy fip -> SList [SAtom "lazy", prettyFipToSExpr fip]
  DataDefOpen isExt -> SList [SAtom "open", SAtom (show isExt)]
  DataDefAuto isStruct -> SList [SAtom "auto", SAtom (show isStruct)]

prettyValueReprToSExpr :: ValueRepr -> SExpr
prettyValueReprToSExpr (ValueRepr raw scan align) = SList [SAtom "value-repr", SAtom (show raw), SAtom (show scan), SAtom (show align)]

-- Representations
prettyConReprToSExpr :: ConRepr -> SExpr
prettyConReprToSExpr repr = case repr of
  ConEnum tn dr vr tag -> SList [SAtom "enum", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show tag)]
  ConIso tn dr vr tag -> SList [SAtom "iso", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show tag)]
  ConSingleton tn dr vr tag -> SList [SAtom "singleton", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show tag)]
  ConSingle tn dr vr path tag -> SList [SAtom "single", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, prettyCtxPathToSExpr path, SAtom (show tag)]
  ConAsJust tn dr vr name tag -> SList [SAtom "as-just", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show (pretty name)), SAtom (show tag)]
  ConStruct tn dr vr tag -> SList [SAtom "struct", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show tag)]
  ConAsCons tn dr vr name path tag -> SList [SAtom "as-cons", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, SAtom (show (pretty name)), prettyCtxPathToSExpr path, SAtom (show tag)]
  ConOpen tn dr vr path tag -> SList [SAtom "open", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, prettyCtxPathToSExpr path, SAtom (show tag)]
  ConNormal tn dr vr path tag -> SList [SAtom "normal", SAtom (show (pretty tn)), prettyDataReprToSExpr dr, prettyValueReprToSExpr vr, prettyCtxPathToSExpr path, SAtom (show tag)]

prettyDataReprToSExpr :: DataRepr -> SExpr
prettyDataReprToSExpr dr = case dr of
  DataEnum -> SAtom "enum"
  DataIso -> SAtom "iso"
  DataSingleStruct -> SAtom "single-struct"
  DataStructAsMaybe -> SAtom "struct-as-maybe"
  DataStruct -> SAtom "struct"
  DataSingle has -> SList [SAtom "single", SAtom (show has)]
  DataAsMaybe -> SAtom "as-maybe"
  DataAsList -> SAtom "as-list"
  DataSingleNormal -> SAtom "single-normal"
  DataNormal has -> SList [SAtom "normal", SAtom (show has)]
  DataOpen -> SAtom "open"

prettyCtxPathToSExpr :: CtxPath -> SExpr
prettyCtxPathToSExpr CtxNone = SAtom "none"
prettyCtxPathToSExpr (CtxField tname) = SList [SAtom "field", SAtom (show (pretty (getName tname)))]

-- Case Branches
prettyBranchToSExpr :: Branch -> SExpr
prettyBranchToSExpr (Branch patterns guards) =
  SList [SAtom "branch", SList (map prettyPatternToSExpr patterns), SList (map prettyGuardToSExpr guards)]

prettyGuardToSExpr :: Guard -> SExpr
prettyGuardToSExpr (Guard test expr) =
  SList [SAtom "guard", prettySExpr test, prettySExpr expr]

prettyPatternToSExpr :: Pattern -> SExpr
prettyPatternToSExpr pat = case pat of
  PatCon tname args repr targs exists _ _ _ ->
    SList [SAtom "pat-con", prettyTNameToSExpr tname, SList (map prettyPatternToSExpr args), prettyConReprToSExpr repr, SList (map prettyTypeToSExpr targs), SList (map (SAtom . show . typevarId) exists)]
  PatVar tname p ->
    SList [SAtom "pat-var", prettyTNameToSExpr tname, prettyPatternToSExpr p]
  PatLit lit ->
    SList [SAtom "pat-lit", prettyLitToSExpr lit]
  PatWild ->
    SAtom "pat-wild"
