
/* -----------------
initial
 (S-expressions) --------------- */
(def
  bootstrap/example/example2/rev-acc
  (forall
    (TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})
    (fun
      ((xs
          (tapp
            (tcon
              (std/core/types/list V -> V))
            (tvar
              TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
        (acc
          (tapp
            (tcon
              (std/core/types/list V -> V))
            (tvar
              TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
      (tcon (std/core/types/total E))
      (tapp
        (tcon
          (std/core/types/list V -> V))
        (tvar
          TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
  (type-lam
    (TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})
    (lam
      ((xs
          (tapp
            (tcon
              (std/core/types/list V -> V))
            (tvar
              TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
        (acc
          (tapp
            (tcon
              (std/core/types/list V -> V))
            (tvar
              TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
      (tcon (std/core/types/total E))
      (case
        ((var
            (xs
              (tapp
                (tcon
                  (std/core/types/list V -> V))
                (tvar
                  TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))))
        ((branch
            ((pat-con
                (std/core/types/Cons
                  (fun
                    ((head
                        (tvar
                          TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))
                      (tail
                        (tapp
                          (tcon
                            (std/core/types/list V -> V))
                          (tvar
                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                    (tcon (std/core/types/total E))
                    (tapp
                      (tcon
                        (std/core/types/list V -> V))
                      (tvar
                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                (pat-var
                  (x
                    (tvar
                      TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))
                  pat-wild)
                (pat-var
                  (xx
                    (tapp
                      (tcon
                        (std/core/types/list V -> V))
                      (tvar
                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                  pat-wild)
                (tvar
                  TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})
                (tapp
                  (tcon
                    (std/core/types/list V -> V))
                  (tvar
                    TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
            ((guard
                (con
                  (std/core/types/True
                    (tcon (std/core/types/bool V))))
                (app
                  (app
                    (type-app
                      (var
                        (std/core/types/@open
                          (forall
                            (TypeVar {typevarId = -3, typevarKind = KCon E, typevarFlavour = Bound}
                              TypeVar {typevarId = -4, typevarKind = KCon E, typevarFlavour = Bound}
                              TypeVar {typevarId = -1, typevarKind = KCon V, typevarFlavour = Bound}
                              TypeVar {typevarId = -2, typevarKind = KCon V, typevarFlavour = Bound})
                            (fun
                              ((x
                                  (fun
                                    ((xs
                                        (tapp
                                          (tcon
                                            (std/core/types/list V -> V))
                                          (tvar
                                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                                      (acc
                                        (tapp
                                          (tcon
                                            (std/core/types/list V -> V))
                                          (tvar
                                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                                    (tcon (std/core/types/total E))
                                    (tapp
                                      (tcon
                                        (std/core/types/list V -> V))
                                      (tvar
                                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))))
                              (tcon (std/core/types/total E))
                              (fun
                                ((xs
                                    (tapp
                                      (tcon
                                        (std/core/types/list V -> V))
                                      (tvar
                                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                                  (acc
                                    (tapp
                                      (tcon
                                        (std/core/types/list V -> V))
                                      (tvar
                                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                                (tcon (std/core/types/total E))
                                (tapp
                                  (tcon
                                    (std/core/types/list V -> V))
                                  (tvar
                                    TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))))))
                      (tcon (std/core/types/total E))
                      (tcon (std/core/types/total E))
                      (fun
                        ((xs
                            (tapp
                              (tcon
                                (std/core/types/list V -> V))
                              (tvar
                                TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                          (acc
                            (tapp
                              (tcon
                                (std/core/types/list V -> V))
                              (tvar
                                TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                        (tcon (std/core/types/total E))
                        (tapp
                          (tcon
                            (std/core/types/list V -> V))
                          (tvar
                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                      (fun
                        ((xs
                            (tapp
                              (tcon
                                (std/core/types/list V -> V))
                              (tvar
                                TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                          (acc
                            (tapp
                              (tcon
                                (std/core/types/list V -> V))
                              (tvar
                                TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                        (tcon (std/core/types/total E))
                        (tapp
                          (tcon
                            (std/core/types/list V -> V))
                          (tvar
                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                    (type-app
                      (var
                        (bootstrap/example/example2/rev-acc
                          (forall
                            (TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})
                            (fun
                              ((xs
                                  (tapp
                                    (tcon
                                      (std/core/types/list V -> V))
                                    (tvar
                                      TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                                (acc
                                  (tapp
                                    (tcon
                                      (std/core/types/list V -> V))
                                    (tvar
                                      TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                              (tcon (std/core/types/total E))
                              (tapp
                                (tcon
                                  (std/core/types/list V -> V))
                                (tvar
                                  TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))))
                      (tvar
                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                  (var
                    (xx
                      (tapp
                        (tcon
                          (std/core/types/list V -> V))
                        (tvar
                          TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))
                  (app
                    (type-app
                      (con
                        (std/core/types/Cons
                          (forall
                            (TypeVar {typevarId = 10021, typevarKind = KCon V, typevarFlavour = Bound})
                            (fun
                              ((head
                                  (tvar
                                    TypeVar {typevarId = 10021, typevarKind = KCon V, typevarFlavour = Bound}))
                                (tail
                                  (tapp
                                    (tcon
                                      (std/core/types/list V -> V))
                                    (tvar
                                      TypeVar {typevarId = 10021, typevarKind = KCon V, typevarFlavour = Bound}))))
                              (tcon (std/core/types/total E))
                              (tapp
                                (tcon
                                  (std/core/types/list V -> V))
                                (tvar
                                  TypeVar {typevarId = 10021, typevarKind = KCon V, typevarFlavour = Bound}))))))
                      (tvar
                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))
                    (var
                      (x
                        (tvar
                          TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))
                    (var
                      (acc
                        (tapp
                          (tcon
                            (std/core/types/list V -> V))
                          (tvar
                            TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))))))))
          (branch
            ((pat-con
                (std/core/types/Nil
                  (tapp
                    (tcon
                      (std/core/types/list V -> V))
                    (tvar
                      TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound})))))
            ((guard
                (con
                  (std/core/types/True
                    (tcon (std/core/types/bool V))))
                (var
                  (acc
                    (tapp
                      (tcon
                        (std/core/types/list V -> V))
                      (tvar
                        TypeVar {typevarId = 51, typevarKind = KCon V, typevarFlavour = Bound}))))))))))))
(def
  bootstrap/example/example2/main
  (fun
    ()
    (tcon (std/core/types/total E))
    (tcon (std/core/types/unit V)))
  (lam
    ()
    (tcon (std/core/types/total E))
    (con
      (std/core/types/Unit
        (tcon
          (std/core/types/unit V))))))
/* end of initial (S-expressions) --------------- */


/* -----------------
initial
 (S-expressions) --------------- */
(def
  bootstrap/example/example2/@main/@expr
  (fun
    ()
    (tcon (std/core/types/total E))
    (tcon (std/core/types/unit V)))
  (lam
    ()
    (tcon (std/core/types/total E))
    (app
      (app
        (type-app
          (var
            (std/core/types/@open
              (forall
                (TypeVar {typevarId = -3, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -4, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -1, typevarKind = KCon V, typevarFlavour = Bound}
                  TypeVar {typevarId = -2, typevarKind = KCon V, typevarFlavour = Bound})
                (fun
                  ((x
                      (fun
                        ()
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/unit V)))))
                  (tcon (std/core/types/total E))
                  (fun
                    ()
                    (tcon (std/core/types/total E))
                    (tcon
                      (std/core/types/unit V)))))))
          (tcon (std/core/types/total E))
          (tcon (std/core/types/total E))
          (fun
            ()
            (tcon (std/core/types/total E))
            (tcon (std/core/types/unit V)))
          (fun
            ()
            (tcon (std/core/types/total E))
            (tcon (std/core/types/unit V))))
        (var
          (bootstrap/example/example2/main
            (fun
              ()
              (tcon (std/core/types/total E))
              (tcon
                (std/core/types/unit V)))))))))
/* end of initial (S-expressions) --------------- */


/* -----------------
initial
 (S-expressions) --------------- */
(def
  bootstrap/example/example2/@main/@expr
  (fun
    ()
    (tcon (std/core/types/total E))
    (tcon (std/core/types/unit V)))
  (lam
    ()
    (tcon (std/core/types/total E))
    (app
      (app
        (type-app
          (var
            (std/core/types/@open
              (forall
                (TypeVar {typevarId = -3, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -4, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -1, typevarKind = KCon V, typevarFlavour = Bound}
                  TypeVar {typevarId = -2, typevarKind = KCon V, typevarFlavour = Bound})
                (fun
                  ((x
                      (fun
                        ()
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/unit V)))))
                  (tcon (std/core/types/total E))
                  (fun
                    ()
                    (tcon (std/core/types/total E))
                    (tcon
                      (std/core/types/unit V)))))))
          (tcon (std/core/types/total E))
          (tcon (std/core/types/total E))
          (fun
            ()
            (tcon (std/core/types/total E))
            (tcon (std/core/types/unit V)))
          (fun
            ()
            (tcon (std/core/types/total E))
            (tcon (std/core/types/unit V))))
        (var
          (bootstrap/example/example2/main
            (fun
              ()
              (tcon (std/core/types/total E))
              (tcon
                (std/core/types/unit V)))))))))
(def
  bootstrap/example/example2/@main/@main
  (fun
    ()
    (tapp
      (tcon
        (std/core/types/effect-extend
          (X, E) -> E))
      (tsyn
        (std/core/types/st H -> E 1)
        (tcon (std/core/types/global H))
        (tapp
          (tcon
            (std/core/types/effect-extend
              (X, E) -> E))
          (tapp
            (tcon
              (std/core/types/alloc H -> X))
            (tcon
              (std/core/types/global H)))
          (tapp
            (tcon
              (std/core/types/effect-extend
                (X, E) -> E))
            (tapp
              (tcon
                (std/core/types/read H -> X))
              (tcon
                (std/core/types/global H)))
            (tapp
              (tcon
                (std/core/types/effect-extend
                  (X, E) -> E))
              (tapp
                (tcon
                  (std/core/types/write H -> X))
                (tcon
                  (std/core/types/global H)))
              (tcon
                (std/core/types/total E))))))
      (tapp
        (tcon
          (std/core/types/effect-extend
            (X, E) -> E))
        (tcon
          (std/core/console/console X))
        (tapp
          (tcon
            (std/core/types/effect-extend
              (X, E) -> E))
          (tcon (std/core/types/div X))
          (tapp
            (tcon
              (std/core/types/effect-extend
                (X, E) -> E))
            (tcon (std/core/fsys X))
            (tapp
              (tcon
                (std/core/types/effect-extend
                  (X, E) -> E))
              (tcon (std/core/types/ndet X))
              (tapp
                (tcon
                  (std/core/types/effect-extend
                    (X, E) -> E))
                (tcon (std/core/net X))
                (tapp
                  (tcon
                    (std/core/types/effect-extend
                      (X, E) -> E))
                  (tcon (std/core/ui X))
                  (tcon
                    (std/core/types/total E)))))))))
    (tcon (std/core/types/unit V)))
  (lam
    ()
    (tsyn
      (std/core/io-noexn E 3)
      (tapp
        (tcon
          (std/core/types/effect-extend
            (X, E) -> E))
        (tcon (std/core/types/div X))
        (tapp
          (tcon
            (std/core/types/effect-extend
              (X, E) -> E))
          (tsyn
            (std/core/io-total E 2)
            (tapp
              (tcon
                (std/core/types/effect-extend
                  (X, E) -> E))
              (tcon (std/core/types/ndet X))
              (tapp
                (tcon
                  (std/core/types/effect-extend
                    (X, E) -> E))
                (tcon
                  (std/core/console/console X))
                (tapp
                  (tcon
                    (std/core/types/effect-extend
                      (X, E) -> E))
                  (tcon (std/core/net X))
                  (tapp
                    (tcon
                      (std/core/types/effect-extend
                        (X, E) -> E))
                    (tcon (std/core/fsys X))
                    (tapp
                      (tcon
                        (std/core/types/effect-extend
                          (X, E) -> E))
                      (tcon (std/core/ui X))
                      (tapp
                        (tcon
                          (std/core/types/effect-extend
                            (X, E) -> E))
                        (tsyn
                          (std/core/types/st H -> E 1)
                          (tcon (std/core/types/global H))
                          (tapp
                            (tcon
                              (std/core/types/effect-extend
                                (X, E) -> E))
                            (tapp
                              (tcon
                                (std/core/types/read H -> X))
                              (tcon
                                (std/core/types/global H)))
                            (tapp
                              (tcon
                                (std/core/types/effect-extend
                                  (X, E) -> E))
                              (tapp
                                (tcon
                                  (std/core/types/write H -> X))
                                (tcon
                                  (std/core/types/global H)))
                              (tapp
                                (tcon
                                  (std/core/types/effect-extend
                                    (X, E) -> E))
                                (tapp
                                  (tcon
                                    (std/core/types/alloc H -> X))
                                  (tcon
                                    (std/core/types/global H)))
                                (tcon
                                  (std/core/types/total E))))))
                        (tcon
                          (std/core/types/total E)))))))))
          (tcon
            (std/core/types/total E)))))
    (app
      (app
        (type-app
          (var
            (std/core/types/@open
              (forall
                (TypeVar {typevarId = -3, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -4, typevarKind = KCon E, typevarFlavour = Bound}
                  TypeVar {typevarId = -1, typevarKind = KCon V, typevarFlavour = Bound}
                  TypeVar {typevarId = -2, typevarKind = KCon V, typevarFlavour = Bound})
                (fun
                  ((x
                      (fun
                        ()
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/unit V)))))
                  (tcon (std/core/types/total E))
                  (fun
                    ()
                    (tsyn
                      (std/core/io-noexn E 3)
                      (tapp
                        (tcon
                          (std/core/types/effect-extend
                            (X, E) -> E))
                        (tcon (std/core/types/div X))
                        (tapp
                          (tcon
                            (std/core/types/effect-extend
                              (X, E) -> E))
                          (tsyn
                            (std/core/io-total E 2)
                            (tapp
                              (tcon
                                (std/core/types/effect-extend
                                  (X, E) -> E))
                              (tcon (std/core/types/ndet X))
                              (tapp
                                (tcon
                                  (std/core/types/effect-extend
                                    (X, E) -> E))
                                (tcon
                                  (std/core/console/console X))
                                (tapp
                                  (tcon
                                    (std/core/types/effect-extend
                                      (X, E) -> E))
                                  (tcon (std/core/net X))
                                  (tapp
                                    (tcon
                                      (std/core/types/effect-extend
                                        (X, E) -> E))
                                    (tcon (std/core/fsys X))
                                    (tapp
                                      (tcon
                                        (std/core/types/effect-extend
                                          (X, E) -> E))
                                      (tcon (std/core/ui X))
                                      (tapp
                                        (tcon
                                          (std/core/types/effect-extend
                                            (X, E) -> E))
                                        (tsyn
                                          (std/core/types/st H -> E 1)
                                          (tcon (std/core/types/global H))
                                          (tapp
                                            (tcon
                                              (std/core/types/effect-extend
                                                (X, E) -> E))
                                            (tapp
                                              (tcon
                                                (std/core/types/read H -> X))
                                              (tcon
                                                (std/core/types/global H)))
                                            (tapp
                                              (tcon
                                                (std/core/types/effect-extend
                                                  (X, E) -> E))
                                              (tapp
                                                (tcon
                                                  (std/core/types/write H -> X))
                                                (tcon
                                                  (std/core/types/global H)))
                                              (tapp
                                                (tcon
                                                  (std/core/types/effect-extend
                                                    (X, E) -> E))
                                                (tapp
                                                  (tcon
                                                    (std/core/types/alloc
                                                      H -> X))
                                                  (tcon
                                                    (std/core/types/global H)))
                                                (tcon
                                                  (std/core/types/total E))))))
                                        (tcon
                                          (std/core/types/total E)))))))))
                          (tcon
                            (std/core/types/total E)))))
                    (tcon
                      (std/core/types/unit V)))))))
          (tcon (std/core/types/total E))
          (tsyn
            (std/core/io-noexn E 3)
            (tapp
              (tcon
                (std/core/types/effect-extend
                  (X, E) -> E))
              (tcon (std/core/types/div X))
              (tapp
                (tcon
                  (std/core/types/effect-extend
                    (X, E) -> E))
                (tsyn
                  (std/core/io-total E 2)
                  (tapp
                    (tcon
                      (std/core/types/effect-extend
                        (X, E) -> E))
                    (tcon (std/core/types/ndet X))
                    (tapp
                      (tcon
                        (std/core/types/effect-extend
                          (X, E) -> E))
                      (tcon
                        (std/core/console/console X))
                      (tapp
                        (tcon
                          (std/core/types/effect-extend
                            (X, E) -> E))
                        (tcon (std/core/net X))
                        (tapp
                          (tcon
                            (std/core/types/effect-extend
                              (X, E) -> E))
                          (tcon (std/core/fsys X))
                          (tapp
                            (tcon
                              (std/core/types/effect-extend
                                (X, E) -> E))
                            (tcon (std/core/ui X))
                            (tapp
                              (tcon
                                (std/core/types/effect-extend
                                  (X, E) -> E))
                              (tsyn
                                (std/core/types/st H -> E 1)
                                (tcon (std/core/types/global H))
                                (tapp
                                  (tcon
                                    (std/core/types/effect-extend
                                      (X, E) -> E))
                                  (tapp
                                    (tcon
                                      (std/core/types/read H -> X))
                                    (tcon
                                      (std/core/types/global H)))
                                  (tapp
                                    (tcon
                                      (std/core/types/effect-extend
                                        (X, E) -> E))
                                    (tapp
                                      (tcon
                                        (std/core/types/write H -> X))
                                      (tcon
                                        (std/core/types/global H)))
                                    (tapp
                                      (tcon
                                        (std/core/types/effect-extend
                                          (X, E) -> E))
                                      (tapp
                                        (tcon
                                          (std/core/types/alloc H -> X))
                                        (tcon
                                          (std/core/types/global H)))
                                      (tcon
                                        (std/core/types/total E))))))
                              (tcon
                                (std/core/types/total E)))))))))
                (tcon
                  (std/core/types/total E)))))
          (fun
            ()
            (tcon (std/core/types/total E))
            (tcon (std/core/types/unit V)))
          (fun
            ()
            (tsyn
              (std/core/io-noexn E 3)
              (tapp
                (tcon
                  (std/core/types/effect-extend
                    (X, E) -> E))
                (tcon (std/core/types/div X))
                (tapp
                  (tcon
                    (std/core/types/effect-extend
                      (X, E) -> E))
                  (tsyn
                    (std/core/io-total E 2)
                    (tapp
                      (tcon
                        (std/core/types/effect-extend
                          (X, E) -> E))
                      (tcon (std/core/types/ndet X))
                      (tapp
                        (tcon
                          (std/core/types/effect-extend
                            (X, E) -> E))
                        (tcon
                          (std/core/console/console X))
                        (tapp
                          (tcon
                            (std/core/types/effect-extend
                              (X, E) -> E))
                          (tcon (std/core/net X))
                          (tapp
                            (tcon
                              (std/core/types/effect-extend
                                (X, E) -> E))
                            (tcon (std/core/fsys X))
                            (tapp
                              (tcon
                                (std/core/types/effect-extend
                                  (X, E) -> E))
                              (tcon (std/core/ui X))
                              (tapp
                                (tcon
                                  (std/core/types/effect-extend
                                    (X, E) -> E))
                                (tsyn
                                  (std/core/types/st H -> E 1)
                                  (tcon (std/core/types/global H))
                                  (tapp
                                    (tcon
                                      (std/core/types/effect-extend
                                        (X, E) -> E))
                                    (tapp
                                      (tcon
                                        (std/core/types/read H -> X))
                                      (tcon
                                        (std/core/types/global H)))
                                    (tapp
                                      (tcon
                                        (std/core/types/effect-extend
                                          (X, E) -> E))
                                      (tapp
                                        (tcon
                                          (std/core/types/write H -> X))
                                        (tcon
                                          (std/core/types/global H)))
                                      (tapp
                                        (tcon
                                          (std/core/types/effect-extend
                                            (X, E) -> E))
                                        (tapp
                                          (tcon
                                            (std/core/types/alloc H -> X))
                                          (tcon
                                            (std/core/types/global H)))
                                        (tcon
                                          (std/core/types/total E))))))
                                (tcon
                                  (std/core/types/total E)))))))))
                  (tcon
                    (std/core/types/total E)))))
            (tcon (std/core/types/unit V))))
        (var
          (bootstrap/example/example2/@main/@expr
            (fun
              ()
              (tcon (std/core/types/total E))
              (tcon
                (std/core/types/unit V)))))))))
/* end of initial (S-expressions) --------------- */

[6n