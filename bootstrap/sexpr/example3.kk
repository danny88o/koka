/*
initial
(S-expressions)
*/
(core
  ((type-def-group
      (data
        (data-info
          bootstrap/example/example3/tree
          ()
          ((con-info
              bootstrap/example/example3/Node
              ((lchild
                  (tcon
                    bootstrap/example/example3/tree))
                (key (tcon std/core/types/int))
                (value
                  (tcon std/core/types/bool))
                (rchild
                  (tcon
                    bootstrap/example/example3/tree)))
              (no-fip False))
            (con-info
              bootstrap/example/example3/Leaf
              ()
              (no-fip False)))
          True
          normal))))
  ((non-rec
      (def
        bootstrap/example/example3/is-node
        (fun
          ((tree
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (tcon std/core/types/bool))
        (lam
          ((tree
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (case
            ((var tree))
            ((branch
                ((pat-con
                    bootstrap/example/example3/Node
                    (pat-wild
                      pat-wild
                      pat-wild
                      pat-wild)
                    (as-cons
                      as-list
                      (value-repr 1 3 8)
                      bootstrap/example/example3/Leaf
                      none
                      1)
                    ((tcon
                        bootstrap/example/example3/tree)
                      (tcon std/core/types/int)
                      (tcon std/core/types/bool)
                      (tcon
                        bootstrap/example/example3/tree))))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2)))))
              (branch
                ((pat-con
                    bootstrap/example/example3/Leaf
                    ()
                    (singleton
                      as-list
                      (value-repr 0 0 0)
                      2)
                    ()))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (con
                      std/core/types/False
                      (enum
                        enum
                        (value-repr 0 0 0)
                        1))))))))
        (def-fun
          (borrow)
          (fip (at-most 0)))))
    (non-rec
      (def
        bootstrap/example/example3/is-leaf
        (fun
          ((tree
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (tcon std/core/types/bool))
        (lam
          ((tree
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (case
            ((var tree))
            ((branch
                ((pat-con
                    bootstrap/example/example3/Leaf
                    ()
                    (singleton
                      as-list
                      (value-repr 0 0 0)
                      2)
                    ()))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2)))))
              (branch
                ((pat-con
                    bootstrap/example/example3/Node
                    (pat-wild
                      pat-wild
                      pat-wild
                      pat-wild)
                    (as-cons
                      as-list
                      (value-repr 1 3 8)
                      bootstrap/example/example3/Leaf
                      none
                      1)
                    ((tcon
                        bootstrap/example/example3/tree)
                      (tcon std/core/types/int)
                      (tcon std/core/types/bool)
                      (tcon
                        bootstrap/example/example3/tree))))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (con
                      std/core/types/False
                      (enum
                        enum
                        (value-repr 0 0 0)
                        1))))))))
        (def-fun
          (borrow)
          (fip (at-most 0)))))
    (non-rec
      (def
        bootstrap/example/example3/replace
        (fun
          ((t
              (tcon
                bootstrap/example/example3/tree))
            (key (tcon std/core/types/int))
            (value
              (tcon std/core/types/bool)))
          (tcon std/core/types/total)
          (tcon
            bootstrap/example/example3/tree))
        (lam
          ((t
              (tcon
                bootstrap/example/example3/tree))
            (key (tcon std/core/types/int))
            (value
              (tcon std/core/types/bool)))
          (tcon std/core/types/total)
          (case
            ((var t))
            ((branch
                ((pat-con
                    bootstrap/example/example3/Node
                    ((pat-var lchild pat-wild)
                      (pat-var k pat-wild)
                      pat-wild
                      (pat-var rchild pat-wild))
                    (as-cons
                      as-list
                      (value-repr 1 3 8)
                      bootstrap/example/example3/Leaf
                      none
                      1)
                    ((tcon
                        bootstrap/example/example3/tree)
                      (tcon std/core/types/int)
                      (tcon std/core/types/bool)
                      (tcon
                        bootstrap/example/example3/tree))))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (case
                      ((app
                          (app
                            (type-app
                              (var std/core/types/@open)
                              (tcon std/core/types/total)
                              (tcon std/core/types/total)
                              (fun
                                ((x (tcon std/core/types/int))
                                  (y (tcon std/core/types/int)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/bool))
                              (fun
                                ((x (tcon std/core/types/int))
                                  (y (tcon std/core/types/int)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/bool)))
                            (var std/core/int/(==)))
                          (var k)
                          (var key)))
                      ((branch
                          ((pat-con
                              std/core/types/True
                              ()
                              (enum enum (value-repr 0 0 0) 2)
                              ()))
                          ((guard
                              (con
                                std/core/types/True
                                (enum
                                  enum
                                  (value-repr 0 0 0)
                                  2))
                              (app
                                (con
                                  bootstrap/example/example3/Node
                                  (as-cons
                                    as-list
                                    (value-repr 1 3 8)
                                    bootstrap/example/example3/Leaf
                                    none
                                    1))
                                (var lchild)
                                (var k)
                                (var value)
                                (var rchild)))))
                        (branch
                          ((pat-con
                              std/core/types/False
                              ()
                              (enum enum (value-repr 0 0 0) 1)
                              ()))
                          ((guard
                              (con
                                std/core/types/True
                                (enum
                                  enum
                                  (value-repr 0 0 0)
                                  2))
                              (case
                                ((app
                                    (app
                                      (type-app
                                        (var std/core/types/@open)
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/total)
                                        (fun
                                          ((x (tcon std/core/types/int))
                                            (y (tcon std/core/types/int)))
                                          (tcon std/core/types/total)
                                          (tcon std/core/types/bool))
                                        (fun
                                          ((x (tcon std/core/types/int))
                                            (y (tcon std/core/types/int)))
                                          (tcon std/core/types/total)
                                          (tcon std/core/types/bool)))
                                      (var std/core/int/(<)))
                                    (var k)
                                    (var key)))
                                ((branch
                                    ((pat-con
                                        std/core/types/True
                                        ()
                                        (enum enum (value-repr 0 0 0) 2)
                                        ()))
                                    ((guard
                                        (con
                                          std/core/types/True
                                          (enum
                                            enum
                                            (value-repr 0 0 0)
                                            2))
                                        (app
                                          (con
                                            bootstrap/example/example3/Node
                                            (as-cons
                                              as-list
                                              (value-repr 1 3 8)
                                              bootstrap/example/example3/Leaf
                                              none
                                              1))
                                          (var lchild)
                                          (var k)
                                          (var value)
                                          (var rchild)))))
                                  (branch
                                    ((pat-con
                                        std/core/types/False
                                        ()
                                        (enum enum (value-repr 0 0 0) 1)
                                        ()))
                                    ((guard
                                        (con
                                          std/core/types/True
                                          (enum
                                            enum
                                            (value-repr 0 0 0)
                                            2))
                                        (app
                                          (con
                                            bootstrap/example/example3/Node
                                            (as-cons
                                              as-list
                                              (value-repr 1 3 8)
                                              bootstrap/example/example3/Leaf
                                              none
                                              1))
                                          (var lchild)
                                          (var key)
                                          (var value)
                                          (var rchild)))))))))))))))
              (branch
                ((pat-con
                    bootstrap/example/example3/Leaf
                    ()
                    (singleton
                      as-list
                      (value-repr 0 0 0)
                      2)
                    ()))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    (con
                      bootstrap/example/example3/Leaf
                      (singleton
                        as-list
                        (value-repr 0 0 0)
                        2))))))))
        (def-fun () (fip (at-most 0)))))
    (rec
      (def
        bootstrap/example/example3/show
        (fun
          ((t
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (tcon std/core/types/string))
        (lam
          ((t
              (tcon
                bootstrap/example/example3/tree)))
          (tcon std/core/types/total)
          (case
            ((var t))
            ((branch
                ((pat-con
                    bootstrap/example/example3/Node
                    ((pat-var lchild pat-wild)
                      (pat-var k pat-wild)
                      (pat-var v pat-wild)
                      (pat-var rchild pat-wild))
                    (as-cons
                      as-list
                      (value-repr 1 3 8)
                      bootstrap/example/example3/Leaf
                      none
                      1)
                    ((tcon
                        bootstrap/example/example3/tree)
                      (tcon std/core/types/int)
                      (tcon std/core/types/bool)
                      (tcon
                        bootstrap/example/example3/tree))))
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
                            ((x
                                (tcon std/core/types/string))
                              (y
                                (tcon std/core/types/string)))
                            (tcon std/core/types/total)
                            (tcon std/core/types/string))
                          (fun
                            ((x
                                (tcon std/core/types/string))
                              (y
                                (tcon std/core/types/string)))
                            (tcon std/core/types/total)
                            (tcon std/core/types/string)))
                        (var std/core/types/(++)))
                      "Node("
                      (app
                        (app
                          (type-app
                            (var std/core/types/@open)
                            (tcon std/core/types/total)
                            (tcon std/core/types/total)
                            (fun
                              ((x
                                  (tcon std/core/types/string))
                                (y
                                  (tcon std/core/types/string)))
                              (tcon std/core/types/total)
                              (tcon std/core/types/string))
                            (fun
                              ((x
                                  (tcon std/core/types/string))
                                (y
                                  (tcon std/core/types/string)))
                              (tcon std/core/types/total)
                              (tcon std/core/types/string)))
                          (var std/core/types/(++)))
                        (app
                          (app
                            (type-app
                              (var std/core/types/@open)
                              (tcon std/core/types/total)
                              (tcon std/core/types/total)
                              (fun
                                ((t
                                    (tcon
                                      bootstrap/example/example3/tree)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/string))
                              (fun
                                ((t
                                    (tcon
                                      bootstrap/example/example3/tree)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/string)))
                            (var
                              bootstrap/example/example3/show))
                          (var lchild))
                        (app
                          (app
                            (type-app
                              (var std/core/types/@open)
                              (tcon std/core/types/total)
                              (tcon std/core/types/total)
                              (fun
                                ((x
                                    (tcon std/core/types/string))
                                  (y
                                    (tcon std/core/types/string)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/string))
                              (fun
                                ((x
                                    (tcon std/core/types/string))
                                  (y
                                    (tcon std/core/types/string)))
                                (tcon std/core/types/total)
                                (tcon std/core/types/string)))
                            (var std/core/types/(++)))
                          ", "
                          (app
                            (app
                              (type-app
                                (var std/core/types/@open)
                                (tcon std/core/types/total)
                                (tcon std/core/types/total)
                                (fun
                                  ((x
                                      (tcon std/core/types/string))
                                    (y
                                      (tcon std/core/types/string)))
                                  (tcon std/core/types/total)
                                  (tcon std/core/types/string))
                                (fun
                                  ((x
                                      (tcon std/core/types/string))
                                    (y
                                      (tcon std/core/types/string)))
                                  (tcon std/core/types/total)
                                  (tcon std/core/types/string)))
                              (var std/core/types/(++)))
                            (app
                              (app
                                (type-app
                                  (var std/core/types/@open)
                                  (tcon std/core/types/total)
                                  (tcon std/core/types/total)
                                  (fun
                                    ((i (tcon std/core/types/int)))
                                    (tcon std/core/types/total)
                                    (tcon std/core/types/string))
                                  (fun
                                    ((i (tcon std/core/types/int)))
                                    (tcon std/core/types/total)
                                    (tcon std/core/types/string)))
                                (var std/core/int/show))
                              (var k))
                            (app
                              (app
                                (type-app
                                  (var std/core/types/@open)
                                  (tcon std/core/types/total)
                                  (tcon std/core/types/total)
                                  (fun
                                    ((x
                                        (tcon std/core/types/string))
                                      (y
                                        (tcon std/core/types/string)))
                                    (tcon std/core/types/total)
                                    (tcon std/core/types/string))
                                  (fun
                                    ((x
                                        (tcon std/core/types/string))
                                      (y
                                        (tcon std/core/types/string)))
                                    (tcon std/core/types/total)
                                    (tcon std/core/types/string)))
                                (var std/core/types/(++)))
                              ", "
                              (app
                                (app
                                  (type-app
                                    (var std/core/types/@open)
                                    (tcon std/core/types/total)
                                    (tcon std/core/types/total)
                                    (fun
                                      ((x
                                          (tcon std/core/types/string))
                                        (y
                                          (tcon std/core/types/string)))
                                      (tcon std/core/types/total)
                                      (tcon std/core/types/string))
                                    (fun
                                      ((x
                                          (tcon std/core/types/string))
                                        (y
                                          (tcon std/core/types/string)))
                                      (tcon std/core/types/total)
                                      (tcon std/core/types/string)))
                                  (var std/core/types/(++)))
                                (app
                                  (app
                                    (type-app
                                      (var std/core/types/@open)
                                      (tcon std/core/types/total)
                                      (tcon std/core/types/total)
                                      (fun
                                        ((b (tcon std/core/types/bool)))
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/string))
                                      (fun
                                        ((b (tcon std/core/types/bool)))
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/string)))
                                    (var std/core/bool/show))
                                  (var v))
                                (app
                                  (app
                                    (type-app
                                      (var std/core/types/@open)
                                      (tcon std/core/types/total)
                                      (tcon std/core/types/total)
                                      (fun
                                        ((x
                                            (tcon std/core/types/string))
                                          (y
                                            (tcon std/core/types/string)))
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/string))
                                      (fun
                                        ((x
                                            (tcon std/core/types/string))
                                          (y
                                            (tcon std/core/types/string)))
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/string)))
                                    (var std/core/types/(++)))
                                  ", "
                                  (app
                                    (app
                                      (type-app
                                        (var std/core/types/@open)
                                        (tcon std/core/types/total)
                                        (tcon std/core/types/total)
                                        (fun
                                          ((x
                                              (tcon std/core/types/string))
                                            (y
                                              (tcon std/core/types/string)))
                                          (tcon std/core/types/total)
                                          (tcon std/core/types/string))
                                        (fun
                                          ((x
                                              (tcon std/core/types/string))
                                            (y
                                              (tcon std/core/types/string)))
                                          (tcon std/core/types/total)
                                          (tcon std/core/types/string)))
                                      (var std/core/types/(++)))
                                    (app
                                      (app
                                        (type-app
                                          (var std/core/types/@open)
                                          (tcon std/core/types/total)
                                          (tcon std/core/types/total)
                                          (fun
                                            ((t
                                                (tcon
                                                  bootstrap/example/example3/tree)))
                                            (tcon std/core/types/total)
                                            (tcon std/core/types/string))
                                          (fun
                                            ((t
                                                (tcon
                                                  bootstrap/example/example3/tree)))
                                            (tcon std/core/types/total)
                                            (tcon std/core/types/string)))
                                        (var
                                          bootstrap/example/example3/show))
                                      (var rchild))
                                    ")")))))))))))
              (branch
                ((pat-con
                    bootstrap/example/example3/Leaf
                    ()
                    (singleton
                      as-list
                      (value-repr 0 0 0)
                      2)
                    ()))
                ((guard
                    (con
                      std/core/types/True
                      (enum
                        enum
                        (value-repr 0 0 0)
                        2))
                    "Leaf"))))))
        (def-fun () (no-fip False))))
    (non-rec
      (def
        bootstrap/example/example3/main
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
/*end of
(S-expressions)
*/

/*
initial
(S-expressions)
*/
(core
  ()
  ((non-rec
      (def
        bootstrap/example/example3/@main/@expr
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
                bootstrap/example/example3/main))))
        (def-fun () (no-fip False))))))
/*end of
(S-expressions)
*/

/*
initial
(S-expressions)
*/
(core
  ()
  ((non-rec
      (def
        bootstrap/example/example3/@main/@expr
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
                bootstrap/example/example3/main))))
        (def-fun () (no-fip False))))
    (non-rec
      (def
        bootstrap/example/example3/@main/@main
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
                bootstrap/example/example3/@main/@expr))))
        (def-fun () (no-fip False))))))
/*end of
(S-expressions)
*/

[6n