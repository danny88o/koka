("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-red-black-fp/color"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-red-black-fp/Red"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-red-black-fp/Black"
              ()
              "nothing"))
          "False"
          ("value" ("value-repr" "1" "0" "1")))))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-red-black-fp/tree"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-red-black-fp/Node"
              (("color"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/color"))
                ("lchild"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
                ("key" ("tcon" "std/core/types/int32"))
                ("value" ("tcon" "std/core/types/bool"))
                ("rchild"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-red-black-fp/Leaf"
              ()
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-red-black-fp/accum"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-red-black-fp/Done"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-red-black-fp/NodeL"
              (("color"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/color"))
                ("lchild"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum"))
                ("key" ("tcon" "std/core/types/int32"))
                ("value" ("tcon" "std/core/types/bool"))
                ("rchild"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-red-black-fp/NodeR"
              (("color"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/color"))
                ("lchild"
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
                ("key" ("tcon" "std/core/types/int32"))
                ("value" ("tcon" "std/core/types/bool"))
                ("rchild"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum")))
              "nothing"))
          "True"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-red"
        ("fun"
          (("color"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/color")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("color"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/color")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("color"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/color"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Red"
                    ()
                    ("enum"
                      "bootstrap/validation/example/fp-red-black-fp/color"
                      "enum"
                      ("value-repr" "0" "0" "0")
                      "1")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Black"
                    ()
                    ("enum"
                      "bootstrap/validation/example/fp-red-black-fp/color"
                      "enum"
                      ("value-repr" "0" "0" "0")
                      "2")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-black"
        ("fun"
          (("color"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/color")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("color"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/color")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("color"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/color"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Black"
                    ()
                    ("enum"
                      "bootstrap/validation/example/fp-red-black-fp/color"
                      "enum"
                      ("value-repr" "0" "0" "0")
                      "2")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Red"
                    ()
                    ("enum"
                      "bootstrap/validation/example/fp-red-black-fp/color"
                      "enum"
                      ("value-repr" "0" "0" "0")
                      "1")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-node"
        ("fun"
          (("tree"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "6" "2" "8")
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      "none"
                      "1")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "0" "0" "0")
                      "2")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-leaf"
        ("fun"
          (("tree"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "0" "0" "0")
                      "2")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "6" "2" "8")
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      "none"
                      "1")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/#tree/is-red"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Node"
                    (("pat-con"
                        "bootstrap/validation/example/fp-red-black-fp/Red"
                        ()
                        ("enum"
                          "bootstrap/validation/example/fp-red-black-fp/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      "pat-wild"
                      "pat-wild"
                      "pat-wild"
                      "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "6" "2" "8")
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      "none"
                      "1")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                ("pat-wild")
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-done"
        ("fun"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("accum"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Done"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "0" "0" "0")
                      "1")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                ("pat-wild")
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-nodeL"
        ("fun"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("accum"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeL"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                ("pat-wild")
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/is-nodeR"
        ("fun"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("accum"
              ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("accum"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeR"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "3")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                ("pat-wild")
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/set-black"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Node"
                    ("pat-wild"
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "6" "2" "8")
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      "none"
                      "1")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("con"
                        "bootstrap/validation/example/fp-red-black-fp/Node"
                        ("as-cons"
                          "bootstrap/validation/example/fp-red-black-fp/tree"
                          "as-list"
                          ("value-repr" "6" "2" "8")
                          "bootstrap/validation/example/fp-red-black-fp/Leaf"
                          "none"
                          "1"))
                      ("con"
                        "bootstrap/validation/example/fp-red-black-fp/Black"
                        ("enum"
                          "bootstrap/validation/example/fp-red-black-fp/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var"
                        ("l"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                      ("var" ("k" ("tcon" "std/core/types/int32")))
                      ("var" ("v" ("tcon" "std/core/types/bool")))
                      ("var"
                        ("r"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/tree")))))))
              ("branch"
                (("pat-var"
                    "t"
                    ("pat-con"
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-red-black-fp/tree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "2")
                      ())))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var"
                      ("t"
                        ("tcon"
                          "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/rebuild"
        ("fun"
          (("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum"))
            ("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
        ("lam"
          (("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum"))
            ("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("z"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeR"
                    (("pat-var" "c" "pat-wild")
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "z1" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "3")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("var"
                        ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                      ("var"
                        ("z1"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Node"
                          ("as-cons"
                            "bootstrap/validation/example/fp-red-black-fp/tree"
                            "as-list"
                            ("value-repr" "6" "2" "8")
                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                            "none"
                            "1"))
                        ("var"
                          ("c"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/color")))
                        ("var"
                          ("l"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int32")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("t"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeL"
                    (("pat-var" "c" "pat-wild")
                      ("pat-var" "z1" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("var"
                        ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                      ("var"
                        ("z1"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Node"
                          ("as-cons"
                            "bootstrap/validation/example/fp-red-black-fp/tree"
                            "as-list"
                            ("value-repr" "6" "2" "8")
                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                            "none"
                            "1"))
                        ("var"
                          ("c"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/color")))
                        ("var"
                          ("t"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int32")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Done"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "0" "0" "0")
                      "1")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var"
                      ("t"
                        ("tcon"
                          "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/balance"
        ("fun"
          (("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum"))
            ("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
        ("lam"
          (("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum"))
            ("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("z"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/accum"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeR"
                    (("pat-con"
                        "bootstrap/validation/example/fp-red-black-fp/Red"
                        ()
                        ("enum"
                          "bootstrap/validation/example/fp-red-black-fp/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var" "l1" "pat-wild")
                      ("pat-var" "k1" "pat-wild")
                      ("pat-var" "v1" "pat-wild")
                      ("pat-var" "z1" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "3")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("case"
                      (("var"
                          ("z1"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/accum"))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/NodeR"
                              ("pat-wild"
                                ("pat-var" "l2" "pat-wild")
                                ("pat-var" "k2" "pat-wild")
                                ("pat-var" "v2" "pat-wild")
                                ("pat-var" "z2" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "6" "2" "8")
                                "none"
                                "3")
                              (("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/color")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")
                                ("tcon" "std/core/types/int32")
                                ("tcon" "std/core/types/bool")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("case"
                                (("app"
                                    ("app"
                                      ("type-app"
                                        ("var"
                                          ("std/core/types/@open"
                                            ("forall"
                                              ("-3" "-4" "-1" "-2")
                                              ("fun"
                                                (("x"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("bootstrap/validation/example/fp-red-black-fp/#tree/is-red"
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("l2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/True"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "2")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/balance"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Red"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "1"))
                                            ("app"
                                              ("app"
                                                ("type-app"
                                                  ("var"
                                                    ("std/core/types/@open"
                                                      ("forall"
                                                        ("-3" "-4" "-1" "-2")
                                                        ("fun"
                                                          (("x"
                                                              ("fun"
                                                                (("t"
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/handled")
                                                        ("tcon"
                                                          "std/core/exn/exn"))
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-red-black-fp/set-black"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                              ("var"
                                                ("l2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("var"
                                              ("k2"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v2"
                                                ("tcon" "std/core/types/bool")))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Black"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "2"))
                                              ("var"
                                                ("l1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k1"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v1"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                  ("branch"
                                    (("pat-con"
                                        "std/core/types/False"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "1")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tcon" "std/core/types/total")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Black"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "2"))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Red"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "1"))
                                              ("var"
                                                ("l2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k2"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v2"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("l1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("var"
                                              ("k1"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v1"
                                                ("tcon" "std/core/types/bool")))
                                            ("var"
                                              ("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/NodeL"
                              ("pat-wild"
                                ("pat-var" "z2" "pat-wild")
                                ("pat-var" "k2" "pat-wild")
                                ("pat-var" "v2" "pat-wild")
                                ("pat-var" "r2" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "6" "2" "8")
                                "none"
                                "2")
                              (("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/color")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum")
                                ("tcon" "std/core/types/int32")
                                ("tcon" "std/core/types/bool")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("case"
                                (("app"
                                    ("app"
                                      ("type-app"
                                        ("var"
                                          ("std/core/types/@open"
                                            ("forall"
                                              ("-3" "-4" "-1" "-2")
                                              ("fun"
                                                (("x"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("bootstrap/validation/example/fp-red-black-fp/#tree/is-red"
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("r2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/True"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "2")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/balance"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Red"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "1"))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Black"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "2"))
                                              ("var"
                                                ("l1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k1"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v1"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("var"
                                              ("k2"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v2"
                                                ("tcon" "std/core/types/bool")))
                                            ("app"
                                              ("app"
                                                ("type-app"
                                                  ("var"
                                                    ("std/core/types/@open"
                                                      ("forall"
                                                        ("-3" "-4" "-1" "-2")
                                                        ("fun"
                                                          (("x"
                                                              ("fun"
                                                                (("t"
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/handled")
                                                        ("tcon"
                                                          "std/core/exn/exn"))
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-red-black-fp/set-black"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                              ("var"
                                                ("r2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                  ("branch"
                                    (("pat-con"
                                        "std/core/types/False"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "1")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("case"
                                          (("var"
                                              ("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                          (("branch"
                                              (("pat-con"
                                                  "bootstrap/validation/example/fp-red-black-fp/Node"
                                                  ("pat-wild"
                                                    ("pat-var" "l" "pat-wild")
                                                    ("pat-var" "k" "pat-wild")
                                                    ("pat-var" "v" "pat-wild")
                                                    ("pat-var" "r" "pat-wild"))
                                                  ("as-cons"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"
                                                    "as-list"
                                                    ("value-repr" "6" "2" "8")
                                                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                    "none"
                                                    "1")
                                                  (("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/color")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")
                                                    ("tcon"
                                                      "std/core/types/int32")
                                                    ("tcon"
                                                      "std/core/types/bool")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                              (("guard"
                                                  ("con"
                                                    "std/core/types/True"
                                                    ("enum"
                                                      "std/core/types/bool"
                                                      "enum"
                                                      ("value-repr" "0" "0" "0")
                                                      "2"))
                                                  ("app"
                                                    ("app"
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/types/@open"
                                                            ("forall"
                                                              ("-3"
                                                                "-4"
                                                                "-1"
                                                                "-2")
                                                              ("fun"
                                                                (("x"
                                                                    ("fun"
                                                                      (("z"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                                        ("t"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                      ("tcon"
                                                                        "std/core/types/total")
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("fun"
                                                                  (("z"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                                    ("t"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/effect-extend")
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "std/core/types/handled")
                                                                      ("tcon"
                                                                        "std/core/exn/exn"))
                                                                    ("tcon"
                                                                      "std/core/types/total"))
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("fun"
                                                          (("z"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                            ("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                        ("fun"
                                                          (("z"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                            ("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("var"
                                                        ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                                    ("var"
                                                      ("z2"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                    ("app"
                                                      ("con"
                                                        "bootstrap/validation/example/fp-red-black-fp/Node"
                                                        ("as-cons"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"
                                                          "as-list"
                                                          ("value-repr"
                                                            "6"
                                                            "2"
                                                            "8")
                                                          "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                          "none"
                                                          "1"))
                                                      ("con"
                                                        "bootstrap/validation/example/fp-red-black-fp/Black"
                                                        ("enum"
                                                          "bootstrap/validation/example/fp-red-black-fp/color"
                                                          "enum"
                                                          ("value-repr"
                                                            "0"
                                                            "0"
                                                            "0")
                                                          "2"))
                                                      ("app"
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Node"
                                                          ("as-cons"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"
                                                            "as-list"
                                                            ("value-repr"
                                                              "6"
                                                              "2"
                                                              "8")
                                                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                            "none"
                                                            "1"))
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Red"
                                                          ("enum"
                                                            "bootstrap/validation/example/fp-red-black-fp/color"
                                                            "enum"
                                                            ("value-repr"
                                                              "0"
                                                              "0"
                                                              "0")
                                                            "1"))
                                                        ("var"
                                                          ("l1"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("var"
                                                          ("k1"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("var"
                                                          ("v1"
                                                            ("tcon"
                                                              "std/core/types/bool")))
                                                        ("var"
                                                          ("l"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("var"
                                                        ("k"
                                                          ("tcon"
                                                            "std/core/types/int32")))
                                                      ("var"
                                                        ("v"
                                                          ("tcon"
                                                            "std/core/types/bool")))
                                                      ("app"
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Node"
                                                          ("as-cons"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"
                                                            "as-list"
                                                            ("value-repr"
                                                              "6"
                                                              "2"
                                                              "8")
                                                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                            "none"
                                                            "1"))
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Red"
                                                          ("enum"
                                                            "bootstrap/validation/example/fp-red-black-fp/color"
                                                            "enum"
                                                            ("value-repr"
                                                              "0"
                                                              "0"
                                                              "0")
                                                            "1"))
                                                        ("var"
                                                          ("r"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("var"
                                                          ("k2"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("var"
                                                          ("v2"
                                                            ("tcon"
                                                              "std/core/types/bool")))
                                                        ("var"
                                                          ("r2"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                            ("branch"
                                              ("pat-wild")
                                              (("guard"
                                                  ("con"
                                                    "std/core/types/True"
                                                    ("enum"
                                                      "std/core/types/bool"
                                                      "enum"
                                                      ("value-repr" "0" "0" "0")
                                                      "2"))
                                                  ("app"
                                                    ("app"
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/types/@open"
                                                            ("forall"
                                                              ("-3"
                                                                "-4"
                                                                "-1"
                                                                "-2")
                                                              ("fun"
                                                                (("x"
                                                                    ("fun"
                                                                      (("location"
                                                                          ("tcon"
                                                                            "std/core/types/string"))
                                                                        ("definition"
                                                                          ("tcon"
                                                                            "std/core/types/string")))
                                                                      ("tapp"
                                                                        ("tcon"
                                                                          "std/core/types/effect-extend")
                                                                        ("tapp"
                                                                          ("tcon"
                                                                            "std/core/types/handled")
                                                                          ("tcon"
                                                                            "std/core/exn/exn"))
                                                                        ("tcon"
                                                                          "std/core/types/total"))
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("fun"
                                                                  (("location"
                                                                      ("tcon"
                                                                        "std/core/types/string"))
                                                                    ("definition"
                                                                      ("tcon"
                                                                        "std/core/types/string")))
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/effect-extend")
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "std/core/types/handled")
                                                                      ("tcon"
                                                                        "std/core/exn/exn"))
                                                                    ("tcon"
                                                                      "std/core/types/total"))
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("fun"
                                                          (("location"
                                                              ("tcon"
                                                                "std/core/types/string"))
                                                            ("definition"
                                                              ("tcon"
                                                                "std/core/types/string")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                        ("fun"
                                                          (("location"
                                                              ("tcon"
                                                                "std/core/types/string"))
                                                            ("definition"
                                                              ("tcon"
                                                                "std/core/types/string")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/exn/error-pattern"
                                                            ("forall"
                                                              ("10000")
                                                              ("fun"
                                                                (("location"
                                                                    ("tcon"
                                                                      "std/core/types/string"))
                                                                  ("definition"
                                                                    ("tcon"
                                                                      "std/core/types/string")))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/effect-extend")
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/handled")
                                                                    ("tcon"
                                                                      "std/core/exn/exn"))
                                                                  ("tcon"
                                                                    "std/core/types/total"))
                                                                ("tvar"
                                                                  "10000")))))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    "\"bootstrap/validation/example/fp-red-black-fp(55,14)\""
                                                    "\"balance\""))))))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/Done"
                              ()
                              ("singleton"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("app"
                                ("con"
                                  "bootstrap/validation/example/fp-red-black-fp/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/fp-red-black-fp/tree"
                                    "as-list"
                                    ("value-repr" "6" "2" "8")
                                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                    "none"
                                    "1"))
                                ("con"
                                  "bootstrap/validation/example/fp-red-black-fp/Black"
                                  ("enum"
                                    "bootstrap/validation/example/fp-red-black-fp/color"
                                    "enum"
                                    ("value-repr" "0" "0" "0")
                                    "2"))
                                ("var"
                                  ("l1"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                ("var" ("k1" ("tcon" "std/core/types/int32")))
                                ("var" ("v1" ("tcon" "std/core/types/bool")))
                                ("var"
                                  ("t"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/NodeL"
                    (("pat-con"
                        "bootstrap/validation/example/fp-red-black-fp/Red"
                        ()
                        ("enum"
                          "bootstrap/validation/example/fp-red-black-fp/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var" "z1" "pat-wild")
                      ("pat-var" "k1" "pat-wild")
                      ("pat-var" "v1" "pat-wild")
                      ("pat-var" "r1" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-red-black-fp/accum"
                      ("normal" "True")
                      ("value-repr" "6" "2" "8")
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("case"
                      (("var"
                          ("z1"
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/accum"))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/NodeL"
                              ("pat-wild"
                                ("pat-var" "z2" "pat-wild")
                                ("pat-var" "k2" "pat-wild")
                                ("pat-var" "v2" "pat-wild")
                                ("pat-var" "r2" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "6" "2" "8")
                                "none"
                                "2")
                              (("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/color")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum")
                                ("tcon" "std/core/types/int32")
                                ("tcon" "std/core/types/bool")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("case"
                                (("app"
                                    ("app"
                                      ("type-app"
                                        ("var"
                                          ("std/core/types/@open"
                                            ("forall"
                                              ("-3" "-4" "-1" "-2")
                                              ("fun"
                                                (("x"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("bootstrap/validation/example/fp-red-black-fp/#tree/is-red"
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("r2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/True"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "2")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/balance"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Red"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "1"))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Black"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "2"))
                                              ("var"
                                                ("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k1"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v1"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("r1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("var"
                                              ("k2"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v2"
                                                ("tcon" "std/core/types/bool")))
                                            ("app"
                                              ("app"
                                                ("type-app"
                                                  ("var"
                                                    ("std/core/types/@open"
                                                      ("forall"
                                                        ("-3" "-4" "-1" "-2")
                                                        ("fun"
                                                          (("x"
                                                              ("fun"
                                                                (("t"
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/handled")
                                                        ("tcon"
                                                          "std/core/exn/exn"))
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-red-black-fp/set-black"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                              ("var"
                                                ("r2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                  ("branch"
                                    (("pat-con"
                                        "std/core/types/False"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "1")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tcon" "std/core/types/total")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Black"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "2"))
                                            ("var"
                                              ("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("k1"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v1"
                                                ("tcon" "std/core/types/bool")))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Red"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "1"))
                                              ("var"
                                                ("r1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k2"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v2"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("r2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/NodeR"
                              ("pat-wild"
                                ("pat-var" "l2" "pat-wild")
                                ("pat-var" "k2" "pat-wild")
                                ("pat-var" "v2" "pat-wild")
                                ("pat-var" "z2" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "6" "2" "8")
                                "none"
                                "3")
                              (("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/color")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")
                                ("tcon" "std/core/types/int32")
                                ("tcon" "std/core/types/bool")
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("case"
                                (("app"
                                    ("app"
                                      ("type-app"
                                        ("var"
                                          ("std/core/types/@open"
                                            ("forall"
                                              ("-3" "-4" "-1" "-2")
                                              ("fun"
                                                (("x"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("bootstrap/validation/example/fp-red-black-fp/#tree/is-red"
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("l2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/True"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "2")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/balance"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z2"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Red"
                                              ("enum"
                                                "bootstrap/validation/example/fp-red-black-fp/color"
                                                "enum"
                                                ("value-repr" "0" "0" "0")
                                                "1"))
                                            ("app"
                                              ("app"
                                                ("type-app"
                                                  ("var"
                                                    ("std/core/types/@open"
                                                      ("forall"
                                                        ("-3" "-4" "-1" "-2")
                                                        ("fun"
                                                          (("x"
                                                              ("fun"
                                                                (("t"
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/handled")
                                                        ("tcon"
                                                          "std/core/exn/exn"))
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-red-black-fp/set-black"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                              ("var"
                                                ("l2"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("var"
                                              ("k2"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v2"
                                                ("tcon" "std/core/types/bool")))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Node"
                                                ("as-cons"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"
                                                  "as-list"
                                                  ("value-repr" "6" "2" "8")
                                                  "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                  "none"
                                                  "1"))
                                              ("con"
                                                "bootstrap/validation/example/fp-red-black-fp/Black"
                                                ("enum"
                                                  "bootstrap/validation/example/fp-red-black-fp/color"
                                                  "enum"
                                                  ("value-repr" "0" "0" "0")
                                                  "2"))
                                              ("var"
                                                ("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                                              ("var"
                                                ("k1"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("var"
                                                ("v1"
                                                  ("tcon"
                                                    "std/core/types/bool")))
                                              ("var"
                                                ("r1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                  ("branch"
                                    (("pat-con"
                                        "std/core/types/False"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "1")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("case"
                                          (("var"
                                              ("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                          (("branch"
                                              (("pat-con"
                                                  "bootstrap/validation/example/fp-red-black-fp/Node"
                                                  ("pat-wild"
                                                    ("pat-var" "l" "pat-wild")
                                                    ("pat-var" "k" "pat-wild")
                                                    ("pat-var" "v" "pat-wild")
                                                    ("pat-var" "r" "pat-wild"))
                                                  ("as-cons"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"
                                                    "as-list"
                                                    ("value-repr" "6" "2" "8")
                                                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                    "none"
                                                    "1")
                                                  (("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/color")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")
                                                    ("tcon"
                                                      "std/core/types/int32")
                                                    ("tcon"
                                                      "std/core/types/bool")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                              (("guard"
                                                  ("con"
                                                    "std/core/types/True"
                                                    ("enum"
                                                      "std/core/types/bool"
                                                      "enum"
                                                      ("value-repr" "0" "0" "0")
                                                      "2"))
                                                  ("app"
                                                    ("app"
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/types/@open"
                                                            ("forall"
                                                              ("-3"
                                                                "-4"
                                                                "-1"
                                                                "-2")
                                                              ("fun"
                                                                (("x"
                                                                    ("fun"
                                                                      (("z"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                                        ("t"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                      ("tcon"
                                                                        "std/core/types/total")
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("fun"
                                                                  (("z"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                                    ("t"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/effect-extend")
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "std/core/types/handled")
                                                                      ("tcon"
                                                                        "std/core/exn/exn"))
                                                                    ("tcon"
                                                                      "std/core/types/total"))
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("fun"
                                                          (("z"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                            ("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                        ("fun"
                                                          (("z"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                            ("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("var"
                                                        ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                                    ("var"
                                                      ("z2"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                    ("app"
                                                      ("con"
                                                        "bootstrap/validation/example/fp-red-black-fp/Node"
                                                        ("as-cons"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"
                                                          "as-list"
                                                          ("value-repr"
                                                            "6"
                                                            "2"
                                                            "8")
                                                          "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                          "none"
                                                          "1"))
                                                      ("con"
                                                        "bootstrap/validation/example/fp-red-black-fp/Black"
                                                        ("enum"
                                                          "bootstrap/validation/example/fp-red-black-fp/color"
                                                          "enum"
                                                          ("value-repr"
                                                            "0"
                                                            "0"
                                                            "0")
                                                          "2"))
                                                      ("app"
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Node"
                                                          ("as-cons"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"
                                                            "as-list"
                                                            ("value-repr"
                                                              "6"
                                                              "2"
                                                              "8")
                                                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                            "none"
                                                            "1"))
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Red"
                                                          ("enum"
                                                            "bootstrap/validation/example/fp-red-black-fp/color"
                                                            "enum"
                                                            ("value-repr"
                                                              "0"
                                                              "0"
                                                              "0")
                                                            "1"))
                                                        ("var"
                                                          ("l2"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("var"
                                                          ("k2"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("var"
                                                          ("v2"
                                                            ("tcon"
                                                              "std/core/types/bool")))
                                                        ("var"
                                                          ("l"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("var"
                                                        ("k"
                                                          ("tcon"
                                                            "std/core/types/int32")))
                                                      ("var"
                                                        ("v"
                                                          ("tcon"
                                                            "std/core/types/bool")))
                                                      ("app"
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Node"
                                                          ("as-cons"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"
                                                            "as-list"
                                                            ("value-repr"
                                                              "6"
                                                              "2"
                                                              "8")
                                                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                            "none"
                                                            "1"))
                                                        ("con"
                                                          "bootstrap/validation/example/fp-red-black-fp/Red"
                                                          ("enum"
                                                            "bootstrap/validation/example/fp-red-black-fp/color"
                                                            "enum"
                                                            ("value-repr"
                                                              "0"
                                                              "0"
                                                              "0")
                                                            "1"))
                                                        ("var"
                                                          ("r"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("var"
                                                          ("k1"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("var"
                                                          ("v1"
                                                            ("tcon"
                                                              "std/core/types/bool")))
                                                        ("var"
                                                          ("r1"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))))))))
                                            ("branch"
                                              ("pat-wild")
                                              (("guard"
                                                  ("con"
                                                    "std/core/types/True"
                                                    ("enum"
                                                      "std/core/types/bool"
                                                      "enum"
                                                      ("value-repr" "0" "0" "0")
                                                      "2"))
                                                  ("app"
                                                    ("app"
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/types/@open"
                                                            ("forall"
                                                              ("-3"
                                                                "-4"
                                                                "-1"
                                                                "-2")
                                                              ("fun"
                                                                (("x"
                                                                    ("fun"
                                                                      (("location"
                                                                          ("tcon"
                                                                            "std/core/types/string"))
                                                                        ("definition"
                                                                          ("tcon"
                                                                            "std/core/types/string")))
                                                                      ("tapp"
                                                                        ("tcon"
                                                                          "std/core/types/effect-extend")
                                                                        ("tapp"
                                                                          ("tcon"
                                                                            "std/core/types/handled")
                                                                          ("tcon"
                                                                            "std/core/exn/exn"))
                                                                        ("tcon"
                                                                          "std/core/types/total"))
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("fun"
                                                                  (("location"
                                                                      ("tcon"
                                                                        "std/core/types/string"))
                                                                    ("definition"
                                                                      ("tcon"
                                                                        "std/core/types/string")))
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/effect-extend")
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "std/core/types/handled")
                                                                      ("tcon"
                                                                        "std/core/exn/exn"))
                                                                    ("tcon"
                                                                      "std/core/types/total"))
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("fun"
                                                          (("location"
                                                              ("tcon"
                                                                "std/core/types/string"))
                                                            ("definition"
                                                              ("tcon"
                                                                "std/core/types/string")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                        ("fun"
                                                          (("location"
                                                              ("tcon"
                                                                "std/core/types/string"))
                                                            ("definition"
                                                              ("tcon"
                                                                "std/core/types/string")))
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/effect-extend")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/handled")
                                                              ("tcon"
                                                                "std/core/exn/exn"))
                                                            ("tcon"
                                                              "std/core/types/total"))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                      ("type-app"
                                                        ("var"
                                                          ("std/core/exn/error-pattern"
                                                            ("forall"
                                                              ("10000")
                                                              ("fun"
                                                                (("location"
                                                                    ("tcon"
                                                                      "std/core/types/string"))
                                                                  ("definition"
                                                                    ("tcon"
                                                                      "std/core/types/string")))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/effect-extend")
                                                                  ("tapp"
                                                                    ("tcon"
                                                                      "std/core/types/handled")
                                                                    ("tcon"
                                                                      "std/core/exn/exn"))
                                                                  ("tcon"
                                                                    "std/core/types/total"))
                                                                ("tvar"
                                                                  "10000")))))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                    "\"bootstrap/validation/example/fp-red-black-fp(66,14)\""
                                                    "\"balance\""))))))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-red-black-fp/Done"
                              ()
                              ("singleton"
                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                ("normal" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("app"
                                ("con"
                                  "bootstrap/validation/example/fp-red-black-fp/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/fp-red-black-fp/tree"
                                    "as-list"
                                    ("value-repr" "6" "2" "8")
                                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                    "none"
                                    "1"))
                                ("con"
                                  "bootstrap/validation/example/fp-red-black-fp/Black"
                                  ("enum"
                                    "bootstrap/validation/example/fp-red-black-fp/color"
                                    "enum"
                                    ("value-repr" "0" "0" "0")
                                    "2"))
                                ("var"
                                  ("t"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                ("var" ("k1" ("tcon" "std/core/types/int32")))
                                ("var" ("v1" ("tcon" "std/core/types/bool")))
                                ("var"
                                  ("r1"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))))))))))
              ("branch"
                (("pat-var" "z" "pat-wild"))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("app"
                        ("type-app"
                          ("var"
                            ("std/core/types/@open"
                              ("forall"
                                ("-3" "-4" "-1" "-2")
                                ("fun"
                                  (("x"
                                      ("fun"
                                        (("z"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                          ("t"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("z"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/accum"))
                                      ("t"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tapp"
                              ("tcon" "std/core/types/handled")
                              ("tcon" "std/core/exn/exn"))
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tapp"
                                ("tcon" "std/core/types/handled")
                                ("tcon" "std/core/exn/exn"))
                              ("tcon" "std/core/types/total"))
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                        ("var"
                          ("bootstrap/validation/example/fp-red-black-fp/rebuild"
                            ("fun"
                              (("z"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/accum"))
                                ("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-red-black-fp/tree")))))
                      ("var"
                        ("z"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                      ("var"
                        ("t"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/tree"))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/ins"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
            ("key" ("tcon" "std/core/types/int32"))
            ("v" ("tcon" "std/core/types/bool"))
            ("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
            ("key" ("tcon" "std/core/types/int32"))
            ("v" ("tcon" "std/core/types/bool"))
            ("z" ("tcon" "bootstrap/validation/example/fp-red-black-fp/accum")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Node"
                    (("pat-var" "c" "pat-wild")
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "6" "2" "8")
                      "bootstrap/validation/example/fp-red-black-fp/Leaf"
                      "none"
                      "1")
                    (("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/color")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree")
                      ("tcon" "std/core/types/int32")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("case"
                      (("app"
                          ("app"
                            ("type-app"
                              ("var"
                                ("std/core/types/@open"
                                  ("forall"
                                    ("-3" "-4" "-1" "-2")
                                    ("fun"
                                      (("x"
                                          ("fun"
                                            (("x"
                                                ("tcon" "std/core/types/int32"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/int32"))
                                          ("y" ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tcon" "std/core/types/bool"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("fun"
                                (("x" ("tcon" "std/core/types/int32"))
                                  ("y" ("tcon" "std/core/types/int32")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/bool"))
                              ("fun"
                                (("x" ("tcon" "std/core/types/int32"))
                                  ("y" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tapp"
                                    ("tcon" "std/core/types/handled")
                                    ("tcon" "std/core/exn/exn"))
                                  ("tcon" "std/core/types/total"))
                                ("tcon" "std/core/types/bool")))
                            ("var"
                              ("std/num/int32/(<)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var" ("key" ("tcon" "std/core/types/int32")))
                          ("var" ("kx" ("tcon" "std/core/types/int32")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/True"
                              ()
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "2")
                              ()))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("app"
                                ("app"
                                  ("type-app"
                                    ("var"
                                      ("std/core/types/@open"
                                        ("forall"
                                          ("-3" "-4" "-1" "-2")
                                          ("fun"
                                            (("x"
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                    ("key"
                                                      ("tcon"
                                                        "std/core/types/int32"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool"))
                                                    ("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                ("key"
                                                  ("tcon"
                                                    "std/core/types/int32"))
                                                ("v"
                                                  ("tcon"
                                                    "std/core/types/bool"))
                                                ("z"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/accum")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                        ("key" ("tcon" "std/core/types/int32"))
                                        ("v" ("tcon" "std/core/types/bool"))
                                        ("z"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tapp"
                                          ("tcon" "std/core/types/handled")
                                          ("tcon" "std/core/exn/exn"))
                                        ("tcon" "std/core/types/total"))
                                      ("tcon"
                                        "bootstrap/validation/example/fp-red-black-fp/tree"))
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-red-black-fp/tree"))
                                        ("key" ("tcon" "std/core/types/int32"))
                                        ("v" ("tcon" "std/core/types/bool"))
                                        ("z"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tapp"
                                          ("tcon" "std/core/types/handled")
                                          ("tcon" "std/core/exn/exn"))
                                        ("tcon" "std/core/types/total"))
                                      ("tcon"
                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                  ("var"
                                    ("bootstrap/validation/example/fp-red-black-fp/ins"
                                      ("fun"
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/tree"))
                                          ("key"
                                            ("tcon" "std/core/types/int32"))
                                          ("v" ("tcon" "std/core/types/bool"))
                                          ("z"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/accum")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                ("var"
                                  ("l"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                ("var" ("key" ("tcon" "std/core/types/int32")))
                                ("var" ("v" ("tcon" "std/core/types/bool")))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-red-black-fp/NodeL"
                                    ("normal"
                                      "bootstrap/validation/example/fp-red-black-fp/accum"
                                      ("normal" "True")
                                      ("value-repr" "6" "2" "8")
                                      "none"
                                      "2"))
                                  ("var"
                                    ("c"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-red-black-fp/color")))
                                  ("var"
                                    ("z"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-red-black-fp/accum")))
                                  ("var" ("kx" ("tcon" "std/core/types/int32")))
                                  ("var" ("vx" ("tcon" "std/core/types/bool")))
                                  ("var"
                                    ("r"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-red-black-fp/tree"))))))))
                        ("branch"
                          (("pat-con"
                              "std/core/types/False"
                              ()
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "2"))
                              ("case"
                                (("app"
                                    ("app"
                                      ("type-app"
                                        ("var"
                                          ("std/core/types/@open"
                                            ("forall"
                                              ("-3" "-4" "-1" "-2")
                                              ("fun"
                                                (("x"
                                                    ("fun"
                                                      (("x"
                                                          ("tcon"
                                                            "std/core/types/int32"))
                                                        ("y"
                                                          ("tcon"
                                                            "std/core/types/int32")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("x"
                                                      ("tcon"
                                                        "std/core/types/int32"))
                                                    ("y"
                                                      ("tcon"
                                                        "std/core/types/int32")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("x" ("tcon" "std/core/types/int32"))
                                            ("y"
                                              ("tcon" "std/core/types/int32")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("x" ("tcon" "std/core/types/int32"))
                                            ("y"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("std/num/int32/(>)"
                                          ("fun"
                                            (("x"
                                                ("tcon" "std/core/types/int32"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("key" ("tcon" "std/core/types/int32")))
                                    ("var"
                                      ("kx" ("tcon" "std/core/types/int32")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/True"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "2")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                              ("key"
                                                                ("tcon"
                                                                  "std/core/types/int32"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool"))
                                                              ("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                          ("key"
                                                            ("tcon"
                                                              "std/core/types/int32"))
                                                          ("v"
                                                            ("tcon"
                                                              "std/core/types/bool"))
                                                          ("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("key"
                                                    ("tcon"
                                                      "std/core/types/int32"))
                                                  ("v"
                                                    ("tcon"
                                                      "std/core/types/bool"))
                                                  ("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                  ("key"
                                                    ("tcon"
                                                      "std/core/types/int32"))
                                                  ("v"
                                                    ("tcon"
                                                      "std/core/types/bool"))
                                                  ("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/ins"
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree"))
                                                    ("key"
                                                      ("tcon"
                                                        "std/core/types/int32"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool"))
                                                    ("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/tree")))
                                          ("var"
                                            ("key"
                                              ("tcon" "std/core/types/int32")))
                                          ("var"
                                            ("v"
                                              ("tcon" "std/core/types/bool")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/NodeR"
                                              ("normal"
                                                "bootstrap/validation/example/fp-red-black-fp/accum"
                                                ("normal" "True")
                                                ("value-repr" "6" "2" "8")
                                                "none"
                                                "3"))
                                            ("var"
                                              ("c"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/color")))
                                            ("var"
                                              ("l"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("kx"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("vx"
                                                ("tcon" "std/core/types/bool")))
                                            ("var"
                                              ("z"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))))))))
                                  ("branch"
                                    (("pat-con"
                                        "std/core/types/False"
                                        ()
                                        ("enum"
                                          "std/core/types/bool"
                                          "enum"
                                          ("value-repr" "0" "0" "0")
                                          "1")
                                        ()))
                                    (("guard"
                                        ("con"
                                          "std/core/types/True"
                                          ("enum"
                                            "std/core/types/bool"
                                            "enum"
                                            ("value-repr" "0" "0" "0")
                                            "2"))
                                        ("app"
                                          ("app"
                                            ("type-app"
                                              ("var"
                                                ("std/core/types/@open"
                                                  ("forall"
                                                    ("-3" "-4" "-1" "-2")
                                                    ("fun"
                                                      (("x"
                                                          ("fun"
                                                            (("z"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                              ("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/handled")
                                                                ("tcon"
                                                                  "std/core/exn/exn"))
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("z"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                          ("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/handled")
                                                            ("tcon"
                                                              "std/core/exn/exn"))
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))
                                              ("fun"
                                                (("z"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                  ("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/fp-red-black-fp/balance"
                                                ("fun"
                                                  (("z"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/accum"))
                                                    ("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-red-black-fp/tree")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/handled")
                                                      ("tcon"
                                                        "std/core/exn/exn"))
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-red-black-fp/tree")))))
                                          ("var"
                                            ("z"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-red-black-fp/Node"
                                              ("as-cons"
                                                "bootstrap/validation/example/fp-red-black-fp/tree"
                                                "as-list"
                                                ("value-repr" "6" "2" "8")
                                                "bootstrap/validation/example/fp-red-black-fp/Leaf"
                                                "none"
                                                "1"))
                                            ("var"
                                              ("c"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/color")))
                                            ("var"
                                              ("l"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                                            ("var"
                                              ("key"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("v"
                                                ("tcon" "std/core/types/bool")))
                                            ("var"
                                              ("r"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-red-black-fp/tree"))))))))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-red-black-fp/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-red-black-fp/tree"
                      "as-list"
                      ("value-repr" "0" "0" "0")
                      "2")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("app"
                        ("type-app"
                          ("var"
                            ("std/core/types/@open"
                              ("forall"
                                ("-3" "-4" "-1" "-2")
                                ("fun"
                                  (("x"
                                      ("fun"
                                        (("z"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/accum"))
                                          ("t"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("z"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/accum"))
                                      ("t"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-red-black-fp/tree")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tapp"
                              ("tcon" "std/core/types/handled")
                              ("tcon" "std/core/exn/exn"))
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tapp"
                              ("tcon" "std/core/types/handled")
                              ("tcon" "std/core/exn/exn"))
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tapp"
                                ("tcon" "std/core/types/handled")
                                ("tcon" "std/core/exn/exn"))
                              ("tcon" "std/core/types/total"))
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree"))
                          ("fun"
                            (("z"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/accum"))
                              ("t"
                                ("tcon"
                                  "bootstrap/validation/example/fp-red-black-fp/tree")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tapp"
                                ("tcon" "std/core/types/handled")
                                ("tcon" "std/core/exn/exn"))
                              ("tcon" "std/core/types/total"))
                            ("tcon"
                              "bootstrap/validation/example/fp-red-black-fp/tree")))
                        ("var"
                          ("bootstrap/validation/example/fp-red-black-fp/balance"
                            ("fun"
                              (("z"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/accum"))
                                ("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/tree")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tcon"
                                "bootstrap/validation/example/fp-red-black-fp/tree")))))
                      ("var"
                        ("z"
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/accum")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Node"
                          ("as-cons"
                            "bootstrap/validation/example/fp-red-black-fp/tree"
                            "as-list"
                            ("value-repr" "6" "2" "8")
                            "bootstrap/validation/example/fp-red-black-fp/Leaf"
                            "none"
                            "1"))
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Red"
                          ("enum"
                            "bootstrap/validation/example/fp-red-black-fp/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "1"))
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Leaf"
                          ("singleton"
                            "bootstrap/validation/example/fp-red-black-fp/tree"
                            "as-list"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var" ("key" ("tcon" "std/core/types/int32")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("con"
                          "bootstrap/validation/example/fp-red-black-fp/Leaf"
                          ("singleton"
                            "bootstrap/validation/example/fp-red-black-fp/tree"
                            "as-list"
                            ("value-repr" "0" "0" "0")
                            "2"))))))))))
        ("def-fun" () ("fip" ("at-most" "1")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/insert"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
            ("k" ("tcon" "std/core/types/int32"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
            ("k" ("tcon" "std/core/types/int32"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tapp"
              ("tcon" "std/core/types/handled")
              ("tcon" "std/core/exn/exn"))
            ("tcon" "std/core/types/total"))
          ("app"
            ("app"
              ("type-app"
                ("var"
                  ("std/core/types/@open"
                    ("forall"
                      ("-3" "-4" "-1" "-2")
                      ("fun"
                        (("x"
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/tree"))
                                ("key" ("tcon" "std/core/types/int32"))
                                ("v" ("tcon" "std/core/types/bool"))
                                ("z"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-red-black-fp/accum")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tcon"
                                "bootstrap/validation/example/fp-red-black-fp/tree"))))
                        ("tcon" "std/core/types/total")
                        ("fun"
                          (("t"
                              ("tcon"
                                "bootstrap/validation/example/fp-red-black-fp/tree"))
                            ("key" ("tcon" "std/core/types/int32"))
                            ("v" ("tcon" "std/core/types/bool"))
                            ("z"
                              ("tcon"
                                "bootstrap/validation/example/fp-red-black-fp/accum")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tapp"
                              ("tcon" "std/core/types/handled")
                              ("tcon" "std/core/exn/exn"))
                            ("tcon" "std/core/types/total"))
                          ("tcon"
                            "bootstrap/validation/example/fp-red-black-fp/tree"))))))
                ("tapp"
                  ("tcon" "std/core/types/effect-extend")
                  ("tapp"
                    ("tcon" "std/core/types/handled")
                    ("tcon" "std/core/exn/exn"))
                  ("tcon" "std/core/types/total"))
                ("tapp"
                  ("tcon" "std/core/types/effect-extend")
                  ("tapp"
                    ("tcon" "std/core/types/handled")
                    ("tcon" "std/core/exn/exn"))
                  ("tcon" "std/core/types/total"))
                ("fun"
                  (("t"
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))
                    ("key" ("tcon" "std/core/types/int32"))
                    ("v" ("tcon" "std/core/types/bool"))
                    ("z"
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum")))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tapp"
                      ("tcon" "std/core/types/handled")
                      ("tcon" "std/core/exn/exn"))
                    ("tcon" "std/core/types/total"))
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree"))
                ("fun"
                  (("t"
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/tree"))
                    ("key" ("tcon" "std/core/types/int32"))
                    ("v" ("tcon" "std/core/types/bool"))
                    ("z"
                      ("tcon"
                        "bootstrap/validation/example/fp-red-black-fp/accum")))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tapp"
                      ("tcon" "std/core/types/handled")
                      ("tcon" "std/core/exn/exn"))
                    ("tcon" "std/core/types/total"))
                  ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
              ("var"
                ("bootstrap/validation/example/fp-red-black-fp/ins"
                  ("fun"
                    (("t"
                        ("tcon"
                          "bootstrap/validation/example/fp-red-black-fp/tree"))
                      ("key" ("tcon" "std/core/types/int32"))
                      ("v" ("tcon" "std/core/types/bool"))
                      ("z"
                        ("tcon"
                          "bootstrap/validation/example/fp-red-black-fp/accum")))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tapp"
                        ("tcon" "std/core/types/handled")
                        ("tcon" "std/core/exn/exn"))
                      ("tcon" "std/core/types/total"))
                    ("tcon"
                      "bootstrap/validation/example/fp-red-black-fp/tree")))))
            ("var"
              ("t"
                ("tcon" "bootstrap/validation/example/fp-red-black-fp/tree")))
            ("var" ("k" ("tcon" "std/core/types/int32")))
            ("var" ("v" ("tcon" "std/core/types/bool")))
            ("con"
              "bootstrap/validation/example/fp-red-black-fp/Done"
              ("singleton"
                "bootstrap/validation/example/fp-red-black-fp/accum"
                ("normal" "True")
                ("value-repr" "0" "0" "0")
                "1"))))
        ("def-fun" () ("fip" ("at-most" "1")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-red-black-fp/main"
        ("fun"
          ()
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/unit"))
        ("lam"
          ()
          ("tcon" "std/core/types/total")
          ("con"
            "std/core/types/Unit"
            ("enum"
              "std/core/types/unit"
              "enum"
              ("value-repr" "0" "0" "0")
              "1")))
        ("def-fun" () ("no-fip" "False"))))))
