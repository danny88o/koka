module bootstrap/parc-reuse

import bootstrap/core/core
import bootstrap/utils

pub type reusable
  NotReusable
  ReusableWithSize(size: int)

pub fun get-data-info(newtypes: list<(name, data-info)>, tp : type-expr) : maybe<(name, data-info)>
  fun find-info(t : type-expr): maybe<(name, data-info)>
    match t
      TCon(name) -> match newtype-lookup-any(name, newtypes)
        Just(di) -> Just((name, di))
        Nothing -> Nothing
      TApp(f, _) -> find-info(f)
      TSyn(_, _, t') -> find-info(t')
      _ -> Nothing
  find-info(tp)

fun value-repr/size-scan(vr: value-repr): (int, int)
  (vr.raw-val + (vr.scan * 8), vr.scan)

pub fun get-fixed-data-alloc-size(newtypes: list<(name, data-info)>, nm: type-expr): maybe<(int, int)>
  match get-data-info(newtypes, nm)
    Just((name, info)) | !name.contains("_noreuse") -> match info.ddef
        DataDefValue(_) -> Nothing
        _ ->
          val size-scans = info.constrs.map(fn(ci) ci.vrepr.size-scan)
          match size-scans
            Cons(ss, sss) | sss.all(fn(s) s == ss) -> Just(ss)
            _ -> Nothing
    _ -> Nothing

