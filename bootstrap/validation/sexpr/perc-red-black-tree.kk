("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/perc-red-black-tree/color"
          ()
          (("con-info"
              "bootstrap/validation/example/perc-red-black-tree/Red"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/perc-red-black-tree/Black"
              ()
              "nothing"))
          "False"
          ("value" ("value-repr" "1" "0" "1")))))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/perc-red-black-tree/tree"
          ()
          (("con-info"
              "bootstrap/validation/example/perc-red-black-tree/Leaf"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/perc-red-black-tree/Node"
              (("color"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/color"))
                ("left"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                ("key" ("tcon" "std/core/types/int"))
                ("value" ("tcon" "std/core/types/bool"))
                ("right"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree")))
              "nothing"))
          "True"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/is-red"
        ("fun"
          (("color"
              ("tcon"
                "bootstrap/validation/example/perc-red-black-tree/color")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("color"
              ("tcon"
                "bootstrap/validation/example/perc-red-black-tree/color")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("color"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/color"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Red"
                    ()
                    ("enum"
                      "bootstrap/validation/example/perc-red-black-tree/color"
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
                    "bootstrap/validation/example/perc-red-black-tree/Black"
                    ()
                    ("enum"
                      "bootstrap/validation/example/perc-red-black-tree/color"
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
        "bootstrap/validation/example/perc-red-black-tree/is-black"
        ("fun"
          (("color"
              ("tcon"
                "bootstrap/validation/example/perc-red-black-tree/color")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("color"
              ("tcon"
                "bootstrap/validation/example/perc-red-black-tree/color")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("color"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/color"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Black"
                    ()
                    ("enum"
                      "bootstrap/validation/example/perc-red-black-tree/color"
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
                    "bootstrap/validation/example/perc-red-black-tree/Red"
                    ()
                    ("enum"
                      "bootstrap/validation/example/perc-red-black-tree/color"
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
        "bootstrap/validation/example/perc-red-black-tree/is-leaf"
        ("fun"
          (("tree"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
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
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
        "bootstrap/validation/example/perc-red-black-tree/is-node"
        ("fun"
          (("tree"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("tree"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("tree"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild" "pat-wild" "pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
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
        "bootstrap/validation/example/perc-red-black-tree/#tree/is-red"
        ("fun"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    (("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ()
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      "pat-wild"
                      "pat-wild"
                      "pat-wild"
                      "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
        "bootstrap/validation/example/perc-red-black-tree/bal-left"
        ("fun"
          (("l"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool"))
            ("r"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
        ("lam"
          (("l"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool"))
            ("r"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("l"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        (("pat-con"
                            "bootstrap/validation/example/perc-red-black-tree/Red"
                            ()
                            ("enum"
                              "bootstrap/validation/example/perc-red-black-tree/color"
                              "enum"
                              ("value-repr" "0" "0" "0")
                              "1")
                            ())
                          ("pat-var" "lx" "pat-wild")
                          ("pat-var" "kx" "pat-wild")
                          ("pat-var" "vx" "pat-wild")
                          ("pat-var" "rx" "pat-wild"))
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2")
                        (("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/color")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")
                          ("tcon" "std/core/types/int")
                          ("tcon" "std/core/types/bool")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("pat-var" "ky" "pat-wild")
                      ("pat-var" "vy" "pat-wild")
                      ("pat-var" "ry" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("kx" ("tcon" "std/core/types/int")))
                        ("var" ("vx" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("rx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                      ("var" ("ky" ("tcon" "std/core/types/int")))
                      ("var" ("vy" ("tcon" "std/core/types/bool")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("ry"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-var" "ly" "pat-wild")
                      ("pat-var" "ky" "pat-wild")
                      ("pat-var" "vy" "pat-wild")
                      ("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        (("pat-con"
                            "bootstrap/validation/example/perc-red-black-tree/Red"
                            ()
                            ("enum"
                              "bootstrap/validation/example/perc-red-black-tree/color"
                              "enum"
                              ("value-repr" "0" "0" "0")
                              "1")
                            ())
                          ("pat-var" "lx" "pat-wild")
                          ("pat-var" "kx" "pat-wild")
                          ("pat-var" "vx" "pat-wild")
                          ("pat-var" "rx" "pat-wild"))
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2")
                        (("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/color")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")
                          ("tcon" "std/core/types/int")
                          ("tcon" "std/core/types/bool")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree"))))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("ly"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("ky" ("tcon" "std/core/types/int")))
                        ("var" ("vy" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                      ("var" ("kx" ("tcon" "std/core/types/int")))
                      ("var" ("vx" ("tcon" "std/core/types/bool")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("rx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-var" "lx" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-var" "rx" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Black"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Red"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "1"))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("kx" ("tcon" "std/core/types/int")))
                        ("var" ("vx" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("rx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                      ("var" ("k" ("tcon" "std/core/types/int")))
                      ("var" ("v" ("tcon" "std/core/types/bool")))
                      ("var"
                        ("r"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
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
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      ("singleton"
                        "bootstrap/validation/example/perc-red-black-tree/tree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" () ("fbip" ("at-most" "0") "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/bal-right"
        ("fun"
          (("l"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool"))
            ("r"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
        ("lam"
          (("l"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool"))
            ("r"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("r"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        (("pat-con"
                            "bootstrap/validation/example/perc-red-black-tree/Red"
                            ()
                            ("enum"
                              "bootstrap/validation/example/perc-red-black-tree/color"
                              "enum"
                              ("value-repr" "0" "0" "0")
                              "1")
                            ())
                          ("pat-var" "lx" "pat-wild")
                          ("pat-var" "kx" "pat-wild")
                          ("pat-var" "vx" "pat-wild")
                          ("pat-var" "rx" "pat-wild"))
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2")
                        (("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/color")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")
                          ("tcon" "std/core/types/int")
                          ("tcon" "std/core/types/bool")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("pat-var" "ky" "pat-wild")
                      ("pat-var" "vy" "pat-wild")
                      ("pat-var" "ry" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("l"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                      ("var" ("kx" ("tcon" "std/core/types/int")))
                      ("var" ("vx" ("tcon" "std/core/types/bool")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("rx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("ky" ("tcon" "std/core/types/int")))
                        ("var" ("vy" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("ry"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-var" "lx" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        (("pat-con"
                            "bootstrap/validation/example/perc-red-black-tree/Red"
                            ()
                            ("enum"
                              "bootstrap/validation/example/perc-red-black-tree/color"
                              "enum"
                              ("value-repr" "0" "0" "0")
                              "1")
                            ())
                          ("pat-var" "ly" "pat-wild")
                          ("pat-var" "ky" "pat-wild")
                          ("pat-var" "vy" "pat-wild")
                          ("pat-var" "ry" "pat-wild"))
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2")
                        (("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/color")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")
                          ("tcon" "std/core/types/int")
                          ("tcon" "std/core/types/bool")
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree"))))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("l"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int")))
                        ("var" ("v" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                      ("var" ("kx" ("tcon" "std/core/types/int")))
                      ("var" ("vx" ("tcon" "std/core/types/bool")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Black"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var"
                          ("ly"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("ky" ("tcon" "std/core/types/int")))
                        ("var" ("vy" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("ry"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-var" "lx" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-var" "rx" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Black"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var"
                        ("l"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("var" ("k" ("tcon" "std/core/types/int")))
                      ("var" ("v" ("tcon" "std/core/types/bool")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Node"
                          ("as-cons"
                            "bootstrap/validation/example/perc-red-black-tree/tree"
                            "as-list"
                            ("value-repr" "2" "3" "8")
                            "bootstrap/validation/example/perc-red-black-tree/Leaf"
                            "none"
                            "2"))
                        ("con"
                          "bootstrap/validation/example/perc-red-black-tree/Red"
                          ("enum"
                            "bootstrap/validation/example/perc-red-black-tree/color"
                            "enum"
                            ("value-repr" "0" "0" "0")
                            "1"))
                        ("var"
                          ("lx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("kx" ("tcon" "std/core/types/int")))
                        ("var" ("vx" ("tcon" "std/core/types/bool")))
                        ("var"
                          ("rx"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
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
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      ("singleton"
                        "bootstrap/validation/example/perc-red-black-tree/tree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "1"))))))))
        ("def-fun" () ("fbip" ("at-most" "0") "False"))))
    ("rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/ins"
        ("fun"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
        ("lam"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("var" ("k" ("tcon" "std/core/types/int")))
                      ("var" ("v" ("tcon" "std/core/types/bool")))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "1"))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    (("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Red"
                        ()
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                              ("std/core/int/(<)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int"))
                                    ("y" ("tcon" "std/core/types/int")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var" ("k" ("tcon" "std/core/types/int")))
                          ("var" ("kx" ("tcon" "std/core/types/int")))))
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
                                  "bootstrap/validation/example/perc-red-black-tree/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/perc-red-black-tree/tree"
                                    "as-list"
                                    ("value-repr" "2" "3" "8")
                                    "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                    "none"
                                    "2"))
                                ("con"
                                  "bootstrap/validation/example/perc-red-black-tree/Red"
                                  ("enum"
                                    "bootstrap/validation/example/perc-red-black-tree/color"
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
                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                      ("k"
                                                        ("tcon"
                                                          "std/core/types/int"))
                                                      ("v"
                                                        ("tcon"
                                                          "std/core/types/bool")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                              ("tcon" "std/core/types/total")
                                              ("fun"
                                                (("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                  ("k"
                                                    ("tcon"
                                                      "std/core/types/int"))
                                                  ("v"
                                                    ("tcon"
                                                      "std/core/types/bool")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                          ("k" ("tcon" "std/core/types/int"))
                                          ("v" ("tcon" "std/core/types/bool")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                      ("fun"
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                          ("k" ("tcon" "std/core/types/int"))
                                          ("v" ("tcon" "std/core/types/bool")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                    ("var"
                                      ("bootstrap/validation/example/perc-red-black-tree/ins"
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                            ("k" ("tcon" "std/core/types/int"))
                                            ("v"
                                              ("tcon" "std/core/types/bool")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon"
                                            "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                  ("var"
                                    ("l"
                                      ("tcon"
                                        "bootstrap/validation/example/perc-red-black-tree/tree")))
                                  ("var" ("k" ("tcon" "std/core/types/int")))
                                  ("var" ("v" ("tcon" "std/core/types/bool"))))
                                ("var" ("kx" ("tcon" "std/core/types/int")))
                                ("var" ("vx" ("tcon" "std/core/types/bool")))
                                ("var"
                                  ("r"
                                    ("tcon"
                                      "bootstrap/validation/example/perc-red-black-tree/tree")))))))
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
                                        ("std/core/int/(==)"
                                          ("fun"
                                            (("x" ("tcon" "std/core/types/int"))
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var" ("k" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("kx" ("tcon" "std/core/types/int")))))
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
                                            "bootstrap/validation/example/perc-red-black-tree/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"
                                              "as-list"
                                              ("value-repr" "2" "3" "8")
                                              "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                              "none"
                                              "2"))
                                          ("con"
                                            "bootstrap/validation/example/perc-red-black-tree/Red"
                                            ("enum"
                                              "bootstrap/validation/example/perc-red-black-tree/color"
                                              "enum"
                                              ("value-repr" "0" "0" "0")
                                              "1"))
                                          ("var"
                                            ("l"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                          ("var"
                                            ("k" ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("v"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))))))
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
                                            "bootstrap/validation/example/perc-red-black-tree/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"
                                              "as-list"
                                              ("value-repr" "2" "3" "8")
                                              "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                              "none"
                                              "2"))
                                          ("con"
                                            "bootstrap/validation/example/perc-red-black-tree/Red"
                                            ("enum"
                                              "bootstrap/validation/example/perc-red-black-tree/color"
                                              "enum"
                                              ("value-repr" "0" "0" "0")
                                              "1"))
                                          ("var"
                                            ("l"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                          ("var"
                                            ("kx"
                                              ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("vx"
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
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                ("k"
                                                                  ("tcon"
                                                                    "std/core/types/int"))
                                                                ("v"
                                                                  ("tcon"
                                                                    "std/core/types/bool")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("fun"
                                                          (("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                            ("k"
                                                              ("tcon"
                                                                "std/core/types/int"))
                                                            ("v"
                                                              ("tcon"
                                                                "std/core/types/bool")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree")))
                                              ("var"
                                                ("bootstrap/validation/example/perc-red-black-tree/ins"
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                      ("k"
                                                        ("tcon"
                                                          "std/core/types/int"))
                                                      ("v"
                                                        ("tcon"
                                                          "std/core/types/bool")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                            ("var"
                                              ("r"
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                            ("var"
                                              ("k"
                                                ("tcon" "std/core/types/int")))
                                            ("var"
                                              ("v"
                                                ("tcon"
                                                  "std/core/types/bool"))))))))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    (("pat-con"
                        "bootstrap/validation/example/perc-red-black-tree/Black"
                        ()
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2")
                        ())
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "kx" "pat-wild")
                      ("pat-var" "vx" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                              ("std/core/int/(<)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int"))
                                    ("y" ("tcon" "std/core/types/int")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var" ("k" ("tcon" "std/core/types/int")))
                          ("var" ("kx" ("tcon" "std/core/types/int")))))
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
                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool"))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool"))
                                        ("fun"
                                          (("t"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("bootstrap/validation/example/perc-red-black-tree/#tree/is-red"
                                          ("fun"
                                            (("t"
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("l"
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree")))))
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
                                                            (("l"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool"))
                                                              ("r"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("l"
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                          ("k"
                                                            ("tcon"
                                                              "std/core/types/int"))
                                                          ("v"
                                                            ("tcon"
                                                              "std/core/types/bool"))
                                                          ("r"
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                              ("tcon" "std/core/types/total")
                                              ("tcon" "std/core/types/total")
                                              ("fun"
                                                (("l"
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                  ("k"
                                                    ("tcon"
                                                      "std/core/types/int"))
                                                  ("v"
                                                    ("tcon"
                                                      "std/core/types/bool"))
                                                  ("r"
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                              ("fun"
                                                (("l"
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                  ("k"
                                                    ("tcon"
                                                      "std/core/types/int"))
                                                  ("v"
                                                    ("tcon"
                                                      "std/core/types/bool"))
                                                  ("r"
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                            ("var"
                                              ("bootstrap/validation/example/perc-red-black-tree/bal-left"
                                                ("fun"
                                                  (("l"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool"))
                                                    ("r"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree")))))
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
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                ("k"
                                                                  ("tcon"
                                                                    "std/core/types/int"))
                                                                ("v"
                                                                  ("tcon"
                                                                    "std/core/types/bool")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("fun"
                                                          (("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                            ("k"
                                                              ("tcon"
                                                                "std/core/types/int"))
                                                            ("v"
                                                              ("tcon"
                                                                "std/core/types/bool")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree")))
                                              ("var"
                                                ("bootstrap/validation/example/perc-red-black-tree/ins"
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                      ("k"
                                                        ("tcon"
                                                          "std/core/types/int"))
                                                      ("v"
                                                        ("tcon"
                                                          "std/core/types/bool")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                            ("var"
                                              ("l"
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                            ("var"
                                              ("k"
                                                ("tcon" "std/core/types/int")))
                                            ("var"
                                              ("v"
                                                ("tcon"
                                                  "std/core/types/bool"))))
                                          ("var"
                                            ("kx"
                                              ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("vx"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))))))
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
                                            "bootstrap/validation/example/perc-red-black-tree/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"
                                              "as-list"
                                              ("value-repr" "2" "3" "8")
                                              "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                              "none"
                                              "2"))
                                          ("con"
                                            "bootstrap/validation/example/perc-red-black-tree/Black"
                                            ("enum"
                                              "bootstrap/validation/example/perc-red-black-tree/color"
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
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                ("k"
                                                                  ("tcon"
                                                                    "std/core/types/int"))
                                                                ("v"
                                                                  ("tcon"
                                                                    "std/core/types/bool")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("fun"
                                                          (("t"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                            ("k"
                                                              ("tcon"
                                                                "std/core/types/int"))
                                                            ("v"
                                                              ("tcon"
                                                                "std/core/types/bool")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                    ("k"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("v"
                                                      ("tcon"
                                                        "std/core/types/bool")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree")))
                                              ("var"
                                                ("bootstrap/validation/example/perc-red-black-tree/ins"
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                      ("k"
                                                        ("tcon"
                                                          "std/core/types/int"))
                                                      ("v"
                                                        ("tcon"
                                                          "std/core/types/bool")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                            ("var"
                                              ("l"
                                                ("tcon"
                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                            ("var"
                                              ("k"
                                                ("tcon" "std/core/types/int")))
                                            ("var"
                                              ("v"
                                                ("tcon"
                                                  "std/core/types/bool"))))
                                          ("var"
                                            ("kx"
                                              ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("vx"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree"))))))))))))
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
                                        ("std/core/int/(==)"
                                          ("fun"
                                            (("x" ("tcon" "std/core/types/int"))
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var" ("k" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("kx" ("tcon" "std/core/types/int")))))
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
                                            "bootstrap/validation/example/perc-red-black-tree/Node"
                                            ("as-cons"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"
                                              "as-list"
                                              ("value-repr" "2" "3" "8")
                                              "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                              "none"
                                              "2"))
                                          ("con"
                                            "bootstrap/validation/example/perc-red-black-tree/Black"
                                            ("enum"
                                              "bootstrap/validation/example/perc-red-black-tree/color"
                                              "enum"
                                              ("value-repr" "0" "0" "0")
                                              "2"))
                                          ("var"
                                            ("l"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                          ("var"
                                            ("k" ("tcon" "std/core/types/int")))
                                          ("var"
                                            ("v"
                                              ("tcon" "std/core/types/bool")))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/perc-red-black-tree/tree")))))))
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
                                                                (("t"
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("tcon"
                                                                  "std/core/types/bool"))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "std/core/types/bool"))))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "std/core/types/bool"))
                                                  ("fun"
                                                    (("t"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "std/core/types/bool")))
                                                ("var"
                                                  ("bootstrap/validation/example/perc-red-black-tree/#tree/is-red"
                                                    ("fun"
                                                      (("t"
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("tcon"
                                                        "std/core/types/bool")))))
                                              ("var"
                                                ("r"
                                                  ("tcon"
                                                    "bootstrap/validation/example/perc-red-black-tree/tree")))))
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
                                                              ("-3"
                                                                "-4"
                                                                "-1"
                                                                "-2")
                                                              ("fun"
                                                                (("x"
                                                                    ("fun"
                                                                      (("l"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                        ("k"
                                                                          ("tcon"
                                                                            "std/core/types/int"))
                                                                        ("v"
                                                                          ("tcon"
                                                                            "std/core/types/bool"))
                                                                        ("r"
                                                                          ("tcon"
                                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                                      ("tcon"
                                                                        "std/core/types/total")
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                                ("tcon"
                                                                  "std/core/types/total")
                                                                ("fun"
                                                                  (("l"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                    ("k"
                                                                      ("tcon"
                                                                        "std/core/types/int"))
                                                                    ("v"
                                                                      ("tcon"
                                                                        "std/core/types/bool"))
                                                                    ("r"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                                  ("tcon"
                                                                    "std/core/types/total")
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("fun"
                                                          (("l"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                            ("k"
                                                              ("tcon"
                                                                "std/core/types/int"))
                                                            ("v"
                                                              ("tcon"
                                                                "std/core/types/bool"))
                                                            ("r"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                        ("fun"
                                                          (("l"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                            ("k"
                                                              ("tcon"
                                                                "std/core/types/int"))
                                                            ("v"
                                                              ("tcon"
                                                                "std/core/types/bool"))
                                                            ("r"
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                      ("var"
                                                        ("bootstrap/validation/example/perc-red-black-tree/bal-right"
                                                          ("fun"
                                                            (("l"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool"))
                                                              ("r"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                                    ("var"
                                                      ("l"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                    ("var"
                                                      ("kx"
                                                        ("tcon"
                                                          "std/core/types/int")))
                                                    ("var"
                                                      ("vx"
                                                        ("tcon"
                                                          "std/core/types/bool")))
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
                                                                        (("t"
                                                                            ("tcon"
                                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                          ("k"
                                                                            ("tcon"
                                                                              "std/core/types/int"))
                                                                          ("v"
                                                                            ("tcon"
                                                                              "std/core/types/bool")))
                                                                        ("tcon"
                                                                          "std/core/types/total")
                                                                        ("tcon"
                                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                                  ("tcon"
                                                                    "std/core/types/total")
                                                                  ("fun"
                                                                    (("t"
                                                                        ("tcon"
                                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                      ("k"
                                                                        ("tcon"
                                                                          "std/core/types/int"))
                                                                      ("v"
                                                                        ("tcon"
                                                                          "std/core/types/bool")))
                                                                    ("tcon"
                                                                      "std/core/types/total")
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                        ("var"
                                                          ("bootstrap/validation/example/perc-red-black-tree/ins"
                                                            ("fun"
                                                              (("t"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                ("k"
                                                                  ("tcon"
                                                                    "std/core/types/int"))
                                                                ("v"
                                                                  ("tcon"
                                                                    "std/core/types/bool")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                                      ("var"
                                                        ("r"
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                      ("var"
                                                        ("k"
                                                          ("tcon"
                                                            "std/core/types/int")))
                                                      ("var"
                                                        ("v"
                                                          ("tcon"
                                                            "std/core/types/bool"))))))))
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
                                                      "bootstrap/validation/example/perc-red-black-tree/Node"
                                                      ("as-cons"
                                                        "bootstrap/validation/example/perc-red-black-tree/tree"
                                                        "as-list"
                                                        ("value-repr"
                                                          "2"
                                                          "3"
                                                          "8")
                                                        "bootstrap/validation/example/perc-red-black-tree/Leaf"
                                                        "none"
                                                        "2"))
                                                    ("con"
                                                      "bootstrap/validation/example/perc-red-black-tree/Black"
                                                      ("enum"
                                                        "bootstrap/validation/example/perc-red-black-tree/color"
                                                        "enum"
                                                        ("value-repr"
                                                          "0"
                                                          "0"
                                                          "0")
                                                        "2"))
                                                    ("var"
                                                      ("l"
                                                        ("tcon"
                                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                    ("var"
                                                      ("kx"
                                                        ("tcon"
                                                          "std/core/types/int")))
                                                    ("var"
                                                      ("vx"
                                                        ("tcon"
                                                          "std/core/types/bool")))
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
                                                                        (("t"
                                                                            ("tcon"
                                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                          ("k"
                                                                            ("tcon"
                                                                              "std/core/types/int"))
                                                                          ("v"
                                                                            ("tcon"
                                                                              "std/core/types/bool")))
                                                                        ("tcon"
                                                                          "std/core/types/total")
                                                                        ("tcon"
                                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                                                  ("tcon"
                                                                    "std/core/types/total")
                                                                  ("fun"
                                                                    (("t"
                                                                        ("tcon"
                                                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                      ("k"
                                                                        ("tcon"
                                                                          "std/core/types/int"))
                                                                      ("v"
                                                                        ("tcon"
                                                                          "std/core/types/bool")))
                                                                    ("tcon"
                                                                      "std/core/types/total")
                                                                    ("tcon"
                                                                      "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                          ("fun"
                                                            (("t"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                              ("k"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("v"
                                                                ("tcon"
                                                                  "std/core/types/bool")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tcon"
                                                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                        ("var"
                                                          ("bootstrap/validation/example/perc-red-black-tree/ins"
                                                            ("fun"
                                                              (("t"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                                                ("k"
                                                                  ("tcon"
                                                                    "std/core/types/int"))
                                                                ("v"
                                                                  ("tcon"
                                                                    "std/core/types/bool")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/perc-red-black-tree/tree")))))
                                                      ("var"
                                                        ("r"
                                                          ("tcon"
                                                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                                                      ("var"
                                                        ("k"
                                                          ("tcon"
                                                            "std/core/types/int")))
                                                      ("var"
                                                        ("v"
                                                          ("tcon"
                                                            "std/core/types/bool"))))))))))))))))))))))))))
        ("def-fun" () ("fbip" ("at-most" "0") "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/set-black"
        ("fun"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
        ("lam"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t"
                  ("tcon"
                    "bootstrap/validation/example/perc-red-black-tree/tree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/perc-red-black-tree/Node"
                    ("pat-wild"
                      ("pat-var" "l" "pat-wild")
                      ("pat-var" "k" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/perc-red-black-tree/tree"
                      "as-list"
                      ("value-repr" "2" "3" "8")
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/color")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/perc-red-black-tree/tree"))))
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
                        "bootstrap/validation/example/perc-red-black-tree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/perc-red-black-tree/tree"
                          "as-list"
                          ("value-repr" "2" "3" "8")
                          "bootstrap/validation/example/perc-red-black-tree/Leaf"
                          "none"
                          "2"))
                      ("con"
                        "bootstrap/validation/example/perc-red-black-tree/Black"
                        ("enum"
                          "bootstrap/validation/example/perc-red-black-tree/color"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var"
                        ("l"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("var" ("k" ("tcon" "std/core/types/int")))
                      ("var" ("v" ("tcon" "std/core/types/bool")))
                      ("var"
                        ("r"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))))))
              ("branch"
                (("pat-var"
                    "t"
                    ("pat-con"
                      "bootstrap/validation/example/perc-red-black-tree/Leaf"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/perc-red-black-tree/tree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "1")
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
                          "bootstrap/validation/example/perc-red-black-tree/tree")))))))))
        ("def-fun" () ("fbip" ("at-most" "0") "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/insert"
        ("fun"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
        ("lam"
          (("t"
              ("tcon" "bootstrap/validation/example/perc-red-black-tree/tree"))
            ("k" ("tcon" "std/core/types/int"))
            ("v" ("tcon" "std/core/types/bool")))
          ("tcon" "std/core/types/total")
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
                                        "bootstrap/validation/example/perc-red-black-tree/tree")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool"))))
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/perc-red-black-tree/tree")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/bool"))))))
                    ("tcon" "std/core/types/total")
                    ("tcon" "std/core/types/total")
                    ("fun"
                      (("t"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("tcon" "std/core/types/total")
                      ("tcon" "std/core/types/bool"))
                    ("fun"
                      (("t"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("tcon" "std/core/types/total")
                      ("tcon" "std/core/types/bool")))
                  ("var"
                    ("bootstrap/validation/example/perc-red-black-tree/#tree/is-red"
                      ("fun"
                        (("t"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("tcon" "std/core/types/total")
                        ("tcon" "std/core/types/bool")))))
                ("var"
                  ("t"
                    ("tcon"
                      "bootstrap/validation/example/perc-red-black-tree/tree")))))
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
                                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("t"
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("t"
                                ("tcon"
                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                          ("fun"
                            (("t"
                                ("tcon"
                                  "bootstrap/validation/example/perc-red-black-tree/tree")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var"
                          ("bootstrap/validation/example/perc-red-black-tree/set-black"
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/perc-red-black-tree/tree")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/perc-red-black-tree/tree")))))
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
                                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                                            ("k" ("tcon" "std/core/types/int"))
                                            ("v"
                                              ("tcon" "std/core/types/bool")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon"
                                            "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/perc-red-black-tree/tree"))
                                        ("k" ("tcon" "std/core/types/int"))
                                        ("v" ("tcon" "std/core/types/bool")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                ("k" ("tcon" "std/core/types/int"))
                                ("v" ("tcon" "std/core/types/bool")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/perc-red-black-tree/tree"))
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                ("k" ("tcon" "std/core/types/int"))
                                ("v" ("tcon" "std/core/types/bool")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/perc-red-black-tree/tree")))
                          ("var"
                            ("bootstrap/validation/example/perc-red-black-tree/ins"
                              ("fun"
                                (("t"
                                    ("tcon"
                                      "bootstrap/validation/example/perc-red-black-tree/tree"))
                                  ("k" ("tcon" "std/core/types/int"))
                                  ("v" ("tcon" "std/core/types/bool")))
                                ("tcon" "std/core/types/total")
                                ("tcon"
                                  "bootstrap/validation/example/perc-red-black-tree/tree")))))
                        ("var"
                          ("t"
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var" ("k" ("tcon" "std/core/types/int")))
                        ("var" ("v" ("tcon" "std/core/types/bool"))))))))
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
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                                          ("k" ("tcon" "std/core/types/int"))
                                          ("v" ("tcon" "std/core/types/bool")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("t"
                                        ("tcon"
                                          "bootstrap/validation/example/perc-red-black-tree/tree"))
                                      ("k" ("tcon" "std/core/types/int"))
                                      ("v" ("tcon" "std/core/types/bool")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/perc-red-black-tree/tree"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("t"
                                ("tcon"
                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                              ("k" ("tcon" "std/core/types/int"))
                              ("v" ("tcon" "std/core/types/bool")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree"))
                          ("fun"
                            (("t"
                                ("tcon"
                                  "bootstrap/validation/example/perc-red-black-tree/tree"))
                              ("k" ("tcon" "std/core/types/int"))
                              ("v" ("tcon" "std/core/types/bool")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/perc-red-black-tree/tree")))
                        ("var"
                          ("bootstrap/validation/example/perc-red-black-tree/ins"
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/perc-red-black-tree/tree"))
                                ("k" ("tcon" "std/core/types/int"))
                                ("v" ("tcon" "std/core/types/bool")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/perc-red-black-tree/tree")))))
                      ("var"
                        ("t"
                          ("tcon"
                            "bootstrap/validation/example/perc-red-black-tree/tree")))
                      ("var" ("k" ("tcon" "std/core/types/int")))
                      ("var" ("v" ("tcon" "std/core/types/bool"))))))))))
        ("def-fun" () ("fbip" ("at-most" "0") "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/perc-red-black-tree/main"
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
bootstrap/validation/example/perc-red-black-tree.kk(19,10): warning: fip fun bal-left: function allocates at most 1 but was declared as allocating nothing

bootstrap/validation/example/perc-red-black-tree.kk(30,10): warning: fip fun bal-right: function allocates at most 1 but was declared as allocating nothing

bootstrap/validation/example/perc-red-black-tree.kk(41,10): warning: fip fun ins: function allocates at most 1 but was declared as allocating nothing

