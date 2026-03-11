
/* -----------------
initial
 (S-expressions) --------------- */
(def
  bootstrap/example/example3/is-node
  (fun
    ((tree
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (tcon (std/core/types/bool V)))
  (lam
    ((tree
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (tree
            (tcon
              (bootstrap/example/example3/tree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/Node
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/tree
                      V))))
              pat-wild
              pat-wild
              pat-wild
              pat-wild
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/True
                  (tcon
                    (std/core/types/bool V)))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/Leaf
                (tcon
                  (bootstrap/example/example3/tree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/False
                  (tcon
                    (std/core/types/bool
                      V)))))))))))
(def
  bootstrap/example/example3/is-leaf
  (fun
    ((tree
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (tcon (std/core/types/bool V)))
  (lam
    ((tree
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (tree
            (tcon
              (bootstrap/example/example3/tree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/Leaf
                (tcon
                  (bootstrap/example/example3/tree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/True
                  (tcon
                    (std/core/types/bool V)))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/Node
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/tree
                      V))))
              pat-wild
              pat-wild
              pat-wild
              pat-wild
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/False
                  (tcon
                    (std/core/types/bool
                      V)))))))))))
(def
  bootstrap/example/example3/is-myNode
  (fun
    ((mytree
        (tcon
          (bootstrap/example/example3/mytree
            V))))
    (tcon (std/core/types/total E))
    (tcon (std/core/types/bool V)))
  (lam
    ((mytree
        (tcon
          (bootstrap/example/example3/mytree
            V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (mytree
            (tcon
              (bootstrap/example/example3/mytree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/MyNode
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/mytree
                      V))))
              pat-wild
              pat-wild
              pat-wild
              pat-wild
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/True
                  (tcon
                    (std/core/types/bool V)))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/MyLeaf
                (tcon
                  (bootstrap/example/example3/mytree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/False
                  (tcon
                    (std/core/types/bool
                      V)))))))))))
(def
  bootstrap/example/example3/is-myLeaf
  (fun
    ((mytree
        (tcon
          (bootstrap/example/example3/mytree
            V))))
    (tcon (std/core/types/total E))
    (tcon (std/core/types/bool V)))
  (lam
    ((mytree
        (tcon
          (bootstrap/example/example3/mytree
            V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (mytree
            (tcon
              (bootstrap/example/example3/mytree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/MyLeaf
                (tcon
                  (bootstrap/example/example3/mytree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/True
                  (tcon
                    (std/core/types/bool V)))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/MyNode
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/mytree
                      V))))
              pat-wild
              pat-wild
              pat-wild
              pat-wild
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (std/core/types/False
                  (tcon
                    (std/core/types/bool
                      V)))))))))))
