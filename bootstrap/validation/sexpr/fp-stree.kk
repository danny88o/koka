("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-stree/stree"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-stree/Node"
              (("left" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                ("value" ("tcon" "std/core/types/int"))
                ("right"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-stree/Leaf"
              ()
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-stree/szipper"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-stree/Root"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-stree/NodeL"
              (("up" ("tcon" "bootstrap/validation/example/fp-stree/szipper"))
                ("value" ("tcon" "std/core/types/int"))
                ("right"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-stree/NodeR"
              (("left" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                ("value" ("tcon" "std/core/types/int"))
                ("up" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-stree/top"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-stree/Top"
              (("left" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                ("value" ("tcon" "std/core/types/int"))
                ("right"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")))
              "nothing"))
          "False"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/is-node"
        ("fun"
          (("stree" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("stree" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("stree"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Node"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
        "bootstrap/validation/example/fp-stree/is-leaf"
        ("fun"
          (("stree" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("stree" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("stree"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
                    "bootstrap/validation/example/fp-stree/Node"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
        "bootstrap/validation/example/fp-stree/is-root"
        ("fun"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("szipper"
                  ("tcon" "bootstrap/validation/example/fp-stree/szipper"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Root"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/szipper"
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
        "bootstrap/validation/example/fp-stree/is-nodeL"
        ("fun"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("szipper"
                  ("tcon" "bootstrap/validation/example/fp-stree/szipper"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/NodeL"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("normal"
                      "bootstrap/validation/example/fp-stree/szipper"
                      ("normal" "True")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "2")
                    (("tcon" "bootstrap/validation/example/fp-stree/szipper")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
        "bootstrap/validation/example/fp-stree/is-nodeR"
        ("fun"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("szipper" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("szipper"
                  ("tcon" "bootstrap/validation/example/fp-stree/szipper"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/NodeR"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("normal"
                      "bootstrap/validation/example/fp-stree/szipper"
                      ("normal" "True")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "3")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon"
                        "bootstrap/validation/example/fp-stree/szipper"))))
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
        "bootstrap/validation/example/fp-stree/#top/left"
        ("fun"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/stree"))
        ("lam"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Top"
                    (("pat-var" "@x" "pat-wild") "pat-wild" "pat-wild")
                    ("single"
                      "bootstrap/validation/example/fp-stree/top"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var"
                      ("@x"
                        ("tcon"
                          "bootstrap/validation/example/fp-stree/stree")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/#top/right"
        ("fun"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/stree"))
        ("lam"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Top"
                    ("pat-wild" "pat-wild" ("pat-var" "@x" "pat-wild"))
                    ("single"
                      "bootstrap/validation/example/fp-stree/top"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var"
                      ("@x"
                        ("tcon"
                          "bootstrap/validation/example/fp-stree/stree")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/#top/value"
        ("fun"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/int"))
        ("lam"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Top"
                    ("pat-wild" ("pat-var" "@x" "pat-wild") "pat-wild")
                    ("single"
                      "bootstrap/validation/example/fp-stree/top"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var" ("@x" ("tcon" "std/core/types/int")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/#top/@copy"
        ("fun"
          (("@this" ("tcon" "bootstrap/validation/example/fp-stree/top"))
            ("left"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-stree/stree")))
            ("value"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/int")))
            ("right"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/top"))
        ("lam"
          (("@this" ("tcon" "bootstrap/validation/example/fp-stree/top"))
            ("left"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-stree/stree")))
            ("value"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/int")))
            ("right"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
          ("tcon" "std/core/types/total")
          ("let"
            (("non-rec"
                ("def"
                  "@uniq-left@118"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")
                  ("case"
                    (("var"
                        ("left"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-left@119" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-left@119"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree"))))))
                      ("branch"
                        (("pat-con"
                            "std/core/types/@None"
                            ()
                            ("singleton"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "1" "8")
                              "2")
                            ()))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
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
                                                (("top"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/top")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/stree"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("top"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/top")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/stree"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("var"
                                  ("bootstrap/validation/example/fp-stree/#top/left"
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/top")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-value@126"
                  ("tcon" "std/core/types/int")
                  ("case"
                    (("var"
                        ("value"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon" "std/core/types/int")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-value@127" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon" "std/core/types/int"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-value@127"
                                ("tcon" "std/core/types/int"))))))
                      ("branch"
                        (("pat-con"
                            "std/core/types/@None"
                            ()
                            ("singleton"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "1" "8")
                              "2")
                            ()))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
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
                                                (("top"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/top")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/int"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("top"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/top")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/int"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int"))
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int")))
                                ("var"
                                  ("bootstrap/validation/example/fp-stree/#top/value"
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/top")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-right@134"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")
                  ("case"
                    (("var"
                        ("right"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-right@135" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-right@135"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree"))))))
                      ("branch"
                        (("pat-con"
                            "std/core/types/@None"
                            ()
                            ("singleton"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "1" "8")
                              "2")
                            ()))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
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
                                                (("top"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/top")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/stree"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("top"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/top")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/stree"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("var"
                                  ("bootstrap/validation/example/fp-stree/#top/right"
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/top")))))))))
                  "def-val")))
            ("app"
              ("con"
                "bootstrap/validation/example/fp-stree/Top"
                ("single"
                  "bootstrap/validation/example/fp-stree/top"
                  ("single" "False")
                  ("value-repr" "0" "3" "8")
                  "none"
                  "1"))
              ("var"
                ("@uniq-left@118"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree")))
              ("var" ("@uniq-value@126" ("tcon" "std/core/types/int")))
              ("var"
                ("@uniq-right@134"
                  ("tcon" "bootstrap/validation/example/fp-stree/stree"))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/left"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tcon" "bootstrap/validation/example/fp-stree/stree")
            ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Node"
                    (("pat-var" "l" "pat-wild")
                      ("pat-var" "x" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("app"
                      ("type-app"
                        ("con"
                          "std/core/types/Tuple2"
                          ("single"
                            "std/core/types/tuple2"
                            "single-struct"
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1"))
                        ("tcon" "bootstrap/validation/example/fp-stree/stree")
                        ("tcon"
                          "bootstrap/validation/example/fp-stree/szipper"))
                      ("var"
                        ("l"
                          ("tcon"
                            "bootstrap/validation/example/fp-stree/stree")))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-stree/NodeL"
                          ("normal"
                            "bootstrap/validation/example/fp-stree/szipper"
                            ("normal" "True")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2"))
                        ("var"
                          ("ctxt"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/szipper")))
                        ("var" ("x" ("tcon" "std/core/types/int")))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
                      ("type-app"
                        ("con"
                          "std/core/types/Tuple2"
                          ("single"
                            "std/core/types/tuple2"
                            "single-struct"
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1"))
                        ("tcon" "bootstrap/validation/example/fp-stree/stree")
                        ("tcon"
                          "bootstrap/validation/example/fp-stree/szipper"))
                      ("con"
                        "bootstrap/validation/example/fp-stree/Leaf"
                        ("singleton"
                          "bootstrap/validation/example/fp-stree/stree"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var"
                        ("ctxt"
                          ("tcon"
                            "bootstrap/validation/example/fp-stree/szipper"))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-stree/splay"
        ("fun"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/stree"))
        ("lam"
          (("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("top" ("tcon" "bootstrap/validation/example/fp-stree/top"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Top"
                    (("pat-var" "l" "pat-wild")
                      ("pat-var" "x" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("single"
                      "bootstrap/validation/example/fp-stree/top"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                          ("ctxt"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/szipper"))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/Root"
                              ()
                              ("singleton"
                                "bootstrap/validation/example/fp-stree/szipper"
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
                                  "bootstrap/validation/example/fp-stree/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/fp-stree/stree"
                                    "as-list"
                                    ("value-repr" "0" "3" "8")
                                    "bootstrap/validation/example/fp-stree/Leaf"
                                    "none"
                                    "1"))
                                ("var"
                                  ("l"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("var" ("x" ("tcon" "std/core/types/int")))
                                ("var"
                                  ("r"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeL"
                              (("pat-con"
                                  "bootstrap/validation/example/fp-stree/Root"
                                  ()
                                  ("singleton"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "0" "0")
                                    "1")
                                  ())
                                ("pat-var" "y" "pat-wild")
                                ("pat-var" "ry" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "2")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree"))))
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
                                  "bootstrap/validation/example/fp-stree/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/fp-stree/stree"
                                    "as-list"
                                    ("value-repr" "0" "3" "8")
                                    "bootstrap/validation/example/fp-stree/Leaf"
                                    "none"
                                    "1"))
                                ("var"
                                  ("l"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("var" ("x" ("tcon" "std/core/types/int")))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Node"
                                    ("as-cons"
                                      "bootstrap/validation/example/fp-stree/stree"
                                      "as-list"
                                      ("value-repr" "0" "3" "8")
                                      "bootstrap/validation/example/fp-stree/Leaf"
                                      "none"
                                      "1"))
                                  ("var"
                                    ("r"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var" ("y" ("tcon" "std/core/types/int")))
                                  ("var"
                                    ("ry"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeL"
                              (("pat-con"
                                  "bootstrap/validation/example/fp-stree/NodeR"
                                  (("pat-var" "lz" "pat-wild")
                                    ("pat-var" "z" "pat-wild")
                                    ("pat-var" "up" "pat-wild"))
                                  ("normal"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "3" "8")
                                    "none"
                                    "3")
                                  (("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")
                                    ("tcon" "std/core/types/int")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))
                                ("pat-var" "y" "pat-wild")
                                ("pat-var" "ry" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "2")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree"))))
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
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("top"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/top"))
                                                ("ctxt"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/stree"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var"
                                    ("bootstrap/validation/example/fp-stree/splay"
                                      ("fun"
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Top"
                                    ("single"
                                      "bootstrap/validation/example/fp-stree/top"
                                      ("single" "False")
                                      ("value-repr" "0" "3" "8")
                                      "none"
                                      "1"))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("var"
                                      ("lz"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("var" ("z" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("l"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("var" ("x" ("tcon" "std/core/types/int")))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("var"
                                      ("r"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("var" ("y" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("ry"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("var"
                                  ("up"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeL"
                              (("pat-con"
                                  "bootstrap/validation/example/fp-stree/NodeL"
                                  (("pat-var" "up" "pat-wild")
                                    ("pat-var" "z" "pat-wild")
                                    ("pat-var" "rz" "pat-wild"))
                                  ("normal"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "3" "8")
                                    "none"
                                    "2")
                                  (("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")
                                    ("tcon" "std/core/types/int")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("pat-var" "y" "pat-wild")
                                ("pat-var" "ry" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "2")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree"))))
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
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("top"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/top"))
                                                ("ctxt"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/stree"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var"
                                    ("bootstrap/validation/example/fp-stree/splay"
                                      ("fun"
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Top"
                                    ("single"
                                      "bootstrap/validation/example/fp-stree/top"
                                      ("single" "False")
                                      ("value-repr" "0" "3" "8")
                                      "none"
                                      "1"))
                                  ("var"
                                    ("l"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var" ("x" ("tcon" "std/core/types/int")))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("var"
                                      ("r"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("var" ("y" ("tcon" "std/core/types/int")))
                                    ("app"
                                      ("con"
                                        "bootstrap/validation/example/fp-stree/Node"
                                        ("as-cons"
                                          "bootstrap/validation/example/fp-stree/stree"
                                          "as-list"
                                          ("value-repr" "0" "3" "8")
                                          "bootstrap/validation/example/fp-stree/Leaf"
                                          "none"
                                          "1"))
                                      ("var"
                                        ("ry"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree")))
                                      ("var"
                                        ("z" ("tcon" "std/core/types/int")))
                                      ("var"
                                        ("rz"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))))
                                ("var"
                                  ("up"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeR"
                              (("pat-var" "ly" "pat-wild")
                                ("pat-var" "y" "pat-wild")
                                ("pat-con"
                                  "bootstrap/validation/example/fp-stree/Root"
                                  ()
                                  ("singleton"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "0" "0")
                                    "1")
                                  ()))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper"))))
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
                                  "bootstrap/validation/example/fp-stree/Node"
                                  ("as-cons"
                                    "bootstrap/validation/example/fp-stree/stree"
                                    "as-list"
                                    ("value-repr" "0" "3" "8")
                                    "bootstrap/validation/example/fp-stree/Leaf"
                                    "none"
                                    "1"))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Node"
                                    ("as-cons"
                                      "bootstrap/validation/example/fp-stree/stree"
                                      "as-list"
                                      ("value-repr" "0" "3" "8")
                                      "bootstrap/validation/example/fp-stree/Leaf"
                                      "none"
                                      "1"))
                                  ("var"
                                    ("ly"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var" ("y" ("tcon" "std/core/types/int")))
                                  ("var"
                                    ("l"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))
                                ("var" ("x" ("tcon" "std/core/types/int")))
                                ("var"
                                  ("r"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeR"
                              (("pat-var" "ly" "pat-wild")
                                ("pat-var" "y" "pat-wild")
                                ("pat-con"
                                  "bootstrap/validation/example/fp-stree/NodeL"
                                  (("pat-var" "up" "pat-wild")
                                    ("pat-var" "z" "pat-wild")
                                    ("pat-var" "rz" "pat-wild"))
                                  ("normal"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "3" "8")
                                    "none"
                                    "2")
                                  (("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")
                                    ("tcon" "std/core/types/int")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper"))))
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
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("top"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/top"))
                                                ("ctxt"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/stree"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var"
                                    ("bootstrap/validation/example/fp-stree/splay"
                                      ("fun"
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Top"
                                    ("single"
                                      "bootstrap/validation/example/fp-stree/top"
                                      ("single" "False")
                                      ("value-repr" "0" "3" "8")
                                      "none"
                                      "1"))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("var"
                                      ("ly"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("var" ("y" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("l"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("var" ("x" ("tcon" "std/core/types/int")))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("var"
                                      ("r"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("var" ("z" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("rz"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("var"
                                  ("up"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-stree/NodeR"
                              (("pat-var" "ly" "pat-wild")
                                ("pat-var" "y" "pat-wild")
                                ("pat-con"
                                  "bootstrap/validation/example/fp-stree/NodeR"
                                  (("pat-var" "lz" "pat-wild")
                                    ("pat-var" "z" "pat-wild")
                                    ("pat-var" "up" "pat-wild"))
                                  ("normal"
                                    "bootstrap/validation/example/fp-stree/szipper"
                                    ("normal" "True")
                                    ("value-repr" "0" "3" "8")
                                    "none"
                                    "3")
                                  (("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")
                                    ("tcon" "std/core/types/int")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper"))))
                              ("normal"
                                "bootstrap/validation/example/fp-stree/szipper"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3")
                              (("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")
                                ("tcon" "std/core/types/int")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper"))))
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
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("top"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/top"))
                                                ("ctxt"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/stree"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))
                                    ("fun"
                                      (("top"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/top"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree")))
                                  ("var"
                                    ("bootstrap/validation/example/fp-stree/splay"
                                      ("fun"
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/Top"
                                    ("single"
                                      "bootstrap/validation/example/fp-stree/top"
                                      ("single" "False")
                                      ("value-repr" "0" "3" "8")
                                      "none"
                                      "1"))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-stree/Node"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-stree/stree"
                                        "as-list"
                                        ("value-repr" "0" "3" "8")
                                        "bootstrap/validation/example/fp-stree/Leaf"
                                        "none"
                                        "1"))
                                    ("app"
                                      ("con"
                                        "bootstrap/validation/example/fp-stree/Node"
                                        ("as-cons"
                                          "bootstrap/validation/example/fp-stree/stree"
                                          "as-list"
                                          ("value-repr" "0" "3" "8")
                                          "bootstrap/validation/example/fp-stree/Leaf"
                                          "none"
                                          "1"))
                                      ("var"
                                        ("lz"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree")))
                                      ("var"
                                        ("z" ("tcon" "std/core/types/int")))
                                      ("var"
                                        ("ly"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))
                                    ("var" ("y" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("l"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("var" ("x" ("tcon" "std/core/types/int")))
                                  ("var"
                                    ("r"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))
                                ("var"
                                  ("up"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/splay-leaf"
        ("fun"
          (("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/stree"))
        ("lam"
          (("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("ctxt"
                  ("tcon" "bootstrap/validation/example/fp-stree/szipper"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Root"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/szipper"
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
                      "bootstrap/validation/example/fp-stree/Leaf"
                      ("singleton"
                        "bootstrap/validation/example/fp-stree/stree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "2")))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/NodeL"
                    (("pat-var" "up" "pat-wild")
                      ("pat-var" "x" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-stree/szipper"
                      ("normal" "True")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "2")
                    (("tcon" "bootstrap/validation/example/fp-stree/szipper")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top"))
                                      ("ctxt"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/szipper")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("top"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/top"))
                              ("ctxt"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree"))
                          ("fun"
                            (("top"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/top"))
                              ("ctxt"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))
                        ("var"
                          ("bootstrap/validation/example/fp-stree/splay"
                            ("fun"
                              (("top"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/top"))
                                ("ctxt"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/szipper")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree")))))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-stree/Top"
                          ("single"
                            "bootstrap/validation/example/fp-stree/top"
                            ("single" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1"))
                        ("con"
                          "bootstrap/validation/example/fp-stree/Leaf"
                          ("singleton"
                            "bootstrap/validation/example/fp-stree/stree"
                            "as-list"
                            ("value-repr" "0" "0" "0")
                            "2"))
                        ("var" ("x" ("tcon" "std/core/types/int")))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree"))))
                      ("var"
                        ("up"
                          ("tcon"
                            "bootstrap/validation/example/fp-stree/szipper")))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/NodeR"
                    (("pat-var" "l" "pat-wild")
                      ("pat-var" "x" "pat-wild")
                      ("pat-var" "up" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-stree/szipper"
                      ("normal" "True")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "3")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon"
                        "bootstrap/validation/example/fp-stree/szipper"))))
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
                                        (("top"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/top"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("top"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/top"))
                                      ("ctxt"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/szipper")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("top"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/top"))
                              ("ctxt"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree"))
                          ("fun"
                            (("top"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/top"))
                              ("ctxt"
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/szipper")))
                            ("tcon" "std/core/types/total")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))
                        ("var"
                          ("bootstrap/validation/example/fp-stree/splay"
                            ("fun"
                              (("top"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/top"))
                                ("ctxt"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/szipper")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree")))))
                      ("app"
                        ("con"
                          "bootstrap/validation/example/fp-stree/Top"
                          ("single"
                            "bootstrap/validation/example/fp-stree/top"
                            ("single" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1"))
                        ("var"
                          ("l"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))
                        ("var" ("x" ("tcon" "std/core/types/int")))
                        ("con"
                          "bootstrap/validation/example/fp-stree/Leaf"
                          ("singleton"
                            "bootstrap/validation/example/fp-stree/stree"
                            "as-list"
                            ("value-repr" "0" "0" "0")
                            "2")))
                      ("var"
                        ("up"
                          ("tcon"
                            "bootstrap/validation/example/fp-stree/szipper"))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-stree/zlookup"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("x" ("tcon" "std/core/types/int"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tcon" "std/core/types/bool")
            ("tcon" "bootstrap/validation/example/fp-stree/stree")))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("x" ("tcon" "std/core/types/int"))
            ("ctxt" ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
                      ("type-app"
                        ("con"
                          "std/core/types/Tuple2"
                          ("single"
                            "std/core/types/tuple2"
                            "single-struct"
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1"))
                        ("tcon" "std/core/types/bool")
                        ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                      ("con"
                        "std/core/types/False"
                        ("enum"
                          "std/core/types/bool"
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
                                          (("ctxt"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/szipper")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("ctxt"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/szipper")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))
                            ("fun"
                              (("ctxt"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/szipper")))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree")))
                          ("var"
                            ("bootstrap/validation/example/fp-stree/splay-leaf"
                              ("fun"
                                (("ctxt"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/szipper")))
                                ("tcon" "std/core/types/total")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")))))
                        ("var"
                          ("ctxt"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/szipper"))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Node"
                    (("pat-var" "l" "pat-wild")
                      ("pat-var" "y" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                          ("var" ("x" ("tcon" "std/core/types/int")))
                          ("var" ("y" ("tcon" "std/core/types/int")))))
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
                                                        "bootstrap/validation/example/fp-stree/stree"))
                                                    ("x"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tcon"
                                                      "std/core/types/bool")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/stree")))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("t"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))
                                                ("x"
                                                  ("tcon" "std/core/types/int"))
                                                ("ctxt"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                              ("tcon" "std/core/types/total")
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tcon" "std/core/types/bool")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/stree")))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))
                                        ("x" ("tcon" "std/core/types/int"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tcon" "std/core/types/bool")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree")))
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))
                                        ("x" ("tcon" "std/core/types/int"))
                                        ("ctxt"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/szipper")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tcon" "std/core/types/bool")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-stree/stree"))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-stree/zlookup"
                                      ("fun"
                                        (("t"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/stree"))
                                          ("x" ("tcon" "std/core/types/int"))
                                          ("ctxt"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/szipper")))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tcon" "std/core/types/bool")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))))
                                ("var"
                                  ("l"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree")))
                                ("var" ("x" ("tcon" "std/core/types/int")))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-stree/NodeL"
                                    ("normal"
                                      "bootstrap/validation/example/fp-stree/szipper"
                                      ("normal" "True")
                                      ("value-repr" "0" "3" "8")
                                      "none"
                                      "2"))
                                  ("var"
                                    ("ctxt"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/szipper")))
                                  ("var" ("y" ("tcon" "std/core/types/int")))
                                  ("var"
                                    ("r"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))))))
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
                                        ("std/core/int/(>)"
                                          ("fun"
                                            (("x" ("tcon" "std/core/types/int"))
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var" ("x" ("tcon" "std/core/types/int")))
                                    ("var"
                                      ("y" ("tcon" "std/core/types/int")))))
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
                                                                  "bootstrap/validation/example/fp-stree/stree"))
                                                              ("x"
                                                                ("tcon"
                                                                  "std/core/types/int"))
                                                              ("ctxt"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-stree/szipper")))
                                                            ("tcon"
                                                              "std/core/types/total")
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/tuple2")
                                                              ("tcon"
                                                                "std/core/types/bool")
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-stree/stree")))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("t"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-stree/stree"))
                                                          ("x"
                                                            ("tcon"
                                                              "std/core/types/int"))
                                                          ("ctxt"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-stree/szipper")))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/tuple2")
                                                          ("tcon"
                                                            "std/core/types/bool")
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-stree/stree")))))))
                                              ("tcon" "std/core/types/total")
                                              ("tcon" "std/core/types/total")
                                              ("fun"
                                                (("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/stree"))
                                                  ("x"
                                                    ("tcon"
                                                      "std/core/types/int"))
                                                  ("ctxt"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/szipper")))
                                                ("tcon" "std/core/types/total")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tcon" "std/core/types/bool")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree")))
                                              ("fun"
                                                (("t"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/stree"))
                                                  ("x"
                                                    ("tcon"
                                                      "std/core/types/int"))
                                                  ("ctxt"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/szipper")))
                                                ("tcon" "std/core/types/total")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tcon" "std/core/types/bool")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("var"
                                              ("bootstrap/validation/example/fp-stree/zlookup"
                                                ("fun"
                                                  (("t"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/stree"))
                                                    ("x"
                                                      ("tcon"
                                                        "std/core/types/int"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tcon"
                                                      "std/core/types/bool")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/stree"))))))
                                          ("var"
                                            ("r"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-stree/stree")))
                                          ("var"
                                            ("x" ("tcon" "std/core/types/int")))
                                          ("app"
                                            ("con"
                                              "bootstrap/validation/example/fp-stree/NodeR"
                                              ("normal"
                                                "bootstrap/validation/example/fp-stree/szipper"
                                                ("normal" "True")
                                                ("value-repr" "0" "3" "8")
                                                "none"
                                                "3"))
                                            ("var"
                                              ("l"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/stree")))
                                            ("var"
                                              ("y"
                                                ("tcon" "std/core/types/int")))
                                            ("var"
                                              ("ctxt"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/szipper"))))))))
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
                                          ("type-app"
                                            ("con"
                                              "std/core/types/Tuple2"
                                              ("single"
                                                "std/core/types/tuple2"
                                                "single-struct"
                                                ("value-repr" "0" "2" "8")
                                                "none"
                                                "1"))
                                            ("tcon" "std/core/types/bool")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-stree/stree"))
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
                                                              (("top"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-stree/top"))
                                                                ("ctxt"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-stree/szipper")))
                                                              ("tcon"
                                                                "std/core/types/total")
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-stree/stree"))))
                                                        ("tcon"
                                                          "std/core/types/total")
                                                        ("fun"
                                                          (("top"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-stree/top"))
                                                            ("ctxt"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-stree/szipper")))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-stree/stree"))))))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))
                                                ("fun"
                                                  (("top"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/top"))
                                                    ("ctxt"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-stree/szipper")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree")))
                                              ("var"
                                                ("bootstrap/validation/example/fp-stree/splay"
                                                  ("fun"
                                                    (("top"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-stree/top"))
                                                      ("ctxt"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-stree/szipper")))
                                                    ("tcon"
                                                      "std/core/types/total")
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-stree/stree")))))
                                            ("app"
                                              ("con"
                                                "bootstrap/validation/example/fp-stree/Top"
                                                ("single"
                                                  "bootstrap/validation/example/fp-stree/top"
                                                  ("single" "False")
                                                  ("value-repr" "0" "3" "8")
                                                  "none"
                                                  "1"))
                                              ("var"
                                                ("l"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree")))
                                              ("var"
                                                ("y"
                                                  ("tcon"
                                                    "std/core/types/int")))
                                              ("var"
                                                ("r"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-stree/stree"))))
                                            ("var"
                                              ("ctxt"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-stree/szipper")))))))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/lookup"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("x" ("tcon" "std/core/types/int")))
          ("tcon" "std/core/types/total")
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tcon" "std/core/types/bool")
            ("tcon" "bootstrap/validation/example/fp-stree/stree")))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("x" ("tcon" "std/core/types/int")))
          ("tcon" "std/core/types/total")
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
                                    "bootstrap/validation/example/fp-stree/stree"))
                                ("x" ("tcon" "std/core/types/int"))
                                ("ctxt"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/szipper")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/tuple2")
                                ("tcon" "std/core/types/bool")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")))))
                        ("tcon" "std/core/types/total")
                        ("fun"
                          (("t"
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))
                            ("x" ("tcon" "std/core/types/int"))
                            ("ctxt"
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/szipper")))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/tuple2")
                            ("tcon" "std/core/types/bool")
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))))))
                ("tcon" "std/core/types/total")
                ("tcon" "std/core/types/total")
                ("fun"
                  (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                    ("x" ("tcon" "std/core/types/int"))
                    ("ctxt"
                      ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
                  ("tcon" "std/core/types/total")
                  ("tapp"
                    ("tcon" "std/core/types/tuple2")
                    ("tcon" "std/core/types/bool")
                    ("tcon" "bootstrap/validation/example/fp-stree/stree")))
                ("fun"
                  (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                    ("x" ("tcon" "std/core/types/int"))
                    ("ctxt"
                      ("tcon" "bootstrap/validation/example/fp-stree/szipper")))
                  ("tcon" "std/core/types/total")
                  ("tapp"
                    ("tcon" "std/core/types/tuple2")
                    ("tcon" "std/core/types/bool")
                    ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
              ("var"
                ("bootstrap/validation/example/fp-stree/zlookup"
                  ("fun"
                    (("t"
                        ("tcon" "bootstrap/validation/example/fp-stree/stree"))
                      ("x" ("tcon" "std/core/types/int"))
                      ("ctxt"
                        ("tcon"
                          "bootstrap/validation/example/fp-stree/szipper")))
                    ("tcon" "std/core/types/total")
                    ("tapp"
                      ("tcon" "std/core/types/tuple2")
                      ("tcon" "std/core/types/bool")
                      ("tcon"
                        "bootstrap/validation/example/fp-stree/stree"))))))
            ("var" ("t" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
            ("var" ("x" ("tcon" "std/core/types/int")))
            ("con"
              "bootstrap/validation/example/fp-stree/Root"
              ("singleton"
                "bootstrap/validation/example/fp-stree/szipper"
                ("normal" "True")
                ("value-repr" "0" "0" "0")
                "1"))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-stree/smap"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("f"
              ("fun"
                (("" ("tcon" "std/core/types/int")))
                ("tcon" "std/core/types/total")
                ("tcon" "std/core/types/int"))))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-stree/stree"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))
            ("f"
              ("fun"
                (("" ("tcon" "std/core/types/int")))
                ("tcon" "std/core/types/total")
                ("tcon" "std/core/types/int"))))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Node"
                    (("pat-var" "l" "pat-wild")
                      ("pat-var" "v" "pat-wild")
                      ("pat-var" "r" "pat-wild"))
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                        "bootstrap/validation/example/fp-stree/Node"
                        ("as-cons"
                          "bootstrap/validation/example/fp-stree/stree"
                          "as-list"
                          ("value-repr" "0" "3" "8")
                          "bootstrap/validation/example/fp-stree/Leaf"
                          "none"
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
                                                "bootstrap/validation/example/fp-stree/stree"))
                                            ("f"
                                              ("fun"
                                                ((""
                                                    ("tcon"
                                                      "std/core/types/int")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/int"))))
                                          ("tcon" "std/core/types/total")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))
                                        ("f"
                                          ("fun"
                                            (("" ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/int"))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/stree"))
                                ("f"
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int"))))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/stree"))
                                ("f"
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int"))))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree")))
                          ("var"
                            ("bootstrap/validation/example/fp-stree/smap"
                              ("fun"
                                (("t"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))
                                  ("f"
                                    ("fun"
                                      (("" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int"))))
                                ("tcon" "std/core/types/total")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")))))
                        ("var"
                          ("l"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/int"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int"))
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int"))))))
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
                                          (("" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/int"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int"))
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int")))))
                        ("var" ("v" ("tcon" "std/core/types/int"))))
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
                                                "bootstrap/validation/example/fp-stree/stree"))
                                            ("f"
                                              ("fun"
                                                ((""
                                                    ("tcon"
                                                      "std/core/types/int")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/int"))))
                                          ("tcon" "std/core/types/total")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-stree/stree"))
                                        ("f"
                                          ("fun"
                                            (("" ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/int"))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-stree/stree"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/stree"))
                                ("f"
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int"))))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree"))
                            ("fun"
                              (("t"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-stree/stree"))
                                ("f"
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int"))))
                              ("tcon" "std/core/types/total")
                              ("tcon"
                                "bootstrap/validation/example/fp-stree/stree")))
                          ("var"
                            ("bootstrap/validation/example/fp-stree/smap"
                              ("fun"
                                (("t"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-stree/stree"))
                                  ("f"
                                    ("fun"
                                      (("" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int"))))
                                ("tcon" "std/core/types/total")
                                ("tcon"
                                  "bootstrap/validation/example/fp-stree/stree")))))
                        ("var"
                          ("r"
                            ("tcon"
                              "bootstrap/validation/example/fp-stree/stree")))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/int"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int"))
                            ("fun"
                              (("" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int"))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
                      "bootstrap/validation/example/fp-stree/Leaf"
                      ("singleton"
                        "bootstrap/validation/example/fp-stree/stree"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "2"))))))))
        ("def-fun" ("own" "borrow") ("fbip" ("at-most" "0") "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-stree/#fip/is-node"
        ("fun"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("t" ("tcon" "bootstrap/validation/example/fp-stree/stree")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("t" ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-stree/Node"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-stree/stree"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-stree/Leaf"
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-stree/stree")
                      ("tcon" "std/core/types/int")
                      ("tcon" "bootstrap/validation/example/fp-stree/stree"))))
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
                    "bootstrap/validation/example/fp-stree/Leaf"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-stree/stree"
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
        "bootstrap/validation/example/fp-stree/main"
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
