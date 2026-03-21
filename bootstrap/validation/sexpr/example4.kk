("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/example4/tree"
          ()
          (("con-info"
              "bootstrap/validation/example/example4/Node"
              (("lchild" ("tcon" "bootstrap/validation/example/example4/tree"))
                ("key" ("tcon" "std/core/types/int"))
                ("value" ("tcon" "std/core/types/bool"))
                ("rchild"
                  ("tcon" "bootstrap/validation/example/example4/tree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/example4/Leaf"
              ()
              "nothing"))
          "True"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/example4/is-node"
        ("fun"
          (("tree" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree" ("tcon" "bootstrap/validation/example/example4/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/example4/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example4/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example4/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon" "bootstrap/validation/example/example4/tree"))))
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
                    "bootstrap/validation/example/example4/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example4/tree"
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
        "bootstrap/validation/example/example4/is-leaf"
        ("fun"
          (("tree" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree" ("tcon" "bootstrap/validation/example/example4/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example4/tree"
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
                    "bootstrap/validation/example/example4/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/example4/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example4/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example4/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon" "bootstrap/validation/example/example4/tree"))))
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
        "bootstrap/validation/example/example4/replace"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/example4/tree"))
            ("key" ("tcon" "std/core/types/int"))
            ("value" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/example4/tree"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/example4/tree"))
            ("key" ("tcon" "std/core/types/int"))
            ("value" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/example4/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Node"
                    (("pat-var" "lchild" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      "pat-wild"
                      ("pat-var" "rchild" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/example4/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example4/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example4/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon" "bootstrap/validation/example/example4/tree"))))
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
                                            (("x" ("tcon" "std/core/types/int"))
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/int"))
                                          ("y" ("tcon" "std/core/types/int")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/bool"))))))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("x" ("tcon" "std/core/types/int"))
                                  ("y" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/bool"))
                              ("fun"
                                (("x" ("tcon" "std/core/types/int"))
                                  ("y" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/bool")))
                            ("var"
                              ("std/core/int/(==)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int"))
                                    ("y" ("tcon" "std/core/types/int")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var" ("k" ("tcon" "std/core/types/int")))
                          ("var" ("key" ("tcon" "std/core/types/int")))))
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
                                ("con"
                                  "bootstrap/validation/example/example4/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/example4/tree"
                                    "as-list"
                                    ("value-repr" "1" "3" "8")
                                    "bootstrap/validation/example/example4/Leaf"
                                    "none"
                                    "1"))
                                ("var"
                                  ("lchild"
                                    ("tcon"
                                      "bootstrap/validation/example/example4/tree")))
                                ("var" ("k" ("tcon" "std/core/types/int")))
                                ("var" ("value" ("tcon" "std/core/types/bool")))
                                ("var"
                                  ("rchild"
                                    ("tcon"
                                      "bootstrap/validation/example/example4/tree")))))))
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
                                                            "std/core/types/int"))
                                                        ("y"
                                                          ("tcon"
                                                            "std/core/types/int")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("x"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("y"
                                                      ("tcon"
                                                        "std/core/types/int")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("x" ("tcon" "std/core/types/int"))
                                            ("y" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("x" ("tcon" "std/core/types/int"))
                                            ("y" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("std/core/int/(<)"
                                          ("fun"
                                            (("x" ("tcon" "std/core/types/int"))
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var" ("k" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("key" ("tcon" "std/core/types/int")))))
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
                                          ("con"
                                            "bootstrap/validation/example/example4/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/example4/tree"
                                              "as-list"
                                              ("value-repr" "1" "3" "8")
                                              "bootstrap/validation/example/example4/Leaf"
                                              "none"
                                              "1"))
                                          ("var"
                                            ("lchild"
                                              ("tcon"
                                                "bootstrap/validation/example/example4/tree")))
                                          ("var"
                                            ("k" ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("value"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("rchild"
                                              ("tcon"
                                                "bootstrap/validation/example/example4/tree")))))))
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
                                          ("con"
                                            "bootstrap/validation/example/example4/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/example4/tree"
                                              "as-list"
                                              ("value-repr" "1" "3" "8")
                                              "bootstrap/validation/example/example4/Leaf"
                                              "none"
                                              "1"))
                                          ("var"
                                            ("lchild"
                                              ("tcon"
                                                "bootstrap/validation/example/example4/tree")))
                                          ("var"
                                            ("key"
                                              ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("value"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("rchild"
                                              ("tcon"
                                                "bootstrap/validation/example/example4/tree")))))))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example4/tree"
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
                      "bootstrap/validation/example/example4/Leaf"
                      ("singleton"
                        "bootstrap/validation/example/example4/tree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "2"))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/example4/show"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/string"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/example4/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/example4/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Node"
                    (("pat-var" "lchild" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "rchild" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/example4/tree"
                      "as-list"
                      ("value-repr" "1" "3" "8")
                      "bootstrap/validation/example/example4/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/example4/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon" "bootstrap/validation/example/example4/tree"))))
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
                                        (("x" ("tcon" "std/core/types/string"))
                                          ("y"
                                            ("tcon" "std/core/types/string")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/string"))
                                      ("y" ("tcon" "std/core/types/string")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("x" ("tcon" "std/core/types/string"))
                              ("y" ("tcon" "std/core/types/string")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/string"))
                          ("fun"
                            (("x" ("tcon" "std/core/types/string"))
                              ("y" ("tcon" "std/core/types/string")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/string")))
                        ("var"
                          ("std/core/types/(++)"
                            ("fun"
                              (("x" ("tcon" "std/core/types/string"))
                                ("y" ("tcon" "std/core/types/string")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/string")))))
                      "\"Node(\""
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
                                          (("x"
                                              ("tcon" "std/core/types/string"))
                                            ("y"
                                              ("tcon" "std/core/types/string")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("x" ("tcon" "std/core/types/string"))
                                        ("y" ("tcon" "std/core/types/string")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/string"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("x" ("tcon" "std/core/types/string"))
                                ("y" ("tcon" "std/core/types/string")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/string"))
                            ("fun"
                              (("x" ("tcon" "std/core/types/string"))
                                ("y" ("tcon" "std/core/types/string")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/string")))
                          ("var"
                            ("std/core/types/(++)"
                              ("fun"
                                (("x" ("tcon" "std/core/types/string"))
                                  ("y" ("tcon" "std/core/types/string")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string")))))
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
                                                  "bootstrap/validation/example/example4/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/example4/tree")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string"))))))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("t"
                                    ("tcon"
                                      "bootstrap/validation/example/example4/tree")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string"))
                              ("fun"
                                (("t"
                                    ("tcon"
                                      "bootstrap/validation/example/example4/tree")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string")))
                            ("var"
                              ("bootstrap/validation/example/example4/show"
                                ("fun"
                                  (("t"
                                      ("tcon"
                                        "bootstrap/validation/example/example4/tree")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string")))))
                          ("var"
                            ("lchild"
                              ("tcon"
                                "bootstrap/validation/example/example4/tree"))))
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
                                            (("x"
                                                ("tcon"
                                                  "std/core/types/string"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/string")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/string"))
                                          ("y"
                                            ("tcon" "std/core/types/string")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string"))))))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("x" ("tcon" "std/core/types/string"))
                                  ("y" ("tcon" "std/core/types/string")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string"))
                              ("fun"
                                (("x" ("tcon" "std/core/types/string"))
                                  ("y" ("tcon" "std/core/types/string")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string")))
                            ("var"
                              ("std/core/types/(++)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/string"))
                                    ("y" ("tcon" "std/core/types/string")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string")))))
                          "\", \""
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
                                              (("x"
                                                  ("tcon"
                                                    "std/core/types/string"))
                                                ("y"
                                                  ("tcon"
                                                    "std/core/types/string")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "std/core/types/string"))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("x"
                                              ("tcon" "std/core/types/string"))
                                            ("y"
                                              ("tcon" "std/core/types/string")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string"))))))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("x" ("tcon" "std/core/types/string"))
                                    ("y" ("tcon" "std/core/types/string")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string"))
                                ("fun"
                                  (("x" ("tcon" "std/core/types/string"))
                                    ("y" ("tcon" "std/core/types/string")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string")))
                              ("var"
                                ("std/core/types/(++)"
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/string"))
                                      ("y" ("tcon" "std/core/types/string")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string")))))
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
                                                (("i"
                                                    ("tcon"
                                                      "std/core/types/int")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "std/core/types/string"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("i"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "std/core/types/string"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string"))
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string")))
                                ("var"
                                  ("std/core/int/show"
                                    ("fun"
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/string")))))
                              ("var" ("k" ("tcon" "std/core/types/int"))))
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
                                                (("x"
                                                    ("tcon"
                                                      "std/core/types/string"))
                                                  ("y"
                                                    ("tcon"
                                                      "std/core/types/string")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "std/core/types/string"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("x"
                                                ("tcon"
                                                  "std/core/types/string"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/string")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "std/core/types/string"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/string"))
                                      ("y" ("tcon" "std/core/types/string")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string"))
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/string"))
                                      ("y" ("tcon" "std/core/types/string")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string")))
                                ("var"
                                  ("std/core/types/(++)"
                                    ("fun"
                                      (("x" ("tcon" "std/core/types/string"))
                                        ("y" ("tcon" "std/core/types/string")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/string")))))
                              "\", \""
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
                                                  (("x"
                                                      ("tcon"
                                                        "std/core/types/string"))
                                                    ("y"
                                                      ("tcon"
                                                        "std/core/types/string")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "std/core/types/string"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("x"
                                                  ("tcon"
                                                    "std/core/types/string"))
                                                ("y"
                                                  ("tcon"
                                                    "std/core/types/string")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "std/core/types/string"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("x" ("tcon" "std/core/types/string"))
                                        ("y" ("tcon" "std/core/types/string")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/string"))
                                    ("fun"
                                      (("x" ("tcon" "std/core/types/string"))
                                        ("y" ("tcon" "std/core/types/string")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/string")))
                                  ("var"
                                    ("std/core/types/(++)"
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/string"))
                                          ("y"
                                            ("tcon" "std/core/types/string")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string")))))
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
                                                    (("b"
                                                        ("tcon"
                                                          "std/core/types/bool")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "std/core/types/string"))))
                                              ("tcon" "std/core/types/total")
                                              ("fun"
                                                (("b"
                                                    ("tcon"
                                                      "std/core/types/bool")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "std/core/types/string"))))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("b" ("tcon" "std/core/types/bool")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string"))
                                      ("fun"
                                        (("b" ("tcon" "std/core/types/bool")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string")))
                                    ("var"
                                      ("std/core/bool/show"
                                        ("fun"
                                          (("b" ("tcon" "std/core/types/bool")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string")))))
                                  ("var" ("v" ("tcon" "std/core/types/bool"))))
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
                                                    (("x"
                                                        ("tcon"
                                                          "std/core/types/string"))
                                                      ("y"
                                                        ("tcon"
                                                          "std/core/types/string")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "std/core/types/string"))))
                                              ("tcon" "std/core/types/total")
                                              ("fun"
                                                (("x"
                                                    ("tcon"
                                                      "std/core/types/string"))
                                                  ("y"
                                                    ("tcon"
                                                      "std/core/types/string")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "std/core/types/string"))))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/string"))
                                          ("y"
                                            ("tcon" "std/core/types/string")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string"))
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/string"))
                                          ("y"
                                            ("tcon" "std/core/types/string")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/string")))
                                    ("var"
                                      ("std/core/types/(++)"
                                        ("fun"
                                          (("x"
                                              ("tcon" "std/core/types/string"))
                                            ("y"
                                              ("tcon" "std/core/types/string")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string")))))
                                  "\", \""
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
                                                      (("x"
                                                          ("tcon"
                                                            "std/core/types/string"))
                                                        ("y"
                                                          ("tcon"
                                                            "std/core/types/string")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/string"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("x"
                                                      ("tcon"
                                                        "std/core/types/string"))
                                                    ("y"
                                                      ("tcon"
                                                        "std/core/types/string")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "std/core/types/string"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("x"
                                              ("tcon" "std/core/types/string"))
                                            ("y"
                                              ("tcon" "std/core/types/string")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string"))
                                        ("fun"
                                          (("x"
                                              ("tcon" "std/core/types/string"))
                                            ("y"
                                              ("tcon" "std/core/types/string")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/string")))
                                      ("var"
                                        ("std/core/types/(++)"
                                          ("fun"
                                            (("x"
                                                ("tcon"
                                                  "std/core/types/string"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/string")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string")))))
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
                                                              "bootstrap/validation/example/example4/tree")))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tcon"
                                                          "std/core/types/string"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/example4/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "std/core/types/string"))))))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/example4/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string"))
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/example4/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string")))
                                        ("var"
                                          ("bootstrap/validation/example/example4/show"
                                            ("fun"
                                              (("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/example4/tree")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "std/core/types/string")))))
                                      ("var"
                                        ("rchild"
                                          ("tcon"
                                            "bootstrap/validation/example/example4/tree"))))
                                    "\")\"")))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/example4/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/example4/tree"
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
                    "\"Leaf\""))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/example4/main"
        ("fun"
          ()
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tcon" "std/core/types/total"))
          ("tcon" "std/core/types/unit"))
        ("lam"
          ()
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tcon" "std/core/types/total"))
          ("let"
            (("non-rec"
                ("def"
                  "t"
                  ("tcon" "bootstrap/validation/example/example4/tree")
                  ("app"
                    ("con"
                      "bootstrap/validation/example/example4/Node"
                      ("as-cons"
                        "bootstrap/validation/example/example4/tree"
                        "as-list"
                        ("value-repr" "1" "3" "8")
                        "bootstrap/validation/example/example4/Leaf"
                        "none"
                        "1"))
                    ("app"
                      ("con"
                        "bootstrap/validation/example/example4/Node"
                        ("as-cons"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "1" "3" "8")
                          "bootstrap/validation/example/example4/Leaf"
                          "none"
                          "1"))
                      ("con"
                        "bootstrap/validation/example/example4/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      "1"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("con"
                        "bootstrap/validation/example/example4/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2")))
                    "2"
                    ("con"
                      "std/core/types/False"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "1"))
                    ("app"
                      ("con"
                        "bootstrap/validation/example/example4/Node"
                        ("as-cons"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "1" "3" "8")
                          "bootstrap/validation/example/example4/Leaf"
                          "none"
                          "1"))
                      ("con"
                        "bootstrap/validation/example/example4/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      "3"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("con"
                        "bootstrap/validation/example/example4/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/example4/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2"))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "new_t"
                  ("tcon" "bootstrap/validation/example/example4/tree")
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
                                            "bootstrap/validation/example/example4/tree"))
                                        ("key" ("tcon" "std/core/types/int"))
                                        ("value"
                                          ("tcon" "std/core/types/bool")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/example4/tree"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("t"
                                      ("tcon"
                                        "bootstrap/validation/example/example4/tree"))
                                    ("key" ("tcon" "std/core/types/int"))
                                    ("value" ("tcon" "std/core/types/bool")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon"
                                    "bootstrap/validation/example/example4/tree"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/console/console")
                          ("tcon" "std/core/types/total"))
                        ("fun"
                          (("t"
                              ("tcon"
                                "bootstrap/validation/example/example4/tree"))
                            ("key" ("tcon" "std/core/types/int"))
                            ("value" ("tcon" "std/core/types/bool")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "bootstrap/validation/example/example4/tree"))
                        ("fun"
                          (("t"
                              ("tcon"
                                "bootstrap/validation/example/example4/tree"))
                            ("key" ("tcon" "std/core/types/int"))
                            ("value" ("tcon" "std/core/types/bool")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/console/console")
                            ("tcon" "std/core/types/total"))
                          ("tcon"
                            "bootstrap/validation/example/example4/tree")))
                      ("var"
                        ("bootstrap/validation/example/example4/replace"
                          ("fun"
                            (("t"
                                ("tcon"
                                  "bootstrap/validation/example/example4/tree"))
                              ("key" ("tcon" "std/core/types/int"))
                              ("value" ("tcon" "std/core/types/bool")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/example4/tree")))))
                    ("var"
                      ("t"
                        ("tcon" "bootstrap/validation/example/example4/tree")))
                    "2"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2")))
                  "def-val")))
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
                                (("s" ("tcon" "std/core/types/string")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tcon" "std/core/types/total"))
                                ("tcon" "std/core/types/unit"))))
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("s" ("tcon" "std/core/types/string")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tcon" "std/core/types/total"))
                            ("tcon" "std/core/types/unit"))))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tcon" "std/core/types/total"))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tcon" "std/core/types/total"))
                  ("fun"
                    (("s" ("tcon" "std/core/types/string")))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tcon" "std/core/types/total"))
                    ("tcon" "std/core/types/unit"))
                  ("fun"
                    (("s" ("tcon" "std/core/types/string")))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tcon" "std/core/types/total"))
                    ("tcon" "std/core/types/unit")))
                ("var"
                  ("std/core/console/#string/print"
                    ("fun"
                      (("s" ("tcon" "std/core/types/string")))
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/console/console")
                        ("tcon" "std/core/types/total"))
                      ("tcon" "std/core/types/unit")))))
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
                                        "bootstrap/validation/example/example4/tree")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string"))))
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/example4/tree")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total"))
                              ("tcon" "std/core/types/string"))))))
                    ("tcon" "std/core/types/total")
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tcon" "std/core/types/total"))
                    ("fun"
                      (("t"
                          ("tcon"
                            "bootstrap/validation/example/example4/tree")))
                      ("tcon" "std/core/types/total")
                      ("tcon" "std/core/types/string"))
                    ("fun"
                      (("t"
                          ("tcon"
                            "bootstrap/validation/example/example4/tree")))
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/console/console")
                        ("tcon" "std/core/types/total"))
                      ("tcon" "std/core/types/string")))
                  ("var"
                    ("bootstrap/validation/example/example4/show"
                      ("fun"
                        (("t"
                            ("tcon"
                              "bootstrap/validation/example/example4/tree")))
                        ("tcon" "std/core/types/total")
                        ("tcon" "std/core/types/string")))))
                ("var"
                  ("new_t"
                    ("tcon" "bootstrap/validation/example/example4/tree")))))))
        ("def-fun" () ("no-fip" "False"))))))