(def
  bootstrap/example/example3/replace
  (fun
    ((t
        (tcon
          (bootstrap/example/example3/tree
            V)))
      (key
        (tcon (std/core/types/int V)))
      (value
        (tcon (std/core/types/bool V))))
    (tcon (std/core/types/total E))
    (tcon
      (bootstrap/example/example3/mytree
        V)))
  (lam
    ((t
        (tcon
          (bootstrap/example/example3/tree
            V)))
      (key
        (tcon (std/core/types/int V)))
      (value
        (tcon (std/core/types/bool V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (t
            (tcon
              (bootstrap/example/example3/tree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/Node
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/tree
                      V))))
              (pat-var
                (lchild
                  (tcon
                    (bootstrap/example/example3/tree
                      V)))
                pat-wild)
              (pat-var
                (k
                  (tcon (std/core/types/int V)))
                pat-wild)
              pat-wild
              (pat-var
                (rchild
                  (tcon
                    (bootstrap/example/example3/tree
                      V)))
                pat-wild)
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (case
                ((app
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
                                      ((x
                                          (tcon (std/core/types/int V)))
                                        (y
                                          (tcon (std/core/types/int V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/bool V)))))
                                (tcon (std/core/types/total E))
                                (fun
                                  ((x
                                      (tcon (std/core/types/int V)))
                                    (y
                                      (tcon (std/core/types/int V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/bool V)))))))
                        (tcon (std/core/types/total E))
                        (tcon (std/core/types/total E))
                        (fun
                          ((x
                              (tcon (std/core/types/int V)))
                            (y
                              (tcon (std/core/types/int V))))
                          (tcon (std/core/types/total E))
                          (tcon (std/core/types/bool V)))
                        (fun
                          ((x
                              (tcon (std/core/types/int V)))
                            (y
                              (tcon (std/core/types/int V))))
                          (tcon (std/core/types/total E))
                          (tcon (std/core/types/bool V))))
                      (var
                        (std/core/int/(==)
                          (fun
                            ((x
                                (tcon (std/core/types/int V)))
                              (y
                                (tcon (std/core/types/int V))))
                            (tcon (std/core/types/total E))
                            (tcon
                              (std/core/types/bool V))))))
                    (var
                      (k
                        (tcon (std/core/types/int V))))
                    (var
                      (key
                        (tcon
                          (std/core/types/int V))))))
                ((branch
                    ((pat-con
                        (std/core/types/True
                          (tcon
                            (std/core/types/bool V)))))
                    ((guard
                        (con
                          (std/core/types/True
                            (tcon (std/core/types/bool V))))
                        (app
                          (con
                            (bootstrap/example/example3/MyNode
                              (fun
                                ((lchild
                                    (tcon
                                      (bootstrap/example/example3/tree
                                        V)))
                                  (key
                                    (tcon (std/core/types/int V)))
                                  (value
                                    (tcon (std/core/types/bool V)))
                                  (rchild
                                    (tcon
                                      (bootstrap/example/example3/tree
                                        V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (bootstrap/example/example3/mytree
                                    V)))))
                          (var
                            (lchild
                              (tcon
                                (bootstrap/example/example3/tree
                                  V))))
                          (var
                            (k
                              (tcon (std/core/types/int V))))
                          (var
                            (value
                              (tcon (std/core/types/bool V))))
                          (var
                            (rchild
                              (tcon
                                (bootstrap/example/example3/tree
                                  V))))))))
                  (branch
                    ((pat-con
                        (std/core/types/False
                          (tcon
                            (std/core/types/bool V)))))
                    ((guard
                        (con
                          (std/core/types/True
                            (tcon (std/core/types/bool V))))
                        (case
                          ((app
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
                                                ((x
                                                    (tcon
                                                      (std/core/types/int V)))
                                                  (y
                                                    (tcon
                                                      (std/core/types/int V))))
                                                (tcon (std/core/types/total E))
                                                (tcon
                                                  (std/core/types/bool V)))))
                                          (tcon (std/core/types/total E))
                                          (fun
                                            ((x
                                                (tcon (std/core/types/int V)))
                                              (y
                                                (tcon (std/core/types/int V))))
                                            (tcon (std/core/types/total E))
                                            (tcon
                                              (std/core/types/bool V)))))))
                                  (tcon (std/core/types/total E))
                                  (tcon (std/core/types/total E))
                                  (fun
                                    ((x
                                        (tcon (std/core/types/int V)))
                                      (y
                                        (tcon (std/core/types/int V))))
                                    (tcon (std/core/types/total E))
                                    (tcon (std/core/types/bool V)))
                                  (fun
                                    ((x
                                        (tcon (std/core/types/int V)))
                                      (y
                                        (tcon (std/core/types/int V))))
                                    (tcon (std/core/types/total E))
                                    (tcon (std/core/types/bool V))))
                                (var
                                  (std/core/int/(<)
                                    (fun
                                      ((x
                                          (tcon (std/core/types/int V)))
                                        (y
                                          (tcon (std/core/types/int V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/bool V))))))
                              (var
                                (k
                                  (tcon (std/core/types/int V))))
                              (var
                                (key
                                  (tcon
                                    (std/core/types/int V))))))
                          ((branch
                              ((pat-con
                                  (std/core/types/True
                                    (tcon
                                      (std/core/types/bool V)))))
                              ((guard
                                  (con
                                    (std/core/types/True
                                      (tcon (std/core/types/bool V))))
                                  (app
                                    (con
                                      (bootstrap/example/example3/MyNode
                                        (fun
                                          ((lchild
                                              (tcon
                                                (bootstrap/example/example3/tree
                                                  V)))
                                            (key
                                              (tcon (std/core/types/int V)))
                                            (value
                                              (tcon (std/core/types/bool V)))
                                            (rchild
                                              (tcon
                                                (bootstrap/example/example3/tree
                                                  V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (bootstrap/example/example3/mytree
                                              V)))))
                                    (var
                                      (lchild
                                        (tcon
                                          (bootstrap/example/example3/tree
                                            V))))
                                    (var
                                      (k
                                        (tcon (std/core/types/int V))))
                                    (var
                                      (value
                                        (tcon (std/core/types/bool V))))
                                    (var
                                      (rchild
                                        (tcon
                                          (bootstrap/example/example3/tree
                                            V))))))))
                            (branch
                              ((pat-con
                                  (std/core/types/False
                                    (tcon
                                      (std/core/types/bool V)))))
                              ((guard
                                  (con
                                    (std/core/types/True
                                      (tcon (std/core/types/bool V))))
                                  (app
                                    (con
                                      (bootstrap/example/example3/MyNode
                                        (fun
                                          ((lchild
                                              (tcon
                                                (bootstrap/example/example3/tree
                                                  V)))
                                            (key
                                              (tcon (std/core/types/int V)))
                                            (value
                                              (tcon (std/core/types/bool V)))
                                            (rchild
                                              (tcon
                                                (bootstrap/example/example3/tree
                                                  V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (bootstrap/example/example3/mytree
                                              V)))))
                                    (var
                                      (lchild
                                        (tcon
                                          (bootstrap/example/example3/tree
                                            V))))
                                    (var
                                      (key
                                        (tcon (std/core/types/int V))))
                                    (var
                                      (value
                                        (tcon (std/core/types/bool V))))
                                    (var
                                      (rchild
                                        (tcon
                                          (bootstrap/example/example3/tree
                                            V))))))))))))))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/Leaf
                (tcon
                  (bootstrap/example/example3/tree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              (con
                (bootstrap/example/example3/MyLeaf
                  (tcon
                    (bootstrap/example/example3/mytree
                      V)))))))))))
