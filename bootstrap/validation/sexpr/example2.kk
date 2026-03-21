("core"
  ()
  (("rec"
      ("def"
        "bootstrap/validation/example/example2/rev-acc"
        ("forall"
          ("51")
          ("fun"
            (("xs" ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))
              ("acc" ("tapp" ("tcon" "std/core/types/list") ("tvar" "51"))))
            ("tcon" "std/core/types/total")
            ("tapp" ("tcon" "std/core/types/list") ("tvar" "51"))))
        ("type-lam"
          ("51")
          ("lam"
            (("xs" ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))
              ("acc" ("tapp" ("tcon" "std/core/types/list") ("tvar" "51"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("xs" ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))))
              (("branch"
                  (("pat-con"
                      "std/core/types/Cons"
                      (("pat-var" "x" "pat-wild") ("pat-var" "xx" "pat-wild"))
                      ("as-cons"
                        "std/core/types/list"
                        "as-list"
                        ("value-repr" "0" "2" "8")
                        "std/core/types/Nil"
                        "none"
                        "2")
                      (("tvar" "51")
                        ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))))
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
                                          (("xs"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tvar" "51")))
                                            ("acc"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tvar" "51"))))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tvar" "51")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tvar" "51")))
                                        ("acc"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tvar" "51"))))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tvar" "51")))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tvar" "51")))
                                ("acc"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tvar" "51"))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tvar" "51")))
                            ("fun"
                              (("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tvar" "51")))
                                ("acc"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tvar" "51"))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tvar" "51"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/example2/rev-acc"
                                ("forall"
                                  ("51")
                                  ("fun"
                                    (("xs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tvar" "51")))
                                      ("acc"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tvar" "51"))))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tvar" "51"))))))
                            ("tvar" "51")))
                        ("var"
                          ("xx"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tvar" "51"))))
                        ("app"
                          ("type-app"
                            ("con"
                              "std/core/types/Cons"
                              ("as-cons"
                                "std/core/types/list"
                                "as-list"
                                ("value-repr" "0" "2" "8")
                                "std/core/types/Nil"
                                "none"
                                "2"))
                            ("tvar" "51"))
                          ("var" ("x" ("tvar" "51")))
                          ("var"
                            ("acc"
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tvar" "51")))))))))
                ("branch"
                  (("pat-con"
                      "std/core/types/Nil"
                      ()
                      ("singleton"
                        "std/core/types/list"
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
                      ("var"
                        ("acc"
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tvar" "51")))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/example2/main"
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
