
/* -----------------
initial
 (S-expressions) --------------- */
(core
  ()
  ((rec
      (def
        bootstrap/example/example2/rev-acc
        (forall
          (51)
          (fun
            ((xs
                (tapp
                  (tcon std/core/types/list)
                  (tvar 51)))
              (acc
                (tapp
                  (tcon std/core/types/list)
                  (tvar 51))))
            (tcon std/core/types/total)
            (tapp
              (tcon std/core/types/list)
              (tvar 51))))
        (type-lam
          (51)
          (lam
            ((xs
                (tapp
                  (tcon std/core/types/list)
                  (tvar 51)))
              (acc
                (tapp
                  (tcon std/core/types/list)
                  (tvar 51))))
            (tcon std/core/types/total)
            (case
              ((var xs))
              ((branch
                  ((pat-con
                      std/core/types/Cons
                      ((pat-var x pat-wild)
                        (pat-var xx pat-wild))
                      (as-cons
                        as-list
                        (value-repr 0 2 8)
                        std/core/types/Nil
                        none
                        2)
                      ((tvar 51)
                        (tapp
                          (tcon std/core/types/list)
                          (tvar 51)))))
                  ((guard
                      (con
                        std/core/types/True
                        (enum
                          enum
                          (value-repr 0 0 0)
                          2))
                      (app
                        (app
                          (type-app
                            (var std/core/types/@open)
                            (tcon std/core/types/total)
                            (tcon std/core/types/total)
                            (fun
                              ((xs
                                  (tapp
                                    (tcon std/core/types/list)
                                    (tvar 51)))
                                (acc
                                  (tapp
                                    (tcon std/core/types/list)
                                    (tvar 51))))
                              (tcon std/core/types/total)
                              (tapp
                                (tcon std/core/types/list)
                                (tvar 51)))
                            (fun
                              ((xs
                                  (tapp
                                    (tcon std/core/types/list)
                                    (tvar 51)))
                                (acc
                                  (tapp
                                    (tcon std/core/types/list)
                                    (tvar 51))))
                              (tcon std/core/types/total)
                              (tapp
                                (tcon std/core/types/list)
                                (tvar 51))))
                          (type-app
                            (var
                              bootstrap/example/example2/rev-acc)
                            (tvar 51)))
                        (var xx)
                        (app
                          (type-app
                            (con
                              std/core/types/Cons
                              (as-cons
                                as-list
                                (value-repr 0 2 8)
                                std/core/types/Nil
                                none
                                2))
                            (tvar 51))
                          (var x)
                          (var acc))))))
                (branch
                  ((pat-con
                      std/core/types/Nil
                      ()
                      (singleton
                        as-list
                        (value-repr 0 0 0)
                        1)
                      ()))
                  ((guard
                      (con
                        std/core/types/True
                        (enum
                          enum
                          (value-repr 0 0 0)
                          2))
                      (var acc))))))))
        (def-fun () (fip (at-most 0)))))
    (non-rec
      (def
        bootstrap/example/example2/main
        (fun
          ()
          (tcon std/core/types/total)
          (tcon std/core/types/unit))
        (lam
          ()
          (tcon std/core/types/total)
          (con
            std/core/types/Unit
            (enum
              enum
              (value-repr 0 0 0)
              1)))
        (def-fun () (no-fip False))))))
/* end of initial (S-expressions) --------------- */


/* -----------------
initial
 (S-expressions) --------------- */
(core
  ()
  ((non-rec
      (def
        bootstrap/example/example2/@main/@expr
        (fun
          ()
          (tcon std/core/types/total)
          (tcon std/core/types/unit))
        (lam
          ()
          (tcon std/core/types/total)
          (app
            (app
              (type-app
                (var std/core/types/@open)
                (tcon std/core/types/total)
                (tcon std/core/types/total)
                (fun
                  ()
                  (tcon std/core/types/total)
                  (tcon std/core/types/unit))
                (fun
                  ()
                  (tcon std/core/types/total)
                  (tcon std/core/types/unit)))
              (var
                bootstrap/example/example2/main))))
        (def-fun () (no-fip False))))))