(def
  bootstrap/example/example3/show
  (fun
    ((t
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (tcon
      (std/core/types/string V)))
  (lam
    ((t
        (tcon
          (bootstrap/example/example3/tree
            V))))
    (tcon (std/core/types/total E))
    (case
      ((var
          (t
            (tcon
              (bootstrap/example/example3/tree
                V)))))
      ((branch
          ((pat-con
              (bootstrap/example/example3/Node
                (fun
                  ((lchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V)))
                    (key
                      (tcon (std/core/types/int V)))
                    (value
                      (tcon (std/core/types/bool V)))
                    (rchild
                      (tcon
                        (bootstrap/example/example3/tree
                          V))))
                  (tcon (std/core/types/total E))
                  (tcon
                    (bootstrap/example/example3/tree
                      V))))
              (pat-var
                (lchild
                  (tcon
                    (bootstrap/example/example3/tree
                      V)))
                pat-wild)
              (pat-var
                (k
                  (tcon (std/core/types/int V)))
                pat-wild)
              (pat-var
                (v
                  (tcon (std/core/types/bool V)))
                pat-wild)
              (pat-var
                (rchild
                  (tcon
                    (bootstrap/example/example3/tree
                      V)))
                pat-wild)
              (tcon
                (bootstrap/example/example3/tree
                  V))
              (tcon (std/core/types/int V))
              (tcon (std/core/types/bool V))
              (tcon
                (bootstrap/example/example3/tree
                  V))))
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
                                  ((x
                                      (tcon
                                        (std/core/types/string V)))
                                    (y
                                      (tcon
                                        (std/core/types/string V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V)))))
                            (tcon (std/core/types/total E))
                            (fun
                              ((x
                                  (tcon
                                    (std/core/types/string V)))
                                (y
                                  (tcon
                                    (std/core/types/string V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V)))))))
                    (tcon (std/core/types/total E))
                    (tcon (std/core/types/total E))
                    (fun
                      ((x
                          (tcon
                            (std/core/types/string V)))
                        (y
                          (tcon
                            (std/core/types/string V))))
                      (tcon (std/core/types/total E))
                      (tcon
                        (std/core/types/string V)))
                    (fun
                      ((x
                          (tcon
                            (std/core/types/string V)))
                        (y
                          (tcon
                            (std/core/types/string V))))
                      (tcon (std/core/types/total E))
                      (tcon
                        (std/core/types/string V))))
                  (var
                    (std/core/types/(++)
                      (fun
                        ((x
                            (tcon
                              (std/core/types/string V)))
                          (y
                            (tcon
                              (std/core/types/string V))))
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/string V))))))
                "Node("
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
                                    ((x
                                        (tcon
                                          (std/core/types/string V)))
                                      (y
                                        (tcon
                                          (std/core/types/string V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V)))))
                              (tcon (std/core/types/total E))
                              (fun
                                ((x
                                    (tcon
                                      (std/core/types/string V)))
                                  (y
                                    (tcon
                                      (std/core/types/string V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (std/core/types/string V)))))))
                      (tcon (std/core/types/total E))
                      (tcon (std/core/types/total E))
                      (fun
                        ((x
                            (tcon
                              (std/core/types/string V)))
                          (y
                            (tcon
                              (std/core/types/string V))))
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/string V)))
                      (fun
                        ((x
                            (tcon
                              (std/core/types/string V)))
                          (y
                            (tcon
                              (std/core/types/string V))))
                        (tcon (std/core/types/total E))
                        (tcon
                          (std/core/types/string V))))
                    (var
                      (std/core/types/(++)
                        (fun
                          ((x
                              (tcon
                                (std/core/types/string V)))
                            (y
                              (tcon
                                (std/core/types/string V))))
                          (tcon (std/core/types/total E))
                          (tcon
                            (std/core/types/string V))))))
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
                                      ((t
                                          (tcon
                                            (bootstrap/example/example3/tree
                                              V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V)))))
                                (tcon (std/core/types/total E))
                                (fun
                                  ((t
                                      (tcon
                                        (bootstrap/example/example3/tree
                                          V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V)))))))
                        (tcon (std/core/types/total E))
                        (tcon (std/core/types/total E))
                        (fun
                          ((t
                              (tcon
                                (bootstrap/example/example3/tree
                                  V))))
                          (tcon (std/core/types/total E))
                          (tcon
                            (std/core/types/string V)))
                        (fun
                          ((t
                              (tcon
                                (bootstrap/example/example3/tree
                                  V))))
                          (tcon (std/core/types/total E))
                          (tcon
                            (std/core/types/string V))))
                      (var
                        (bootstrap/example/example3/show
                          (fun
                            ((t
                                (tcon
                                  (bootstrap/example/example3/tree
                                    V))))
                            (tcon (std/core/types/total E))
                            (tcon
                              (std/core/types/string V))))))
                    (var
                      (lchild
                        (tcon
                          (bootstrap/example/example3/tree
                            V)))))
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
                                      ((x
                                          (tcon
                                            (std/core/types/string V)))
                                        (y
                                          (tcon
                                            (std/core/types/string V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V)))))
                                (tcon (std/core/types/total E))
                                (fun
                                  ((x
                                      (tcon
                                        (std/core/types/string V)))
                                    (y
                                      (tcon
                                        (std/core/types/string V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V)))))))
                        (tcon (std/core/types/total E))
                        (tcon (std/core/types/total E))
                        (fun
                          ((x
                              (tcon
                                (std/core/types/string V)))
                            (y
                              (tcon
                                (std/core/types/string V))))
                          (tcon (std/core/types/total E))
                          (tcon
                            (std/core/types/string V)))
                        (fun
                          ((x
                              (tcon
                                (std/core/types/string V)))
                            (y
                              (tcon
                                (std/core/types/string V))))
                          (tcon (std/core/types/total E))
                          (tcon
                            (std/core/types/string V))))
                      (var
                        (std/core/types/(++)
                          (fun
                            ((x
                                (tcon
                                  (std/core/types/string V)))
                              (y
                                (tcon
                                  (std/core/types/string V))))
                            (tcon (std/core/types/total E))
                            (tcon
                              (std/core/types/string V))))))
                    ", "
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
                                        ((x
                                            (tcon
                                              (std/core/types/string V)))
                                          (y
                                            (tcon
                                              (std/core/types/string V))))
                                        (tcon (std/core/types/total E))
                                        (tcon
                                          (std/core/types/string V)))))
                                  (tcon (std/core/types/total E))
                                  (fun
                                    ((x
                                        (tcon
                                          (std/core/types/string V)))
                                      (y
                                        (tcon
                                          (std/core/types/string V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V)))))))
                          (tcon (std/core/types/total E))
                          (tcon (std/core/types/total E))
                          (fun
                            ((x
                                (tcon
                                  (std/core/types/string V)))
                              (y
                                (tcon
                                  (std/core/types/string V))))
                            (tcon (std/core/types/total E))
                            (tcon
                              (std/core/types/string V)))
                          (fun
                            ((x
                                (tcon
                                  (std/core/types/string V)))
                              (y
                                (tcon
                                  (std/core/types/string V))))
                            (tcon (std/core/types/total E))
                            (tcon
                              (std/core/types/string V))))
                        (var
                          (std/core/types/(++)
                            (fun
                              ((x
                                  (tcon
                                    (std/core/types/string V)))
                                (y
                                  (tcon
                                    (std/core/types/string V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V))))))
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
                                          ((i
                                              (tcon (std/core/types/int V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (std/core/types/string V)))))
                                    (tcon (std/core/types/total E))
                                    (fun
                                      ((i
                                          (tcon (std/core/types/int V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V)))))))
                            (tcon (std/core/types/total E))
                            (tcon (std/core/types/total E))
                            (fun
                              ((i
                                  (tcon (std/core/types/int V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V)))
                            (fun
                              ((i
                                  (tcon (std/core/types/int V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V))))
                          (var
                            (std/core/int/show
                              (fun
                                ((i
                                    (tcon (std/core/types/int V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (std/core/types/string V))))))
                        (var
                          (k
                            (tcon (std/core/types/int V)))))
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
                                          ((x
                                              (tcon
                                                (std/core/types/string V)))
                                            (y
                                              (tcon
                                                (std/core/types/string V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (std/core/types/string V)))))
                                    (tcon (std/core/types/total E))
                                    (fun
                                      ((x
                                          (tcon
                                            (std/core/types/string V)))
                                        (y
                                          (tcon
                                            (std/core/types/string V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V)))))))
                            (tcon (std/core/types/total E))
                            (tcon (std/core/types/total E))
                            (fun
                              ((x
                                  (tcon
                                    (std/core/types/string V)))
                                (y
                                  (tcon
                                    (std/core/types/string V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V)))
                            (fun
                              ((x
                                  (tcon
                                    (std/core/types/string V)))
                                (y
                                  (tcon
                                    (std/core/types/string V))))
                              (tcon (std/core/types/total E))
                              (tcon
                                (std/core/types/string V))))
                          (var
                            (std/core/types/(++)
                              (fun
                                ((x
                                    (tcon
                                      (std/core/types/string V)))
                                  (y
                                    (tcon
                                      (std/core/types/string V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (std/core/types/string V))))))
                        ", "
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
                                            ((x
                                                (tcon
                                                  (std/core/types/string V)))
                                              (y
                                                (tcon
                                                  (std/core/types/string V))))
                                            (tcon (std/core/types/total E))
                                            (tcon
                                              (std/core/types/string V)))))
                                      (tcon (std/core/types/total E))
                                      (fun
                                        ((x
                                            (tcon
                                              (std/core/types/string V)))
                                          (y
                                            (tcon
                                              (std/core/types/string V))))
                                        (tcon (std/core/types/total E))
                                        (tcon
                                          (std/core/types/string V)))))))
                              (tcon (std/core/types/total E))
                              (tcon (std/core/types/total E))
                              (fun
                                ((x
                                    (tcon
                                      (std/core/types/string V)))
                                  (y
                                    (tcon
                                      (std/core/types/string V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (std/core/types/string V)))
                              (fun
                                ((x
                                    (tcon
                                      (std/core/types/string V)))
                                  (y
                                    (tcon
                                      (std/core/types/string V))))
                                (tcon (std/core/types/total E))
                                (tcon
                                  (std/core/types/string V))))
                            (var
                              (std/core/types/(++)
                                (fun
                                  ((x
                                      (tcon
                                        (std/core/types/string V)))
                                    (y
                                      (tcon
                                        (std/core/types/string V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V))))))
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
                                              ((b
                                                  (tcon
                                                    (std/core/types/bool V))))
                                              (tcon (std/core/types/total E))
                                              (tcon
                                                (std/core/types/string V)))))
                                        (tcon (std/core/types/total E))
                                        (fun
                                          ((b
                                              (tcon (std/core/types/bool V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (std/core/types/string V)))))))
                                (tcon (std/core/types/total E))
                                (tcon (std/core/types/total E))
                                (fun
                                  ((b
                                      (tcon (std/core/types/bool V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V)))
                                (fun
                                  ((b
                                      (tcon (std/core/types/bool V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V))))
                              (var
                                (std/core/bool/show
                                  (fun
                                    ((b
                                        (tcon (std/core/types/bool V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V))))))
                            (var
                              (v
                                (tcon
                                  (std/core/types/bool V)))))
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
                                              ((x
                                                  (tcon
                                                    (std/core/types/string V)))
                                                (y
                                                  (tcon
                                                    (std/core/types/string V))))
                                              (tcon (std/core/types/total E))
                                              (tcon
                                                (std/core/types/string V)))))
                                        (tcon (std/core/types/total E))
                                        (fun
                                          ((x
                                              (tcon
                                                (std/core/types/string V)))
                                            (y
                                              (tcon
                                                (std/core/types/string V))))
                                          (tcon (std/core/types/total E))
                                          (tcon
                                            (std/core/types/string V)))))))
                                (tcon (std/core/types/total E))
                                (tcon (std/core/types/total E))
                                (fun
                                  ((x
                                      (tcon
                                        (std/core/types/string V)))
                                    (y
                                      (tcon
                                        (std/core/types/string V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V)))
                                (fun
                                  ((x
                                      (tcon
                                        (std/core/types/string V)))
                                    (y
                                      (tcon
                                        (std/core/types/string V))))
                                  (tcon (std/core/types/total E))
                                  (tcon
                                    (std/core/types/string V))))
                              (var
                                (std/core/types/(++)
                                  (fun
                                    ((x
                                        (tcon
                                          (std/core/types/string V)))
                                      (y
                                        (tcon
                                          (std/core/types/string V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V))))))
                            ", "
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
                                                ((x
                                                    (tcon
                                                      (std/core/types/string
                                                        V)))
                                                  (y
                                                    (tcon
                                                      (std/core/types/string
                                                        V))))
                                                (tcon (std/core/types/total E))
                                                (tcon
                                                  (std/core/types/string V)))))
                                          (tcon (std/core/types/total E))
                                          (fun
                                            ((x
                                                (tcon
                                                  (std/core/types/string V)))
                                              (y
                                                (tcon
                                                  (std/core/types/string V))))
                                            (tcon (std/core/types/total E))
                                            (tcon
                                              (std/core/types/string V)))))))
                                  (tcon (std/core/types/total E))
                                  (tcon (std/core/types/total E))
                                  (fun
                                    ((x
                                        (tcon
                                          (std/core/types/string V)))
                                      (y
                                        (tcon
                                          (std/core/types/string V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V)))
                                  (fun
                                    ((x
                                        (tcon
                                          (std/core/types/string V)))
                                      (y
                                        (tcon
                                          (std/core/types/string V))))
                                    (tcon (std/core/types/total E))
                                    (tcon
                                      (std/core/types/string V))))
                                (var
                                  (std/core/types/(++)
                                    (fun
                                      ((x
                                          (tcon
                                            (std/core/types/string V)))
                                        (y
                                          (tcon
                                            (std/core/types/string V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V))))))
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
                                                  ((t
                                                      (tcon
                                                        (bootstrap/example/example3/tree
                                                          V))))
                                                  (tcon
                                                    (std/core/types/total E))
                                                  (tcon
                                                    (std/core/types/string
                                                      V)))))
                                            (tcon (std/core/types/total E))
                                            (fun
                                              ((t
                                                  (tcon
                                                    (bootstrap/example/example3/tree
                                                      V))))
                                              (tcon (std/core/types/total E))
                                              (tcon
                                                (std/core/types/string V)))))))
                                    (tcon (std/core/types/total E))
                                    (tcon (std/core/types/total E))
                                    (fun
                                      ((t
                                          (tcon
                                            (bootstrap/example/example3/tree
                                              V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V)))
                                    (fun
                                      ((t
                                          (tcon
                                            (bootstrap/example/example3/tree
                                              V))))
                                      (tcon (std/core/types/total E))
                                      (tcon
                                        (std/core/types/string V))))
                                  (var
                                    (bootstrap/example/example3/show
                                      (fun
                                        ((t
                                            (tcon
                                              (bootstrap/example/example3/tree
                                                V))))
                                        (tcon (std/core/types/total E))
                                        (tcon
                                          (std/core/types/string V))))))
                                (var
                                  (rchild
                                    (tcon
                                      (bootstrap/example/example3/tree
                                        V)))))
                              ")")))))))))))
        (branch
          ((pat-con
              (bootstrap/example/example3/Leaf
                (tcon
                  (bootstrap/example/example3/tree
                    V)))))
          ((guard
              (con
                (std/core/types/True
                  (tcon (std/core/types/bool V))))
              "Leaf")))))))
(def
  bootstrap/example/example3/main
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
  bootstrap/example/example3/@main/@expr
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
          (bootstrap/example/example3/main
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
  bootstrap/example/example3/@main/@expr
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
          (bootstrap/example/example3/main
            (fun
              ()
              (tcon (std/core/types/total E))
              (tcon
                (std/core/types/unit V)))))))))
(def
  bootstrap/example/example3/@main/@main
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
          (bootstrap/example/example3/@main/@expr
            (fun
              ()
              (tcon (std/core/types/total E))
              (tcon
                (std/core/types/unit V)))))))))
/* end of initial (S-expressions) --------------- */

[6n