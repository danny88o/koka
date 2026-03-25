("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-binary-tree/tree"
          ("5")
          (("con-info"
              "bootstrap/validation/example/fp-binary-tree/Bin"
              (("left"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                    ("tvar" "5")))
                ("right"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                    ("tvar" "5"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-binary-tree/Tip"
              (("value" ("tvar" "5")))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-binary-tree/tzipper"
          ("16" "17")
          (("con-info"
              "bootstrap/validation/example/fp-binary-tree/Top"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-binary-tree/BinL"
              (("up"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                    ("tvar" "16")
                    ("tvar" "17")))
                ("right"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                    ("tvar" "16"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-binary-tree/BinR"
              (("left"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                    ("tvar" "17")))
                ("up"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                    ("tvar" "16")
                    ("tvar" "17"))))
              "nothing"))
          "True"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/is-bin"
        ("forall"
          ("68")
          ("fun"
            (("tree"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "68"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("68")
          ("lam"
            (("tree"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "68"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tree"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tree")
                      ("tvar" "68")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Bin"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tree"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "68"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "68")))))
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/is-tip"
        ("forall"
          ("86")
          ("fun"
            (("tree"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "86"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("86")
          ("lam"
            (("tree"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "86"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tree"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tree")
                      ("tvar" "86")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Tip"
                      ("pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tree"
                        ("normal" "False")
                        ("value-repr" "0" "1" "8")
                        "none"
                        "2")
                      (("tvar" "86"))))
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/is-top"
        ("forall"
          ("107" "108")
          ("fun"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "107")
                  ("tvar" "108"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("107" "108")
          ("lam"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "107")
                  ("tvar" "108"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tzipper"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tzipper")
                      ("tvar" "107")
                      ("tvar" "108")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Top"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/is-binL"
        ("forall"
          ("131" "132")
          ("fun"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "131")
                  ("tvar" "132"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("131" "132")
          ("lam"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "131")
                  ("tvar" "132"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tzipper"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tzipper")
                      ("tvar" "131")
                      ("tvar" "132")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/BinL"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "131")
                          ("tvar" "132"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "131")))))
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/is-binR"
        ("forall"
          ("155" "156")
          ("fun"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "155")
                  ("tvar" "156"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("155" "156")
          ("lam"
            (("tzipper"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "155")
                  ("tvar" "156"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tzipper"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tzipper")
                      ("tvar" "155")
                      ("tvar" "156")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/BinR"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "3")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "156"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "155")
                          ("tvar" "156")))))
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/app"
        ("forall"
          ("343" "344")
          ("fun"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "343")))
              ("f"
                ("fun"
                  (("" ("tvar" "344")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "343")))
              ("ctxt"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "344")
                  ("tvar" "343"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
              ("tvar" "343"))))
        ("type-lam"
          ("343" "344")
          ("lam"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "343")))
              ("f"
                ("fun"
                  (("" ("tvar" "344")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "343")))
              ("ctxt"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "344")
                  ("tvar" "343"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("ctxt"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tzipper")
                      ("tvar" "344")
                      ("tvar" "343")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Top"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
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
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-binary-tree/tree")
                            ("tvar" "343")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/BinR"
                      (("pat-var" "l" "pat-wild") ("pat-var" "up" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "3")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "343"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "344")
                          ("tvar" "343")))))
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
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                                ("tvar" "343")))
                                            ("f"
                                              ("fun"
                                                (("" ("tvar" "344")))
                                                ("tcon" "std/core/types/total")
                                                ("tvar" "343")))
                                            ("ctxt"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                                ("tvar" "344")
                                                ("tvar" "343"))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "343")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "343")))
                                        ("f"
                                          ("fun"
                                            (("" ("tvar" "344")))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "343")))
                                        ("ctxt"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tzipper")
                                            ("tvar" "344")
                                            ("tvar" "343"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-binary-tree/tree")
                                        ("tvar" "343")))))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "343")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "344")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "343")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "344")
                                    ("tvar" "343"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343")))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "343")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "344")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "343")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "344")
                                    ("tvar" "343"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-binary-tree/app"
                                ("forall"
                                  ("343" "344")
                                  ("fun"
                                    (("t"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tree")
                                          ("tvar" "343")))
                                      ("f"
                                        ("fun"
                                          (("" ("tvar" "344")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "343")))
                                      ("ctxt"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                                          ("tvar" "344")
                                          ("tvar" "343"))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tree")
                                      ("tvar" "343"))))))
                            ("tvar" "344")
                            ("tvar" "343")))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-binary-tree/Bin"
                              ("normal"
                                "bootstrap/validation/example/fp-binary-tree/tree"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1"))
                            ("tvar" "343"))
                          ("var"
                            ("l"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343"))))
                          ("var"
                            ("t"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343")))))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tvar" "344")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "343"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tvar" "344")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "343"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tvar" "344")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "343"))
                            ("fun"
                              (("" ("tvar" "344")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "343")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tvar" "344")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "343")))))
                        ("var"
                          ("up"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-binary-tree/tzipper")
                              ("tvar" "344")
                              ("tvar" "343"))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/BinL"
                      (("pat-var" "up" "pat-wild") ("pat-var" "r" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tzipper"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "344")
                          ("tvar" "343"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "344")))))
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
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                                ("tvar" "344")))
                                            ("f"
                                              ("fun"
                                                (("" ("tvar" "344")))
                                                ("tcon" "std/core/types/total")
                                                ("tvar" "343")))
                                            ("ctxt"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                                ("tvar" "344")
                                                ("tvar" "343"))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "343")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "344")))
                                        ("f"
                                          ("fun"
                                            (("" ("tvar" "344")))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "343")))
                                        ("ctxt"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tzipper")
                                            ("tvar" "344")
                                            ("tvar" "343"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-binary-tree/tree")
                                        ("tvar" "343")))))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "344")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "344")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "343")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "344")
                                    ("tvar" "343"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343")))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "344")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "344")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "343")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "344")
                                    ("tvar" "343"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-binary-tree/down"
                                ("forall"
                                  ("355" "356")
                                  ("fun"
                                    (("t"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tree")
                                          ("tvar" "355")))
                                      ("f"
                                        ("fun"
                                          (("" ("tvar" "355")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "356")))
                                      ("ctxt"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                                          ("tvar" "355")
                                          ("tvar" "356"))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tree")
                                      ("tvar" "356"))))))
                            ("tvar" "344")
                            ("tvar" "343")))
                        ("var"
                          ("r"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-binary-tree/tree")
                              ("tvar" "344"))))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tvar" "344")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "343"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tvar" "344")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "343"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tvar" "344")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "343"))
                            ("fun"
                              (("" ("tvar" "344")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "343")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tvar" "344")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "343")))))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-binary-tree/BinR"
                              ("normal"
                                "bootstrap/validation/example/fp-binary-tree/tzipper"
                                ("normal" "True")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "3"))
                            ("tvar" "344")
                            ("tvar" "343"))
                          ("var"
                            ("t"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "343"))))
                          ("var"
                            ("up"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                ("tvar" "344")
                                ("tvar" "343")))))))))))))
        ("def-fun" ("own" "borrow" "own") ("fip" ("at-most" "0"))))
      ("def"
        "bootstrap/validation/example/fp-binary-tree/down"
        ("forall"
          ("355" "356")
          ("fun"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "355")))
              ("f"
                ("fun"
                  (("" ("tvar" "355")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "356")))
              ("ctxt"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "355")
                  ("tvar" "356"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
              ("tvar" "356"))))
        ("type-lam"
          ("355" "356")
          ("lam"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "355")))
              ("f"
                ("fun"
                  (("" ("tvar" "355")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "356")))
              ("ctxt"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tzipper")
                  ("tvar" "355")
                  ("tvar" "356"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("t"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tree")
                      ("tvar" "355")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Bin"
                      (("pat-var" "l" "pat-wild") ("pat-var" "r" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tree"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "355"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "355")))))
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
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                                ("tvar" "355")))
                                            ("f"
                                              ("fun"
                                                (("" ("tvar" "355")))
                                                ("tcon" "std/core/types/total")
                                                ("tvar" "356")))
                                            ("ctxt"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                                ("tvar" "355")
                                                ("tvar" "356"))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "356")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "355")))
                                        ("f"
                                          ("fun"
                                            (("" ("tvar" "355")))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "356")))
                                        ("ctxt"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tzipper")
                                            ("tvar" "355")
                                            ("tvar" "356"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-binary-tree/tree")
                                        ("tvar" "356")))))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "355")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "355")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "356")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "355")
                                    ("tvar" "356"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "356")))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "355")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "355")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "356")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "355")
                                    ("tvar" "356"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "356"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-binary-tree/down"
                                ("forall"
                                  ("355" "356")
                                  ("fun"
                                    (("t"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tree")
                                          ("tvar" "355")))
                                      ("f"
                                        ("fun"
                                          (("" ("tvar" "355")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "356")))
                                      ("ctxt"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                                          ("tvar" "355")
                                          ("tvar" "356"))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tree")
                                      ("tvar" "356"))))))
                            ("tvar" "355")
                            ("tvar" "356")))
                        ("var"
                          ("l"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-binary-tree/tree")
                              ("tvar" "355"))))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tvar" "355")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "356"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tvar" "355")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "356"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tvar" "355")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "356"))
                            ("fun"
                              (("" ("tvar" "355")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "356")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tvar" "355")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "356")))))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-binary-tree/BinL"
                              ("normal"
                                "bootstrap/validation/example/fp-binary-tree/tzipper"
                                ("normal" "True")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "2"))
                            ("tvar" "355")
                            ("tvar" "356"))
                          ("var"
                            ("ctxt"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                ("tvar" "355")
                                ("tvar" "356"))))
                          ("var"
                            ("r"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "355")))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-binary-tree/Tip"
                      (("pat-var" "x" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-binary-tree/tree"
                        ("normal" "False")
                        ("value-repr" "0" "1" "8")
                        "none"
                        "2")
                      (("tvar" "355"))))
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
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                                ("tvar" "356")))
                                            ("f"
                                              ("fun"
                                                (("" ("tvar" "355")))
                                                ("tcon" "std/core/types/total")
                                                ("tvar" "356")))
                                            ("ctxt"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                                ("tvar" "355")
                                                ("tvar" "356"))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "356")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("t"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tree")
                                            ("tvar" "356")))
                                        ("f"
                                          ("fun"
                                            (("" ("tvar" "355")))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "356")))
                                        ("ctxt"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-binary-tree/tzipper")
                                            ("tvar" "355")
                                            ("tvar" "356"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-binary-tree/tree")
                                        ("tvar" "356")))))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "356")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "355")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "356")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "355")
                                    ("tvar" "356"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "356")))
                            ("fun"
                              (("t"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tree")
                                    ("tvar" "356")))
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "355")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "356")))
                                ("ctxt"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-binary-tree/tzipper")
                                    ("tvar" "355")
                                    ("tvar" "356"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "356"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-binary-tree/app"
                                ("forall"
                                  ("343" "344")
                                  ("fun"
                                    (("t"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tree")
                                          ("tvar" "343")))
                                      ("f"
                                        ("fun"
                                          (("" ("tvar" "344")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "343")))
                                      ("ctxt"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                                          ("tvar" "344")
                                          ("tvar" "343"))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tree")
                                      ("tvar" "343"))))))
                            ("tvar" "355")
                            ("tvar" "356")))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-binary-tree/Tip"
                              ("normal"
                                "bootstrap/validation/example/fp-binary-tree/tree"
                                ("normal" "False")
                                ("value-repr" "0" "1" "8")
                                "none"
                                "2"))
                            ("tvar" "356"))
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
                                              (("" ("tvar" "355")))
                                              ("tcon" "std/core/types/total")
                                              ("tvar" "356"))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("" ("tvar" "355")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tvar" "356"))))))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("fun"
                                  (("" ("tvar" "355")))
                                  ("tcon" "std/core/types/total")
                                  ("tvar" "356"))
                                ("fun"
                                  (("" ("tvar" "355")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tvar" "356")))
                              ("var"
                                ("f"
                                  ("fun"
                                    (("" ("tvar" "355")))
                                    ("tcon" "std/core/types/total")
                                    ("tvar" "356")))))
                            ("var" ("x" ("tvar" "355")))))
                        ("app"
                          ("type-app"
                            ("var"
                              ("std/core/types/@open"
                                ("forall"
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("" ("tvar" "355")))
                                          ("tcon" "std/core/types/total")
                                          ("tvar" "356"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("" ("tvar" "355")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "356"))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("" ("tvar" "355")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "356"))
                            ("fun"
                              (("" ("tvar" "355")))
                              ("tcon" "std/core/types/total")
                              ("tvar" "356")))
                          ("var"
                            ("f"
                              ("fun"
                                (("" ("tvar" "355")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "356")))))
                        ("var"
                          ("ctxt"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-binary-tree/tzipper")
                              ("tvar" "355")
                              ("tvar" "356"))))))))))))
        ("def-fun" ("own" "borrow" "own") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/tmap"
        ("forall"
          ("395" "396")
          ("fun"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "395")))
              ("f"
                ("fun"
                  (("" ("tvar" "395")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "396"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
              ("tvar" "396"))))
        ("type-lam"
          ("395" "396")
          ("lam"
            (("t"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                  ("tvar" "395")))
              ("f"
                ("fun"
                  (("" ("tvar" "395")))
                  ("tcon" "std/core/types/total")
                  ("tvar" "396"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
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
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tree")
                                      ("tvar" "395")))
                                  ("f"
                                    ("fun"
                                      (("" ("tvar" "395")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "396")))
                                  ("ctxt"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-binary-tree/tzipper")
                                      ("tvar" "395")
                                      ("tvar" "396"))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-binary-tree/tree")
                                  ("tvar" "396")))))
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("t"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-binary-tree/tree")
                                  ("tvar" "395")))
                              ("f"
                                ("fun"
                                  (("" ("tvar" "395")))
                                  ("tcon" "std/core/types/total")
                                  ("tvar" "396")))
                              ("ctxt"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-binary-tree/tzipper")
                                  ("tvar" "395")
                                  ("tvar" "396"))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-binary-tree/tree")
                              ("tvar" "396")))))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/types/div")
                    ("tcon" "std/core/types/total"))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/types/div")
                    ("tcon" "std/core/types/total"))
                  ("fun"
                    (("t"
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "395")))
                      ("f"
                        ("fun"
                          (("" ("tvar" "395")))
                          ("tcon" "std/core/types/total")
                          ("tvar" "396")))
                      ("ctxt"
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "395")
                          ("tvar" "396"))))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tcon" "std/core/types/total"))
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tree")
                      ("tvar" "396")))
                  ("fun"
                    (("t"
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tree")
                          ("tvar" "395")))
                      ("f"
                        ("fun"
                          (("" ("tvar" "395")))
                          ("tcon" "std/core/types/total")
                          ("tvar" "396")))
                      ("ctxt"
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-binary-tree/tzipper")
                          ("tvar" "395")
                          ("tvar" "396"))))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tcon" "std/core/types/total"))
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-binary-tree/tree")
                      ("tvar" "396"))))
                ("type-app"
                  ("var"
                    ("bootstrap/validation/example/fp-binary-tree/down"
                      ("forall"
                        ("355" "356")
                        ("fun"
                          (("t"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tree")
                                ("tvar" "355")))
                            ("f"
                              ("fun"
                                (("" ("tvar" "355")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "356")))
                            ("ctxt"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-binary-tree/tzipper")
                                ("tvar" "355")
                                ("tvar" "356"))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-binary-tree/tree")
                            ("tvar" "356"))))))
                  ("tvar" "395")
                  ("tvar" "396")))
              ("var"
                ("t"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-binary-tree/tree")
                    ("tvar" "395"))))
              ("app"
                ("type-app"
                  ("var"
                    ("std/core/types/@open"
                      ("forall"
                        ("-3" "-4" "-1" "-2")
                        ("fun"
                          (("x"
                              ("fun"
                                (("" ("tvar" "395")))
                                ("tcon" "std/core/types/total")
                                ("tvar" "396"))))
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("" ("tvar" "395")))
                            ("tcon" "std/core/types/total")
                            ("tvar" "396"))))))
                  ("tcon" "std/core/types/total")
                  ("tcon" "std/core/types/total")
                  ("fun"
                    (("" ("tvar" "395")))
                    ("tcon" "std/core/types/total")
                    ("tvar" "396"))
                  ("fun"
                    (("" ("tvar" "395")))
                    ("tcon" "std/core/types/total")
                    ("tvar" "396")))
                ("var"
                  ("f"
                    ("fun"
                      (("" ("tvar" "395")))
                      ("tcon" "std/core/types/total")
                      ("tvar" "396")))))
              ("type-app"
                ("con"
                  "bootstrap/validation/example/fp-binary-tree/Top"
                  ("singleton"
                    "bootstrap/validation/example/fp-binary-tree/tzipper"
                    ("normal" "True")
                    ("value-repr" "0" "0" "0")
                    "1"))
                ("tvar" "395")
                ("tvar" "396")))))
        ("def-fun" ("own" "borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-binary-tree/main"
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