/* end of initial (S-expressions) --------------- */


/* -----------------
initial
 (S-expressions) --------------- */
(core
  ()
  ((non-rec
      (def
        bootstrap/example/example2/@main/@expr
        (fun
          ()
          (tcon std/core/types/total)
          (tcon std/core/types/unit))
        (lam
          ()
          (tcon std/core/types/total)
          (app
            (app
              (type-app
                (var std/core/types/@open)
                (tcon std/core/types/total)
                (tcon std/core/types/total)
                (fun
                  ()
                  (tcon std/core/types/total)
                  (tcon std/core/types/unit))
                (fun
                  ()
                  (tcon std/core/types/total)
                  (tcon std/core/types/unit)))
              (var
                bootstrap/example/example2/main))))
        (def-fun () (no-fip False))))
    (non-rec
      (def
        bootstrap/example/example2/@main/@main
        (fun
          ()
          (tapp
            (tcon
              std/core/types/effect-extend)
            (tsyn
              std/core/types/st
              (tcon std/core/types/global)
              (tapp
                (tcon
                  std/core/types/effect-extend)
                (tapp
                  (tcon std/core/types/alloc)
                  (tcon std/core/types/global))
                (tapp
                  (tcon
                    std/core/types/effect-extend)
                  (tapp
                    (tcon std/core/types/read)
                    (tcon std/core/types/global))
                  (tapp
                    (tcon
                      std/core/types/effect-extend)
                    (tapp
                      (tcon std/core/types/write)
                      (tcon std/core/types/global))
                    (tcon std/core/types/total)))))
            (tapp
              (tcon
                std/core/types/effect-extend)
              (tcon std/core/console/console)
              (tapp
                (tcon
                  std/core/types/effect-extend)
                (tcon std/core/types/div)
                (tapp
                  (tcon
                    std/core/types/effect-extend)
                  (tcon std/core/fsys)
                  (tapp
                    (tcon
                      std/core/types/effect-extend)
                    (tcon std/core/types/ndet)
                    (tapp
                      (tcon
                        std/core/types/effect-extend)
                      (tcon std/core/net)
                      (tapp
                        (tcon
                          std/core/types/effect-extend)
                        (tcon std/core/ui)
                        (tcon
                          std/core/types/total))))))))
          (tcon std/core/types/unit))
        (lam
          ()
          (tsyn
            std/core/io-noexn
            (tapp
              (tcon
                std/core/types/effect-extend)
              (tcon std/core/types/div)
              (tapp
                (tcon
                  std/core/types/effect-extend)
                (tsyn
                  std/core/io-total
                  (tapp
                    (tcon
                      std/core/types/effect-extend)
                    (tcon std/core/types/ndet)
                    (tapp
                      (tcon
                        std/core/types/effect-extend)
                      (tcon std/core/console/console)
                      (tapp
                        (tcon
                          std/core/types/effect-extend)
                        (tcon std/core/net)
                        (tapp
                          (tcon
                            std/core/types/effect-extend)
                          (tcon std/core/fsys)
                          (tapp
                            (tcon
                              std/core/types/effect-extend)
                            (tcon std/core/ui)
                            (tapp
                              (tcon
                                std/core/types/effect-extend)
                              (tsyn
                                std/core/types/st
                                (tcon std/core/types/global)
                                (tapp
                                  (tcon
                                    std/core/types/effect-extend)
                                  (tapp
                                    (tcon std/core/types/read)
                                    (tcon std/core/types/global))
                                  (tapp
                                    (tcon
                                      std/core/types/effect-extend)
                                    (tapp
                                      (tcon std/core/types/write)
                                      (tcon std/core/types/global))
                                    (tapp
                                      (tcon
                                        std/core/types/effect-extend)
                                      (tapp
                                        (tcon std/core/types/alloc)
                                        (tcon std/core/types/global))
                                      (tcon std/core/types/total)))))
                              (tcon
                                std/core/types/total))))))))
                (tcon std/core/types/total))))
          (app
            (app
              (type-app
                (var std/core/types/@open)
                (tcon std/core/types/total)
                (tsyn
                  std/core/io-noexn
                  (tapp
                    (tcon
                      std/core/types/effect-extend)
                    (tcon std/core/types/div)
                    (tapp
                      (tcon
                        std/core/types/effect-extend)
                      (tsyn
                        std/core/io-total
                        (tapp
                          (tcon
                            std/core/types/effect-extend)
                          (tcon std/core/types/ndet)
                          (tapp
                            (tcon
                              std/core/types/effect-extend)
                            (tcon std/core/console/console)
                            (tapp
                              (tcon
                                std/core/types/effect-extend)
                              (tcon std/core/net)
                              (tapp
                                (tcon
                                  std/core/types/effect-extend)
                                (tcon std/core/fsys)
                                (tapp
                                  (tcon
                                    std/core/types/effect-extend)
                                  (tcon std/core/ui)
                                  (tapp
                                    (tcon
                                      std/core/types/effect-extend)
                                    (tsyn
                                      std/core/types/st
                                      (tcon std/core/types/global)
                                      (tapp
                                        (tcon
                                          std/core/types/effect-extend)
                                        (tapp
                                          (tcon std/core/types/read)
                                          (tcon std/core/types/global))
                                        (tapp
                                          (tcon
                                            std/core/types/effect-extend)
                                          (tapp
                                            (tcon std/core/types/write)
                                            (tcon std/core/types/global))
                                          (tapp
                                            (tcon
                                              std/core/types/effect-extend)
                                            (tapp
                                              (tcon std/core/types/alloc)
                                              (tcon std/core/types/global))
                                            (tcon std/core/types/total)))))
                                    (tcon
                                      std/core/types/total))))))))
                      (tcon std/core/types/total))))
                (fun
                  ()
                  (tcon std/core/types/total)
                  (tcon std/core/types/unit))
                (fun
                  ()
                  (tsyn
                    std/core/io-noexn
                    (tapp
                      (tcon
                        std/core/types/effect-extend)
                      (tcon std/core/types/div)
                      (tapp
                        (tcon
                          std/core/types/effect-extend)
                        (tsyn
                          std/core/io-total
                          (tapp
                            (tcon
                              std/core/types/effect-extend)
                            (tcon std/core/types/ndet)
                            (tapp
                              (tcon
                                std/core/types/effect-extend)
                              (tcon std/core/console/console)
                              (tapp
                                (tcon
                                  std/core/types/effect-extend)
                                (tcon std/core/net)
                                (tapp
                                  (tcon
                                    std/core/types/effect-extend)
                                  (tcon std/core/fsys)
                                  (tapp
                                    (tcon
                                      std/core/types/effect-extend)
                                    (tcon std/core/ui)
                                    (tapp
                                      (tcon
                                        std/core/types/effect-extend)
                                      (tsyn
                                        std/core/types/st
                                        (tcon std/core/types/global)
                                        (tapp
                                          (tcon
                                            std/core/types/effect-extend)
                                          (tapp
                                            (tcon std/core/types/read)
                                            (tcon std/core/types/global))
                                          (tapp
                                            (tcon
                                              std/core/types/effect-extend)
                                            (tapp
                                              (tcon std/core/types/write)
                                              (tcon std/core/types/global))
                                            (tapp
                                              (tcon
                                                std/core/types/effect-extend)
                                              (tapp
                                                (tcon std/core/types/alloc)
                                                (tcon std/core/types/global))
                                              (tcon std/core/types/total)))))
                                      (tcon
                                        std/core/types/total))))))))
                        (tcon std/core/types/total))))
                  (tcon std/core/types/unit)))
              (var
                bootstrap/example/example2/@main/@expr))))
        (def-fun () (no-fip False))))))
/* end of initial (S-expressions) --------------- */

[6n