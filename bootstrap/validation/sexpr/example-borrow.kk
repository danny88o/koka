("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/example-borrow/tree"
          ()
          (("con-info"
              "bootstrap/validation/example/example-borrow/Node"
              (("lchild"
                  ("tcon" "bootstrap/validation/example/example-borrow/tree"))
                ("key" ("tcon" "std/core/types/int"))
                ("value" ("tcon" "std/core/types/bool"))
                ("rchild"
                  ("tcon" "bootstrap/validation/example/example-borrow/tree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/example-borrow/Leaf"
              ()
              "nothing"))
          "True"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/example-borrow/is-node"
        ("fun"
          (("tree" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon" "bootstrap/validation/example/example-borrow/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example-borrow/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/example-borrow/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example-borrow/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example-borrow/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/example-borrow/tree"))))
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
                    "bootstrap/validation/example/example-borrow/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example-borrow/tree"
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
        "bootstrap/validation/example/example-borrow/is-leaf"
        ("fun"
          (("tree" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon" "bootstrap/validation/example/example-borrow/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example-borrow/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example-borrow/tree"
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
                    "bootstrap/validation/example/example-borrow/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/example-borrow/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example-borrow/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example-borrow/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/example-borrow/tree"))))
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
        "bootstrap/validation/example/example-borrow/is-level-one"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/example-borrow/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon" "bootstrap/validation/example/example-borrow/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example-borrow/Node"
                    (("pat-con"
                        "bootstrap/validation/example/example-borrow/Leaf"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/example-borrow/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2")
                        ())
                      "pat-wild"
                      "pat-wild"
                      ("pat-con"
                        "bootstrap/validation/example/example-borrow/Leaf"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/example-borrow/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2")
                        ()))
                    ("as-cons"
                      "bootstrap/validation/example/example-borrow/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example-borrow/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example-borrow/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/example-borrow/tree"))))
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
        "bootstrap/validation/example/example-borrow/main"
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
