("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/accum"
          ("5")
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/MkLo"
              (("x" ("tvar" "5"))
                ("k"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                    ("tvar" "5"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/MkHi"
              (("x" ("tvar" "5"))
                ("k"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                    ("tvar" "5"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/Done"
              ()
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("synonym"
        "bootstrap/validation/example/fp-quick-sort/elem"
        ("tcon" "std/core/types/int32")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/pad"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/Pad"
              ()
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/maybe2"
          ("13")
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/Nothing2"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/Just2"
              (("a" ("tvar" "13"))
                ("b" ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/sublist"
          ("18")
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/SCons"
              (("a" ("tvar" "18"))
                ("cs"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/sublist")
                    ("tvar" "18"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/STuple"
              (("a" ("tvar" "18")) ("b" ("tvar" "18")))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/partition"
          ("25")
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/Sublist"
              (("c"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/sublist")
                    ("tvar" "25")))
                ("bdl"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/partition")
                    ("tvar" "25"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/Singleton"
              (("c" ("tvar" "25"))
                ("bdl"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/partition")
                    ("tvar" "25"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-quick-sort/End"
              ()
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-quick-sort/unit2"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-quick-sort/Unit2"
              (("a" ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))
                ("b" ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
              "nothing"))
          "False"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/#pad/@copy"
        ("fun"
          (("@this" ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))
        ("lam"
          (("@this" ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
          ("tcon" "std/core/types/total")
          ("con"
            "bootstrap/validation/example/fp-quick-sort/Pad"
            ("singleton"
              "bootstrap/validation/example/fp-quick-sort/pad"
              ("single" "True")
              ("value-repr" "0" "0" "0")
              "1")))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/#unit2/a"
        ("fun"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))
        ("lam"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("unit2"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Unit2"
                    (("pat-var"
                        "@x"
                        ("pat-con"
                          "bootstrap/validation/example/fp-quick-sort/Pad"
                          ()
                          ("singleton"
                            "bootstrap/validation/example/fp-quick-sort/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("pat-con"
                        "bootstrap/validation/example/fp-quick-sort/Pad"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/fp-quick-sort/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("single"
                      "bootstrap/validation/example/fp-quick-sort/unit2"
                      ("single" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-quick-sort/pad")
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/pad"))))
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
                          "bootstrap/validation/example/fp-quick-sort/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/#unit2/b"
        ("fun"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))
        ("lam"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("unit2"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Unit2"
                    (("pat-con"
                        "bootstrap/validation/example/fp-quick-sort/Pad"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/fp-quick-sort/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var"
                        "@x"
                        ("pat-con"
                          "bootstrap/validation/example/fp-quick-sort/Pad"
                          ()
                          ("singleton"
                            "bootstrap/validation/example/fp-quick-sort/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())))
                    ("single"
                      "bootstrap/validation/example/fp-quick-sort/unit2"
                      ("single" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-quick-sort/pad")
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/pad"))))
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
                          "bootstrap/validation/example/fp-quick-sort/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/#unit2/@copy"
        ("fun"
          (("@this" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))
        ("lam"
          (("@this" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))))
          ("tcon" "std/core/types/total")
          ("let"
            (("non-rec"
                ("def"
                  "@uniq-a@118"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")
                  ("case"
                    (("var"
                        ("a"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-a@119" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-quick-sort/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-a@119"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/pad"))))))
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
                                                (("unit2"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("unit2"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/pad"))
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-quick-sort/#unit2/a"
                                    ("fun"
                                      (("unit2"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/unit2")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-b@126"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")
                  ("case"
                    (("var"
                        ("b"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-b@127" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-quick-sort/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-b@127"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/pad"))))))
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
                                                (("unit2"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("unit2"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/pad"))
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-quick-sort/#unit2/b"
                                    ("fun"
                                      (("unit2"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/unit2")))))))))
                  "def-val")))
            ("app"
              ("con"
                "bootstrap/validation/example/fp-quick-sort/Unit2"
                ("single"
                  "bootstrap/validation/example/fp-quick-sort/unit2"
                  ("single" "False")
                  ("value-repr" "0" "2" "8")
                  "none"
                  "1"))
              ("var"
                ("@uniq-a@118"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/pad")))
              ("var"
                ("@uniq-b@126"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/pad"))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/is-nothing2"
        ("forall"
          ("149")
          ("fun"
            (("maybe2"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                  ("tvar" "149"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("149")
          ("lam"
            (("maybe2"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                  ("tvar" "149"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("maybe2"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/maybe2")
                      ("tvar" "149")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/Nothing2"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-quick-sort/maybe2"
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
        "bootstrap/validation/example/fp-quick-sort/is-just2"
        ("forall"
          ("167")
          ("fun"
            (("maybe2"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                  ("tvar" "167"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("167")
          ("lam"
            (("maybe2"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                  ("tvar" "167"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("maybe2"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/maybe2")
                      ("tvar" "167")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/Just2"
                      ("pat-wild"
                        ("pat-con"
                          "bootstrap/validation/example/fp-quick-sort/Pad"
                          ()
                          ("singleton"
                            "bootstrap/validation/example/fp-quick-sort/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("as-cons"
                        "bootstrap/validation/example/fp-quick-sort/maybe2"
                        "as-list"
                        ("value-repr" "0" "2" "8")
                        "bootstrap/validation/example/fp-quick-sort/Nothing2"
                        "none"
                        "2")
                      (("tvar" "167")
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/pad"))))
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
                      "bootstrap/validation/example/fp-quick-sort/Nothing2"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-quick-sort/maybe2"
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
                          "1")))))))))
        ("def-fun" ("borrow") ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/#sublist/a"
        ("forall"
          ("192")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "192"))))
            ("tcon" "std/core/types/total")
            ("tvar" "192")))
        ("type-lam"
          ("192")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "192"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/sublist")
                      ("tvar" "192")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/SCons"
                      (("pat-var" "@x" "pat-wild") "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "192")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/sublist")
                          ("tvar" "192")))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "192"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/STuple"
                      (("pat-var" "@x" "pat-wild") "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "192") ("tvar" "192"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "192"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/is-scons"
        ("forall"
          ("209")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "209"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("209")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "209"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/sublist")
                      ("tvar" "209")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/SCons"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "209")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/sublist")
                          ("tvar" "209")))))
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
        "bootstrap/validation/example/fp-quick-sort/is-stuple"
        ("forall"
          ("227")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "227"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("227")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                  ("tvar" "227"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/sublist")
                      ("tvar" "227")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/STuple"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "227") ("tvar" "227"))))
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
        "bootstrap/validation/example/fp-quick-sort/is-sublist"
        ("forall"
          ("245")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "245"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("245")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "245"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/partition")
                      ("tvar" "245")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/Sublist"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/partition"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/sublist")
                          ("tvar" "245"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/partition")
                          ("tvar" "245")))))
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
        "bootstrap/validation/example/fp-quick-sort/is-singleton"
        ("forall"
          ("263")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "263"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("263")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "263"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/partition")
                      ("tvar" "263")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/Singleton"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/partition"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "263")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/partition")
                          ("tvar" "263")))))
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
        "bootstrap/validation/example/fp-quick-sort/is-end"
        ("forall"
          ("281")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "281"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("281")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-quick-sort/partition")
                  ("tvar" "281"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/partition")
                      ("tvar" "281")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/End"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-quick-sort/partition"
                        ("normal" "True")
                        ("value-repr" "0" "0" "0")
                        "3")
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
        "bootstrap/validation/example/fp-quick-sort/is-mkLo"
        ("forall"
          ("299")
          ("fun"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "299"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("299")
          ("lam"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "299"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("accum"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/accum")
                      ("tvar" "299")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/MkLo"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/accum"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "299")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/accum")
                          ("tvar" "299")))))
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
        "bootstrap/validation/example/fp-quick-sort/is-mkHi"
        ("forall"
          ("317")
          ("fun"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "317"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("317")
          ("lam"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "317"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("accum"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/accum")
                      ("tvar" "317")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/MkHi"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-quick-sort/accum"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "317")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/accum")
                          ("tvar" "317")))))
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
        "bootstrap/validation/example/fp-quick-sort/is-done"
        ("forall"
          ("335")
          ("fun"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "335"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("335")
          ("lam"
            (("accum"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                  ("tvar" "335"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("accum"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-quick-sort/accum")
                      ("tvar" "335")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-quick-sort/Done"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-quick-sort/accum"
                        ("normal" "True")
                        ("value-repr" "0" "0" "0")
                        "3")
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
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/split-app2"
        ("fun"
          (("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("lo"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("hi"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tapp"
              ("tcon" "std/core/types/list")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))))
        ("lam"
          (("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("lo"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("hi"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("k"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/MkLo"
                    (("pat-var" "x" "pat-wild") ("pat-var" "k" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/accum")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("k"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/accum")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("lo"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("hi"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/sublist")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("b"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon" "std/core/types/tuple2")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32")))))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))))
                        ("var"
                          ("bootstrap/validation/example/fp-quick-sort/split-app2"
                            ("fun"
                              (("k"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("lo"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("hi"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("b"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/tuple2")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))))
                      ("var"
                        ("k"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/accum")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
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
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("x"
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("lo"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      ("var"
                        ("hi"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/sublist")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("b"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/partition")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("u"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/unit2")))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/MkHi"
                    (("pat-var" "x" "pat-wild") ("pat-var" "k" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/accum")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("k"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/accum")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("lo"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("hi"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/sublist")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("b"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon" "std/core/types/tuple2")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32")))))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))))
                        ("var"
                          ("bootstrap/validation/example/fp-quick-sort/split-app2"
                            ("fun"
                              (("k"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("lo"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("hi"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("b"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/tuple2")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))))
                      ("var"
                        ("k"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/accum")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("lo"
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("app"
                        ("type-app"
                          ("con"
                            "bootstrap/validation/example/fp-quick-sort/SCons"
                            ("normal"
                              "bootstrap/validation/example/fp-quick-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("x"
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("hi"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      ("var"
                        ("b"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/partition")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("u"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/unit2")))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Done"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "0" "0")
                      "3")
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
                        ("tapp"
                          ("tcon" "std/core/types/list")
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/partition")
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("var"
                        ("lo"
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("app"
                        ("type-app"
                          ("con"
                            "bootstrap/validation/example/fp-quick-sort/Sublist"
                            ("normal"
                              "bootstrap/validation/example/fp-quick-sort/partition"
                              ("normal" "True")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("hi"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32")))))
                        ("var"
                          ("b"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/split-app1"
        ("fun"
          (("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("lo"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("hi"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tapp"
              ("tcon" "std/core/types/list")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))))
        ("lam"
          (("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("lo"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("hi"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/maybe2")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("k"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/MkLo"
                    (("pat-var" "x" "pat-wild") ("pat-var" "k" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/accum")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/maybe2")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("k"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/accum")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("lo"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("hi"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/maybe2")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("b"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/tuple2")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32")))))))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/maybe2")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("fun"
                            (("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("lo"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("hi"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/maybe2")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))))
                        ("var"
                          ("bootstrap/validation/example/fp-quick-sort/split-app1"
                            ("fun"
                              (("k"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("lo"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("hi"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/maybe2")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("b"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/tuple2")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))))
                      ("var"
                        ("k"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/accum")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
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
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("x"
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("lo"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      ("var"
                        ("hi"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/maybe2")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("b"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/partition")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/MkHi"
                    (("pat-var" "x" "pat-wild") ("pat-var" "k" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/accum")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                          ("hi"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/maybe2")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/Nothing2"
                              ()
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/maybe2"
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
                                ("app"
                                  ("type-app"
                                    ("var"
                                      ("std/core/types/@open"
                                        ("forall"
                                          ("-3" "-4" "-1" "-2")
                                          ("fun"
                                            (("x"
                                                ("fun"
                                                  (("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("lo"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("hi"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/maybe2")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("lo"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("hi"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/maybe2")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("lo"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("hi"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/maybe2")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("lo"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("hi"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/maybe2")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-app1"
                                      ("fun"
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/maybe2")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/Just2"
                                      ("as-cons"
                                        "bootstrap/validation/example/fp-quick-sort/maybe2"
                                        "as-list"
                                        ("value-repr" "0" "2" "8")
                                        "bootstrap/validation/example/fp-quick-sort/Nothing2"
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("con"
                                    "bootstrap/validation/example/fp-quick-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-quick-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/Just2"
                              (("pat-var" "y" "pat-wild")
                                ("pat-con"
                                  "bootstrap/validation/example/fp-quick-sort/Pad"
                                  ()
                                  ("singleton"
                                    "bootstrap/validation/example/fp-quick-sort/pad"
                                    ("single" "True")
                                    ("value-repr" "0" "0" "0")
                                    "1")
                                  ()))
                              ("as-cons"
                                "bootstrap/validation/example/fp-quick-sort/maybe2"
                                "as-list"
                                ("value-repr" "0" "2" "8")
                                "bootstrap/validation/example/fp-quick-sort/Nothing2"
                                "none"
                                "2")
                              (("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/pad"))))
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
                                                  (("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("lo"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("hi"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("lo"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("hi"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/sublist")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("lo"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("hi"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("lo"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("hi"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-app2"
                                      ("fun"
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/STuple"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/sublist"
                                        ("normal" "False")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("y"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-quick-sort/Unit2"
                                    ("single"
                                      "bootstrap/validation/example/fp-quick-sort/unit2"
                                      ("single" "False")
                                      ("value-repr" "0" "2" "8")
                                      "none"
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-quick-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-quick-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-quick-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-quick-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1"))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Done"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-quick-sort/accum"
                      ("normal" "True")
                      ("value-repr" "0" "0" "0")
                      "3")
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
                          ("hi"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/maybe2")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/Just2"
                              (("pat-var" "x" "pat-wild")
                                ("pat-con"
                                  "bootstrap/validation/example/fp-quick-sort/Pad"
                                  ()
                                  ("singleton"
                                    "bootstrap/validation/example/fp-quick-sort/pad"
                                    ("single" "True")
                                    ("value-repr" "0" "0" "0")
                                    "1")
                                  ()))
                              ("as-cons"
                                "bootstrap/validation/example/fp-quick-sort/maybe2"
                                "as-list"
                                ("value-repr" "0" "2" "8")
                                "bootstrap/validation/example/fp-quick-sort/Nothing2"
                                "none"
                                "2")
                              (("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/pad"))))
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
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/Singleton"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/partition"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("b"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32"))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/Nothing2"
                              ()
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/maybe2"
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
                                ("type-app"
                                  ("con"
                                    "std/core/types/Tuple2"
                                    ("single"
                                      "std/core/types/tuple2"
                                      "single-struct"
                                      ("value-repr" "0" "2" "8")
                                      "none"
                                      "1"))
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon"
                                          "std/core/types/int32")))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/split-list"
        ("fun"
          (("p"
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tapp"
              ("tcon" "std/core/types/list")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))))
        ("lam"
          (("p"
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("xs"
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
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
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tcon" "std/core/types/bool"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
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
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tcon" "std/core/types/bool")))
                            ("var"
                              ("std/num/int32/(<)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var"
                            ("x"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("var"
                            ("p"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
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
                                                  (("p"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("p"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-list"
                                      ("fun"
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("xx"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/MkLo"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/accum"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "1"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))))))
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
                                                  (("p"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("p"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-list"
                                      ("fun"
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("xx"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/MkHi"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/accum"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2"))))))))))))
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
                                            (("k"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("lo"
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("hi"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/maybe2")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("b"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("lo"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("hi"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/maybe2")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("fun"
                                (("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("hi"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/maybe2")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/tuple2")
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("fun"
                                (("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("hi"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/maybe2")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/tuple2")
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))))
                            ("var"
                              ("bootstrap/validation/example/fp-quick-sort/split-app1"
                                ("fun"
                                  (("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("lo"
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("hi"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/maybe2")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("b"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))))))
                          ("var"
                            ("k"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/accum")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("type-app"
                            ("con"
                              "std/core/types/Nil"
                              ("singleton"
                                "std/core/types/list"
                                "as-list"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-quick-sort/Nothing2"
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/maybe2"
                                "as-list"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))
                          ("var"
                            ("b"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/Tuple2"
                              (("pat-var" "lo" "pat-wild")
                                ("pat-var" "hi" "pat-wild"))
                              ("single"
                                "std/core/types/tuple2"
                                "single-struct"
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1")
                              (("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))
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
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/Singleton"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/partition"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("p"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("hi"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32"))))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/split-sublist"
        ("fun"
          (("p"
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("xs"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))
            ("u1" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/tuple2")
            ("tapp"
              ("tcon" "std/core/types/list")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))))
        ("lam"
          (("p"
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("xs"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("k"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/accum")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2"))
            ("u1" ("tcon" "bootstrap/validation/example/fp-quick-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("xs"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/sublist")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/SCons"
                    (("pat-var" "x" "pat-wild") ("pat-var" "xx" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/sublist"
                      ("normal" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/sublist")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tcon" "std/core/types/bool"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
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
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tcon" "std/core/types/bool")))
                            ("var"
                              ("std/num/int32/(<)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var"
                            ("x"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("var"
                            ("p"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
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
                                                  (("p"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                    ("u1"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("p"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/sublist")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                ("u1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2"))
                                        ("u1"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2"))
                                        ("u1"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-sublist"
                                      ("fun"
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2"))
                                          ("u1"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("xx"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/sublist")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/MkLo"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/accum"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "1"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                ("var"
                                  ("u1"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))))))
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
                                                  (("p"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                    ("u1"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("p"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/sublist")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("k"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                ("u1"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2"))
                                        ("u1"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("fun"
                                      (("p"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("xs"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("k"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2"))
                                        ("u1"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/split-sublist"
                                      ("fun"
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2"))
                                          ("u1"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))))
                                ("var"
                                  ("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("var"
                                  ("xx"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/sublist")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-quick-sort/MkHi"
                                      ("normal"
                                        "bootstrap/validation/example/fp-quick-sort/accum"
                                        ("normal" "True")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("x"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))
                                ("var"
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                ("var"
                                  ("u1"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2"))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/STuple"
                    (("pat-var" "x" "pat-wild") ("pat-var" "y" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/sublist"
                      ("normal" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32")))))
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
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("p"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("xs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("k"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/accum")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("b"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/unit2")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/tuple2")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon"
                                            "std/core/types/int32")))))))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("p"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("xs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("fun"
                            (("p"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("xs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("k"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("b"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/tuple2")
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))))
                        ("var"
                          ("bootstrap/validation/example/fp-quick-sort/split-list"
                            ("fun"
                              (("p"
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("k"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/accum")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("b"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/unit2")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/tuple2")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))))
                      ("var"
                        ("p"
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32"))))
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
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("x"
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))
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
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))
                          ("var"
                            ("y"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("type-app"
                            ("con"
                              "std/core/types/Nil"
                              ("singleton"
                                "std/core/types/list"
                                "as-list"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("k"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/accum")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("b"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/partition")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("u"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/unit2"))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/quicksort-app"
        ("fun"
          (("bdl"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/list")
            ("tsyn"
              "bootstrap/validation/example/fp-quick-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("bdl"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("bdl"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-quick-sort/partition")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Singleton"
                    (("pat-var" "p" "pat-wild") ("pat-var" "b" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/partition"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/partition")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                          "std/core/types/Cons"
                          ("as-cons"
                            "std/core/types/list"
                            "as-list"
                            ("value-repr" "0" "2" "8")
                            "std/core/types/Nil"
                            "none"
                            "2"))
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("p"
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32"))))
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
                                          (("bdl"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("bdl"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("bdl"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))
                            ("fun"
                              (("bdl"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("var"
                            ("bootstrap/validation/example/fp-quick-sort/quicksort-app"
                              ("fun"
                                (("bdl"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))))))
                        ("var"
                          ("b"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/Sublist"
                    (("pat-var" "xs" "pat-wild") ("pat-var" "bdl'" "pat-wild"))
                    ("normal"
                      "bootstrap/validation/example/fp-quick-sort/partition"
                      ("normal" "True")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/sublist")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32")))
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/partition")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                          ("xs"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-quick-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      (("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/SCons"
                              (("pat-var" "p" "pat-wild")
                                ("pat-var" "xx" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-quick-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1")
                              (("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))
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
                                                      (("p"
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("xs"
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-quick-sort/sublist")
                                                            ("tsyn"
                                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                                              ("tcon"
                                                                "std/core/types/int32"))))
                                                        ("k"
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-quick-sort/accum")
                                                            ("tsyn"
                                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                                              ("tcon"
                                                                "std/core/types/int32"))))
                                                        ("b"
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                                            ("tsyn"
                                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                                              ("tcon"
                                                                "std/core/types/int32"))))
                                                        ("u"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                        ("u1"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/effect-extend")
                                                        ("tcon"
                                                          "std/core/types/div")
                                                        ("tcon"
                                                          "std/core/types/total"))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/tuple2")
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/list")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))))))
                                                ("tcon" "std/core/types/total")
                                                ("fun"
                                                  (("p"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("k"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2"))
                                                    ("u1"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("fun"
                                          (("p"
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("xs"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/sublist")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("k"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/accum")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("b"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("u"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/unit2"))
                                            ("u1"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/unit2")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/tuple2")
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("fun"
                                          (("p"
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("xs"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/sublist")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("k"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/accum")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("b"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
                                            ("u"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/unit2"))
                                            ("u1"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/unit2")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/tuple2")
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))))
                                      ("var"
                                        ("bootstrap/validation/example/fp-quick-sort/split-sublist"
                                          ("fun"
                                            (("p"
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("xs"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/sublist")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("k"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("b"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("u"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/unit2"))
                                              ("u1"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))))))
                                    ("var"
                                      ("p"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("var"
                                      ("xx"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/sublist")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Done"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-quick-sort/accum"
                                          ("normal" "True")
                                          ("value-repr" "0" "0" "0")
                                          "3"))
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))
                                    ("var"
                                      ("bdl'"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("app"
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Unit2"
                                        ("single"
                                          "bootstrap/validation/example/fp-quick-sort/unit2"
                                          ("single" "False")
                                          ("value-repr" "0" "2" "8")
                                          "none"
                                          "1"))
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Pad"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-quick-sort/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1"))
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Pad"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-quick-sort/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1")))
                                    ("app"
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Unit2"
                                        ("single"
                                          "bootstrap/validation/example/fp-quick-sort/unit2"
                                          ("single" "False")
                                          ("value-repr" "0" "2" "8")
                                          "none"
                                          "1"))
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Pad"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-quick-sort/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1"))
                                      ("con"
                                        "bootstrap/validation/example/fp-quick-sort/Pad"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-quick-sort/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1")))))
                                (("branch"
                                    (("pat-con"
                                        "std/core/types/Tuple2"
                                        (("pat-var" "lo" "pat-wild")
                                          ("pat-var" "hi" "pat-wild"))
                                        ("single"
                                          "std/core/types/tuple2"
                                          "single-struct"
                                          ("value-repr" "0" "2" "8")
                                          "none"
                                          "1")
                                        (("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))
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
                                                                  ("tcon"
                                                                    "std/core/types/list")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32"))))
                                                              ("b"
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32")))))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tcon"
                                                                "std/core/types/div")
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/list")
                                                              ("tsyn"
                                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                                ("tcon"
                                                                  "std/core/types/int32"))))))
                                                      ("tcon"
                                                        "std/core/types/total")
                                                      ("fun"
                                                        (("xs"
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/list")
                                                              ("tsyn"
                                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                                ("tcon"
                                                                  "std/core/types/int32"))))
                                                          ("b"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                                              ("tsyn"
                                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                                ("tcon"
                                                                  "std/core/types/int32")))))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/effect-extend")
                                                          ("tcon"
                                                            "std/core/types/div")
                                                          ("tcon"
                                                            "std/core/types/total"))
                                                        ("tapp"
                                                          ("tcon"
                                                            "std/core/types/list")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32"))))))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("fun"
                                                (("xs"
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32"))))
                                                  ("b"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tcon" "std/core/types/div")
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("fun"
                                                (("xs"
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32"))))
                                                  ("b"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tcon" "std/core/types/div")
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))
                                            ("var"
                                              ("bootstrap/validation/example/fp-quick-sort/quicksort-go"
                                                ("fun"
                                                  (("xs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))))
                                          ("var"
                                            ("lo"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))
                                          ("var"
                                            ("hi"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))))))))))))
                        ("branch"
                          (("pat-con"
                              "bootstrap/validation/example/fp-quick-sort/STuple"
                              (("pat-var" "a" "pat-wild")
                                ("pat-var" "b" "pat-wild"))
                              ("normal"
                                "bootstrap/validation/example/fp-quick-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "2")
                              (("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
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
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tcon"
                                                    "std/core/types/bool"))))))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
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
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/bool")))
                                      ("var"
                                        ("std/num/int32/(<=)"
                                          ("fun"
                                            (("x"
                                                ("tcon" "std/core/types/int32"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/bool")))))
                                    ("var"
                                      ("a"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("var"
                                      ("b"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))
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
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("var"
                                            ("a"
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
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
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("b"
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
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
                                                                (("bdl"
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                                      ("tsyn"
                                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                                        ("tcon"
                                                                          "std/core/types/int32")))))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/effect-extend")
                                                                  ("tcon"
                                                                    "std/core/types/div")
                                                                  ("tcon"
                                                                    "std/core/types/total"))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/list")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32"))))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("bdl"
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32")))))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tcon"
                                                                "std/core/types/div")
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/list")
                                                              ("tsyn"
                                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                                ("tcon"
                                                                  "std/core/types/int32"))))))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("bdl"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tcon"
                                                        "std/core/types/div")
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32"))))
                                                  ("fun"
                                                    (("bdl"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tcon"
                                                        "std/core/types/div")
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-quick-sort/quicksort-app"
                                                    ("fun"
                                                      (("bdl"
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                                            ("tsyn"
                                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                                              ("tcon"
                                                                "std/core/types/int32")))))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/effect-extend")
                                                        ("tcon"
                                                          "std/core/types/div")
                                                        ("tcon"
                                                          "std/core/types/total"))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))))
                                              ("var"
                                                ("bdl'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))))))))
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
                                              "std/core/types/Cons"
                                              ("as-cons"
                                                "std/core/types/list"
                                                "as-list"
                                                ("value-repr" "0" "2" "8")
                                                "std/core/types/Nil"
                                                "none"
                                                "2"))
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("var"
                                            ("b"
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
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
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("var"
                                              ("a"
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))
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
                                                                (("bdl"
                                                                    ("tapp"
                                                                      ("tcon"
                                                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                                                      ("tsyn"
                                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                                        ("tcon"
                                                                          "std/core/types/int32")))))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/effect-extend")
                                                                  ("tcon"
                                                                    "std/core/types/div")
                                                                  ("tcon"
                                                                    "std/core/types/total"))
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "std/core/types/list")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32"))))))
                                                          ("tcon"
                                                            "std/core/types/total")
                                                          ("fun"
                                                            (("bdl"
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                                  ("tsyn"
                                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                                    ("tcon"
                                                                      "std/core/types/int32")))))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/effect-extend")
                                                              ("tcon"
                                                                "std/core/types/div")
                                                              ("tcon"
                                                                "std/core/types/total"))
                                                            ("tapp"
                                                              ("tcon"
                                                                "std/core/types/list")
                                                              ("tsyn"
                                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                                ("tcon"
                                                                  "std/core/types/int32"))))))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("fun"
                                                    (("bdl"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tcon"
                                                        "std/core/types/div")
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32"))))
                                                  ("fun"
                                                    (("bdl"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                                          ("tsyn"
                                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                                            ("tcon"
                                                              "std/core/types/int32")))))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/effect-extend")
                                                      ("tcon"
                                                        "std/core/types/div")
                                                      ("tcon"
                                                        "std/core/types/total"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))
                                                ("var"
                                                  ("bootstrap/validation/example/fp-quick-sort/quicksort-app"
                                                    ("fun"
                                                      (("bdl"
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                                            ("tsyn"
                                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                                              ("tcon"
                                                                "std/core/types/int32")))))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/effect-extend")
                                                        ("tcon"
                                                          "std/core/types/div")
                                                        ("tcon"
                                                          "std/core/types/total"))
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))))
                                              ("var"
                                                ("bdl'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))))))))))))))))))
              ("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-quick-sort/End"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-quick-sort/partition"
                      ("normal" "True")
                      ("value-repr" "0" "0" "0")
                      "3")
                    ()))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("type-app"
                      ("con"
                        "std/core/types/Nil"
                        ("singleton"
                          "std/core/types/list"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "1"))
                      ("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32")))))))))
        ("def-fun" () ("fip" ("at-most" "0"))))
      ("def"
        "bootstrap/validation/example/fp-quick-sort/quicksort-go"
        ("fun"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/list")
            ("tsyn"
              "bootstrap/validation/example/fp-quick-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("b"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-quick-sort/partition")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("xs"
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "std/core/types/Cons"
                    (("pat-var" "p" "pat-wild") ("pat-var" "xx" "pat-wild"))
                    ("as-cons"
                      "std/core/types/list"
                      "as-list"
                      ("value-repr" "0" "2" "8")
                      "std/core/types/Nil"
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
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
                                            (("p"
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("xs"
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("k"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/accum")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("b"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))
                                              ("u"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/unit2")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("p"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("k"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/accum")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("fun"
                                (("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/tuple2")
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("fun"
                                (("p"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("k"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/accum")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("b"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/unit2")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/tuple2")
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))))
                            ("var"
                              ("bootstrap/validation/example/fp-quick-sort/split-list"
                                ("fun"
                                  (("p"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))
                                    ("xs"
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("k"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/accum")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("b"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("u"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/unit2")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))))))
                          ("var"
                            ("p"
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("var"
                            ("xx"
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-quick-sort/Done"
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/accum"
                                ("normal" "True")
                                ("value-repr" "0" "0" "0")
                                "3"))
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32")))
                          ("var"
                            ("b"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("app"
                            ("con"
                              "bootstrap/validation/example/fp-quick-sort/Unit2"
                              ("single"
                                "bootstrap/validation/example/fp-quick-sort/unit2"
                                ("single" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1"))
                            ("con"
                              "bootstrap/validation/example/fp-quick-sort/Pad"
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("con"
                              "bootstrap/validation/example/fp-quick-sort/Pad"
                              ("singleton"
                                "bootstrap/validation/example/fp-quick-sort/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/Tuple2"
                              (("pat-var" "lo" "pat-wild")
                                ("pat-var" "hi" "pat-wild"))
                              ("single"
                                "std/core/types/tuple2"
                                "single-struct"
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1")
                              (("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))))
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
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("b"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-quick-sort/partition")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("b"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("b"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-quick-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/quicksort-go"
                                      ("fun"
                                        (("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("b"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon"
                                              "std/core/types/int32")))))))
                                ("var"
                                  ("lo"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("hi"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-quick-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon"
                                          "std/core/types/int32"))))))))))))))
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
                                        (("bdl"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-quick-sort/partition")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("bdl"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-quick-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("bdl"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("fun"
                            (("bdl"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-quick-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32")))))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-quick-sort/elem"
                                ("tcon" "std/core/types/int32")))))
                        ("var"
                          ("bootstrap/validation/example/fp-quick-sort/quicksort-app"
                            ("fun"
                              (("bdl"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))))
                      ("var"
                        ("b"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-quick-sort/partition")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/quicksort"
        ("fun"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/list")
            ("tsyn"
              "bootstrap/validation/example/fp-quick-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-quick-sort/elem"
                  ("tcon" "std/core/types/int32")))))
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
                              (("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("b"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-quick-sort/partition")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("fun"
                          (("xs"
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32"))))
                            ("b"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-quick-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-quick-sort/elem"
                              ("tcon" "std/core/types/int32"))))))))
                ("tapp"
                  ("tcon" "std/core/types/effect-extend")
                  ("tcon" "std/core/types/div")
                  ("tcon" "std/core/types/total"))
                ("tapp"
                  ("tcon" "std/core/types/effect-extend")
                  ("tcon" "std/core/types/div")
                  ("tcon" "std/core/types/total"))
                ("fun"
                  (("xs"
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))
                    ("b"
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/partition")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32")))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/types/div")
                    ("tcon" "std/core/types/total"))
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32"))))
                ("fun"
                  (("xs"
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32"))))
                    ("b"
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-quick-sort/partition")
                        ("tsyn"
                          "bootstrap/validation/example/fp-quick-sort/elem"
                          ("tcon" "std/core/types/int32")))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/types/div")
                    ("tcon" "std/core/types/total"))
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-quick-sort/elem"
                      ("tcon" "std/core/types/int32")))))
              ("var"
                ("bootstrap/validation/example/fp-quick-sort/quicksort-go"
                  ("fun"
                    (("xs"
                        ("tapp"
                          ("tcon" "std/core/types/list")
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("b"
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-quick-sort/partition")
                          ("tsyn"
                            "bootstrap/validation/example/fp-quick-sort/elem"
                            ("tcon" "std/core/types/int32")))))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tcon" "std/core/types/total"))
                    ("tapp"
                      ("tcon" "std/core/types/list")
                      ("tsyn"
                        "bootstrap/validation/example/fp-quick-sort/elem"
                        ("tcon" "std/core/types/int32")))))))
            ("var"
              ("xs"
                ("tapp"
                  ("tcon" "std/core/types/list")
                  ("tsyn"
                    "bootstrap/validation/example/fp-quick-sort/elem"
                    ("tcon" "std/core/types/int32")))))
            ("type-app"
              ("con"
                "bootstrap/validation/example/fp-quick-sort/End"
                ("singleton"
                  "bootstrap/validation/example/fp-quick-sort/partition"
                  ("normal" "True")
                  ("value-repr" "0" "0" "0")
                  "3"))
              ("tsyn"
                "bootstrap/validation/example/fp-quick-sort/elem"
                ("tcon" "std/core/types/int32")))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/rand-list"
        ("fun"
          (("n" ("tcon" "std/core/types/int32"))
            ("seed" ("tcon" "std/core/types/int32")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "std/core/types/list")
            ("tcon" "std/core/types/int32")))
        ("lam"
          (("n" ("tcon" "std/core/types/int32"))
            ("seed" ("tcon" "std/core/types/int32")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("let"
            (("non-rec"
                ("def"
                  "a"
                  ("tcon" "std/core/types/int32")
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
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("i" ("tcon" "std/core/types/int")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/int32"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("std/num/int32/int32"
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32")))))
                    "22695477")
                  "def-val"))
              ("non-rec"
                ("def"
                  "c"
                  ("tcon" "std/core/types/int32")
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
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("i" ("tcon" "std/core/types/int")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/int32"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("std/num/int32/int32"
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32")))))
                    "1")
                  "def-val"))
              ("non-rec"
                ("def"
                  "next"
                  ("tcon" "std/core/types/int32")
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
                                      (("x" ("tcon" "std/core/types/int32"))
                                        ("y" ("tcon" "std/core/types/int32")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("fun"
                          (("x" ("tcon" "std/core/types/int32"))
                            ("y" ("tcon" "std/core/types/int32")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/int32"))
                        ("fun"
                          (("x" ("tcon" "std/core/types/int32"))
                            ("y" ("tcon" "std/core/types/int32")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("std/num/int32/(+)"
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32")))))
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
                                        (("" ("tcon" "std/core/types/int32"))
                                          ("" ("tcon" "std/core/types/int32")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/int32"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int32"))
                                      ("" ("tcon" "std/core/types/int32")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tcon" "std/core/types/int32"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("fun"
                            (("" ("tcon" "std/core/types/int32"))
                              ("" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32"))
                          ("fun"
                            (("" ("tcon" "std/core/types/int32"))
                              ("" ("tcon" "std/core/types/int32")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("std/num/int32/(*)"
                            ("fun"
                              (("" ("tcon" "std/core/types/int32"))
                                ("" ("tcon" "std/core/types/int32")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32")))))
                      ("var" ("a" ("tcon" "std/core/types/int32")))
                      ("var" ("seed" ("tcon" "std/core/types/int32"))))
                    ("var" ("c" ("tcon" "std/core/types/int32"))))
                  "def-val")))
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
                                    (("x" ("tcon" "std/core/types/int32"))
                                      ("y" ("tcon" "std/core/types/int32")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/bool"))))
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("x" ("tcon" "std/core/types/int32"))
                                  ("y" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tcon" "std/core/types/bool"))))))
                      ("tcon" "std/core/types/total")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
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
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("tcon" "std/core/types/bool")))
                    ("var"
                      ("std/num/int32/(>=)"
                        ("fun"
                          (("x" ("tcon" "std/core/types/int32"))
                            ("y" ("tcon" "std/core/types/int32")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/bool")))))
                  ("var" ("n" ("tcon" "std/core/types/int32")))
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
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("i" ("tcon" "std/core/types/int")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/int32"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("std/num/int32/int32"
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32")))))
                    "0")))
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
                          ("tcon" "std/core/types/int32"))
                        ("var" ("next" ("tcon" "std/core/types/int32")))
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
                                            (("n"
                                                ("tcon" "std/core/types/int32"))
                                              ("seed"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("n" ("tcon" "std/core/types/int32"))
                                          ("seed"
                                            ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tcon" "std/core/types/int32")))))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("fun"
                                (("n" ("tcon" "std/core/types/int32"))
                                  ("seed" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tcon" "std/core/types/int32")))
                              ("fun"
                                (("n" ("tcon" "std/core/types/int32"))
                                  ("seed" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tcon" "std/core/types/int32"))))
                            ("var"
                              ("bootstrap/validation/example/fp-quick-sort/rand-list"
                                ("fun"
                                  (("n" ("tcon" "std/core/types/int32"))
                                    ("seed" ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tcon" "std/core/types/int32"))))))
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
                                                    "std/core/types/int32"))
                                                ("y"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon" "std/core/types/int32"))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("x" ("tcon" "std/core/types/int32"))
                                            ("y"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tcon" "std/core/types/int32"))))))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/int32"))
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("tcon" "std/core/types/int32")))
                              ("var"
                                ("std/num/int32/(-)"
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/int32"))
                                      ("y" ("tcon" "std/core/types/int32")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int32")))))
                            ("var" ("n" ("tcon" "std/core/types/int32")))
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
                                                  "std/core/types/int32"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("i"
                                                ("tcon" "std/core/types/int")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))
                                            ("tcon" "std/core/types/int32"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int32"))
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tcon" "std/core/types/int32")))
                                ("var"
                                  ("std/num/int32/int32"
                                    ("fun"
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32")))))
                              "1"))
                          ("var" ("next" ("tcon" "std/core/types/int32"))))))))
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
                      ("type-app"
                        ("con"
                          "std/core/types/Nil"
                          ("singleton"
                            "std/core/types/list"
                            "as-list"
                            ("value-repr" "0" "0" "0")
                            "1"))
                        ("tcon" "std/core/types/int32")))))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/test"
        ("fun"
          (("n" ("tcon" "std/core/types/int32")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total")))
          ("tcon" "std/core/types/unit"))
        ("lam"
          (("n" ("tcon" "std/core/types/int32")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tcon" "std/core/types/total")))
          ("let"
            (("non-rec"
                ("def"
                  "xs"
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tcon" "std/core/types/int32"))
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
                                      (("n" ("tcon" "std/core/types/int32"))
                                        ("seed"
                                          ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tcon" "std/core/types/int32")))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("n" ("tcon" "std/core/types/int32"))
                                    ("seed" ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tcon" "std/core/types/total")))
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tcon" "std/core/types/int32")))))))
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total"))
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/console/console")
                            ("tcon" "std/core/types/total")))
                        ("fun"
                          (("n" ("tcon" "std/core/types/int32"))
                            ("seed" ("tcon" "std/core/types/int32")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total"))
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tcon" "std/core/types/int32")))
                        ("fun"
                          (("n" ("tcon" "std/core/types/int32"))
                            ("seed" ("tcon" "std/core/types/int32")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tcon" "std/core/types/total")))
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tcon" "std/core/types/int32"))))
                      ("var"
                        ("bootstrap/validation/example/fp-quick-sort/rand-list"
                          ("fun"
                            (("n" ("tcon" "std/core/types/int32"))
                              ("seed" ("tcon" "std/core/types/int32")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tcon" "std/core/types/int32"))))))
                    ("var" ("n" ("tcon" "std/core/types/int32")))
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
                                        (("i" ("tcon" "std/core/types/int")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/int32"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("tcon" "std/core/types/int32"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tcon" "std/core/types/total")))
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32"))
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total")))
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("std/num/int32/int32"
                            ("fun"
                              (("i" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32")))))
                      "13"))
                  "def-val"))
              ("non-rec"
                ("def"
                  "x"
                  ("tcon" "std/core/types/int32")
                  ("app"
                    ("type-app"
                      ("var"
                        ("std/num/int32/fold-int32"
                          ("forall"
                            ("10000" "10001")
                            ("fun"
                              (("n" ("tcon" "std/core/types/int32"))
                                ("init" ("tvar" "10000"))
                                ("f"
                                  ("fun"
                                    (("" ("tcon" "std/core/types/int32"))
                                      ("" ("tvar" "10000")))
                                    ("tvar" "10001")
                                    ("tvar" "10000"))))
                              ("tvar" "10001")
                              ("tvar" "10000")))))
                      ("tcon" "std/core/types/int32")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/console/console")
                          ("tcon" "std/core/types/total"))))
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
                                        (("x" ("tcon" "std/core/types/int32"))
                                          ("y" ("tcon" "std/core/types/int32")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/int32"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/int32"))
                                      ("y" ("tcon" "std/core/types/int32")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("tcon" "std/core/types/int32"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tcon" "std/core/types/total")))
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32"))
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total")))
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("std/num/int32/(/)"
                            ("fun"
                              (("x" ("tcon" "std/core/types/int32"))
                                ("y" ("tcon" "std/core/types/int32")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32")))))
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
                                          (("i" ("tcon" "std/core/types/int")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/int32"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/console/console")
                                          ("tcon" "std/core/types/total")))
                                      ("tcon" "std/core/types/int32"))))))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total")))
                            ("fun"
                              (("i" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32"))
                            ("fun"
                              (("i" ("tcon" "std/core/types/int")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tcon" "std/core/types/total")))
                              ("tcon" "std/core/types/int32")))
                          ("var"
                            ("std/num/int32/int32"
                              ("fun"
                                (("i" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int32")))))
                        "10000000")
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
                                          (("i" ("tcon" "std/core/types/int32"))
                                            ("j"
                                              ("tcon" "std/core/types/int32")))
                                          ("tcon" "std/core/types/total")
                                          ("tcon" "std/core/types/int32"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("i" ("tcon" "std/core/types/int32"))
                                        ("j" ("tcon" "std/core/types/int32")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/console/console")
                                          ("tcon" "std/core/types/total")))
                                      ("tcon" "std/core/types/int32"))))))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total")))
                            ("fun"
                              (("i" ("tcon" "std/core/types/int32"))
                                ("j" ("tcon" "std/core/types/int32")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32"))
                            ("fun"
                              (("i" ("tcon" "std/core/types/int32"))
                                ("j" ("tcon" "std/core/types/int32")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tcon" "std/core/types/total")))
                              ("tcon" "std/core/types/int32")))
                          ("var"
                            ("std/num/int32/max"
                              ("fun"
                                (("i" ("tcon" "std/core/types/int32"))
                                  ("j" ("tcon" "std/core/types/int32")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int32")))))
                        ("var" ("n" ("tcon" "std/core/types/int32")))
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
                                                ("tcon" "std/core/types/int")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/int32"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("i" ("tcon" "std/core/types/int")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/console/console")
                                            ("tcon" "std/core/types/total")))
                                        ("tcon" "std/core/types/int32"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tcon" "std/core/types/total")))
                              ("fun"
                                (("i" ("tcon" "std/core/types/int")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int32"))
                              ("fun"
                                (("i" ("tcon" "std/core/types/int")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tcon" "std/core/types/total")))
                                ("tcon" "std/core/types/int32")))
                            ("var"
                              ("std/num/int32/int32"
                                ("fun"
                                  (("i" ("tcon" "std/core/types/int")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/int32")))))
                          "1")))
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
                                        (("i" ("tcon" "std/core/types/int")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/int32"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("tcon" "std/core/types/int32"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tcon" "std/core/types/total")))
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32"))
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tcon" "std/core/types/total")))
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("std/num/int32/int32"
                            ("fun"
                              (("i" ("tcon" "std/core/types/int")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/int32")))))
                      "0")
                    ("lam"
                      (("i" ("tcon" "std/core/types/int32"))
                        ("acc" ("tcon" "std/core/types/int32")))
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/console/console")
                          ("tcon" "std/core/types/total")))
                      ("let"
                        (("non-rec"
                            ("def"
                              "ys"
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                  ("tcon" "std/core/types/int32")))
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
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32")))))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("xs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32")))))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tcon"
                                                    "std/core/console/console")
                                                  ("tcon"
                                                    "std/core/types/total")))
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-quick-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32"))))))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-quick-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/console/console")
                                          ("tcon" "std/core/types/total")))
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-quick-sort/elem"
                                          ("tcon" "std/core/types/int32")))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-quick-sort/quicksort"
                                      ("fun"
                                        (("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32")))))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon"
                                              "std/core/types/int32")))))))
                                ("var"
                                  ("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tcon" "std/core/types/int32")))))
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
                                            (("x"
                                                ("tcon" "std/core/types/int32"))
                                              ("y"
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/int32"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("x" ("tcon" "std/core/types/int32"))
                                          ("y" ("tcon" "std/core/types/int32")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/console/console")
                                            ("tcon" "std/core/types/total")))
                                        ("tcon" "std/core/types/int32"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tcon" "std/core/types/total")))
                              ("fun"
                                (("x" ("tcon" "std/core/types/int32"))
                                  ("y" ("tcon" "std/core/types/int32")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/int32"))
                              ("fun"
                                (("x" ("tcon" "std/core/types/int32"))
                                  ("y" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tcon" "std/core/types/total")))
                                ("tcon" "std/core/types/int32")))
                            ("var"
                              ("std/num/int32/(+)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/int32")))))
                          ("var" ("acc" ("tcon" "std/core/types/int32")))
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
                                              (("m"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/maybe")
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("nothing"
                                                  ("tcon"
                                                    "std/core/types/int32")))
                                              ("tcon" "std/core/types/total")
                                              ("tcon" "std/core/types/int32"))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("m"
                                              ("tapp"
                                                ("tcon" "std/core/types/maybe")
                                                ("tcon"
                                                  "std/core/types/int32")))
                                            ("nothing"
                                              ("tcon" "std/core/types/int32")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon"
                                                "std/core/console/console")
                                              ("tcon" "std/core/types/total")))
                                          ("tcon" "std/core/types/int32"))))))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tcon" "std/core/types/total")))
                                ("fun"
                                  (("m"
                                      ("tapp"
                                        ("tcon" "std/core/types/maybe")
                                        ("tcon" "std/core/types/int32")))
                                    ("nothing" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/int32"))
                                ("fun"
                                  (("m"
                                      ("tapp"
                                        ("tcon" "std/core/types/maybe")
                                        ("tcon" "std/core/types/int32")))
                                    ("nothing" ("tcon" "std/core/types/int32")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tcon" "std/core/types/total")))
                                  ("tcon" "std/core/types/int32")))
                              ("type-app"
                                ("var"
                                  ("std/core/maybe/default"
                                    ("forall"
                                      ("10000")
                                      ("fun"
                                        (("m"
                                            ("tapp"
                                              ("tcon" "std/core/types/maybe")
                                              ("tvar" "10000")))
                                          ("nothing" ("tvar" "10000")))
                                        ("tcon" "std/core/types/total")
                                        ("tvar" "10000")))))
                                ("tcon" "std/core/types/int32")))
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
                                                      ("tcon"
                                                        "std/core/types/list")
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))))
                                                ("tcon" "std/core/types/total")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/maybe")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32"))))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("xs"
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon"
                                                  "std/core/console/console")
                                                ("tcon"
                                                  "std/core/types/total")))
                                            ("tapp"
                                              ("tcon" "std/core/types/maybe")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-quick-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))))))
                                  ("tcon" "std/core/types/total")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tcon" "std/core/types/total")))
                                  ("fun"
                                    (("xs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon" "std/core/types/maybe")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("fun"
                                    (("xs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-quick-sort/elem"
                                            ("tcon" "std/core/types/int32")))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("tapp"
                                      ("tcon" "std/core/types/maybe")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-quick-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("type-app"
                                  ("var"
                                    ("std/core/list/last"
                                      ("forall"
                                        ("10001")
                                        ("fun"
                                          (("xs"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tvar" "10001"))))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon" "std/core/types/maybe")
                                            ("tvar" "10001"))))))
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-quick-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("var"
                                ("ys"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-quick-sort/elem"
                                      ("tcon" "std/core/types/int32"))))))
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
                                                  "std/core/types/int32"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("i"
                                                ("tcon" "std/core/types/int")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon"
                                                  "std/core/console/console")
                                                ("tcon"
                                                  "std/core/types/total")))
                                            ("tcon" "std/core/types/int32"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tcon" "std/core/types/total")))
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/int32"))
                                  ("fun"
                                    (("i" ("tcon" "std/core/types/int")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tcon" "std/core/types/total")))
                                    ("tcon" "std/core/types/int32")))
                                ("var"
                                  ("std/num/int32/int32"
                                    ("fun"
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32")))))
                              "0"))))))
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
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total")))
                            ("tcon" "std/core/types/unit"))))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tcon" "std/core/types/total"))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tcon" "std/core/types/total")))
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
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tcon" "std/core/types/total")))
                    ("tcon" "std/core/types/unit")))
                ("var"
                  ("std/core/console/#string/println"
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
                                  (("x" ("tcon" "std/core/types/string"))
                                    ("y" ("tcon" "std/core/types/string")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/string"))))
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("x" ("tcon" "std/core/types/string"))
                                ("y" ("tcon" "std/core/types/string")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total")))
                              ("tcon" "std/core/types/string"))))))
                    ("tcon" "std/core/types/total")
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tcon" "std/core/types/total")))
                    ("fun"
                      (("x" ("tcon" "std/core/types/string"))
                        ("y" ("tcon" "std/core/types/string")))
                      ("tcon" "std/core/types/total")
                      ("tcon" "std/core/types/string"))
                    ("fun"
                      (("x" ("tcon" "std/core/types/string"))
                        ("y" ("tcon" "std/core/types/string")))
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/console/console")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total")))
                      ("tcon" "std/core/types/string")))
                  ("var"
                    ("std/core/types/(++)"
                      ("fun"
                        (("x" ("tcon" "std/core/types/string"))
                          ("y" ("tcon" "std/core/types/string")))
                        ("tcon" "std/core/types/total")
                        ("tcon" "std/core/types/string")))))
                "\"total: \""
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
                                    (("i" ("tcon" "std/core/types/int32")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/string"))))
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("i" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total")))
                                ("tcon" "std/core/types/string"))))))
                      ("tcon" "std/core/types/total")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/console/console")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total")))
                      ("fun"
                        (("i" ("tcon" "std/core/types/int32")))
                        ("tcon" "std/core/types/total")
                        ("tcon" "std/core/types/string"))
                      ("fun"
                        (("i" ("tcon" "std/core/types/int32")))
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/console/console")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/div")
                            ("tcon" "std/core/types/total")))
                        ("tcon" "std/core/types/string")))
                    ("var"
                      ("std/num/int32/show"
                        ("fun"
                          (("i" ("tcon" "std/core/types/int32")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/string")))))
                  ("var" ("x" ("tcon" "std/core/types/int32"))))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-quick-sort/main"
        ("fun"
          ()
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tapp"
                ("tcon" "std/core/types/effect-extend")
                ("tcon" "std/core/types/ndet")
                ("tcon" "std/core/types/total"))))
          ("tcon" "std/core/types/unit"))
        ("lam"
          ()
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/console/console")
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tcon" "std/core/types/div")
              ("tapp"
                ("tcon" "std/core/types/effect-extend")
                ("tcon" "std/core/types/ndet")
                ("tcon" "std/core/types/total"))))
          ("let"
            (("non-rec"
                ("def"
                  "n"
                  ("tcon" "std/core/types/int32")
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
                                      (("i" ("tcon" "std/core/types/int")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/int32"))))
                                ("tcon" "std/core/types/total")
                                ("fun"
                                  (("i" ("tcon" "std/core/types/int")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/ndet")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))))
                                  ("tcon" "std/core/types/int32"))))))
                        ("tcon" "std/core/types/total")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/ndet")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/console/console")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/int32"))
                        ("fun"
                          (("i" ("tcon" "std/core/types/int")))
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/ndet")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))))
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("std/num/int32/int32"
                          ("fun"
                            (("i" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int32")))))
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
                                        (("m"
                                            ("tapp"
                                              ("tcon" "std/core/types/maybe")
                                              ("tcon" "std/core/types/int")))
                                          ("nothing"
                                            ("tcon" "std/core/types/int")))
                                        ("tcon" "std/core/types/total")
                                        ("tcon" "std/core/types/int"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("m"
                                        ("tapp"
                                          ("tcon" "std/core/types/maybe")
                                          ("tcon" "std/core/types/int")))
                                      ("nothing" ("tcon" "std/core/types/int")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/ndet")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/console/console")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))))
                                    ("tcon" "std/core/types/int"))))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/effect-extend")
                            ("tcon" "std/core/types/ndet")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))))
                          ("fun"
                            (("m"
                                ("tapp"
                                  ("tcon" "std/core/types/maybe")
                                  ("tcon" "std/core/types/int")))
                              ("nothing" ("tcon" "std/core/types/int")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/int"))
                          ("fun"
                            (("m"
                                ("tapp"
                                  ("tcon" "std/core/types/maybe")
                                  ("tcon" "std/core/types/int")))
                              ("nothing" ("tcon" "std/core/types/int")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/ndet")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))))
                            ("tcon" "std/core/types/int")))
                        ("type-app"
                          ("var"
                            ("std/core/maybe/default"
                              ("forall"
                                ("10000")
                                ("fun"
                                  (("m"
                                      ("tapp"
                                        ("tcon" "std/core/types/maybe")
                                        ("tvar" "10000")))
                                    ("nothing" ("tvar" "10000")))
                                  ("tcon" "std/core/types/total")
                                  ("tvar" "10000")))))
                          ("tcon" "std/core/types/int")))
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
                                          (("s"
                                              ("tcon" "std/core/types/string"))
                                            ("hex"
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/@optional")
                                                ("tcon"
                                                  "std/core/types/bool"))))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon" "std/core/types/maybe")
                                            ("tcon" "std/core/types/int")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("s" ("tcon" "std/core/types/string"))
                                        ("hex"
                                          ("tapp"
                                            ("tcon" "std/core/types/@optional")
                                            ("tcon" "std/core/types/bool"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/ndet")
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/console/console")
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/maybe")
                                        ("tcon" "std/core/types/int")))))))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/ndet")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/console/console")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))))
                            ("fun"
                              (("s" ("tcon" "std/core/types/string"))
                                ("hex"
                                  ("tapp"
                                    ("tcon" "std/core/types/@optional")
                                    ("tcon" "std/core/types/bool"))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/maybe")
                                ("tcon" "std/core/types/int")))
                            ("fun"
                              (("s" ("tcon" "std/core/types/string"))
                                ("hex"
                                  ("tapp"
                                    ("tcon" "std/core/types/@optional")
                                    ("tcon" "std/core/types/bool"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/ndet")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))))
                              ("tapp"
                                ("tcon" "std/core/types/maybe")
                                ("tcon" "std/core/types/int"))))
                          ("var"
                            ("std/core/int/parse-int"
                              ("fun"
                                (("s" ("tcon" "std/core/types/string"))
                                  ("hex"
                                    ("tapp"
                                      ("tcon" "std/core/types/@optional")
                                      ("tcon" "std/core/types/bool"))))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/maybe")
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
                                            (("xs"
                                                ("tapp"
                                                  ("tcon" "std/core/types/list")
                                                  ("tcon"
                                                    "std/core/types/string")))
                                              ("default"
                                                ("tcon"
                                                  "std/core/types/string")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/string"))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("xs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tcon" "std/core/types/string")))
                                          ("default"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/ndet")
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/console/console")
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon" "std/core/types/div")
                                              ("tcon" "std/core/types/total"))))
                                        ("tcon" "std/core/types/string"))))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/ndet")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total"))))
                              ("fun"
                                (("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tcon" "std/core/types/string")))
                                  ("default" ("tcon" "std/core/types/string")))
                                ("tcon" "std/core/types/total")
                                ("tcon" "std/core/types/string"))
                              ("fun"
                                (("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tcon" "std/core/types/string")))
                                  ("default" ("tcon" "std/core/types/string")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/ndet")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))))
                                ("tcon" "std/core/types/string")))
                            ("type-app"
                              ("var"
                                ("std/core/list/head"
                                  ("forall"
                                    ("10001")
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tvar" "10001")))
                                        ("default" ("tvar" "10001")))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "10001")))))
                              ("tcon" "std/core/types/string")))
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
                                              ()
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/ndet")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tcon"
                                                  "std/core/types/string")))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          ()
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/ndet")
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tcon"
                                                "std/core/console/console")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon"
                                                  "std/core/types/total"))))
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tcon"
                                              "std/core/types/string")))))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/ndet")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/ndet")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/console/console")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))))
                                ("fun"
                                  ()
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/ndet")
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tcon" "std/core/types/string")))
                                ("fun"
                                  ()
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/ndet")
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/console/console")
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))))
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tcon" "std/core/types/string"))))
                              ("var"
                                ("std/os/env/get-args"
                                  ("fun"
                                    ()
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/ndet")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tcon" "std/core/types/string")))))))
                          "\"\"")
                        ("type-app"
                          ("con"
                            "std/core/types/@None"
                            ("singleton"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "1" "8")
                              "2"))
                          ("tcon" "std/core/types/bool")))
                      "100"))
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
                                (("n" ("tcon" "std/core/types/int32")))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/console/console")
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tcon" "std/core/types/div")
                                    ("tcon" "std/core/types/total")))
                                ("tcon" "std/core/types/unit"))))
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("n" ("tcon" "std/core/types/int32")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/console/console")
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/ndet")
                                  ("tcon" "std/core/types/total"))))
                            ("tcon" "std/core/types/unit"))))))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tcon" "std/core/types/total")))
                  ("tapp"
                    ("tcon" "std/core/types/effect-extend")
                    ("tcon" "std/core/console/console")
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/types/div")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/ndet")
                        ("tcon" "std/core/types/total"))))
                  ("fun"
                    (("n" ("tcon" "std/core/types/int32")))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tcon" "std/core/types/total")))
                    ("tcon" "std/core/types/unit"))
                  ("fun"
                    (("n" ("tcon" "std/core/types/int32")))
                    ("tapp"
                      ("tcon" "std/core/types/effect-extend")
                      ("tcon" "std/core/console/console")
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/types/div")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/ndet")
                          ("tcon" "std/core/types/total"))))
                    ("tcon" "std/core/types/unit")))
                ("var"
                  ("bootstrap/validation/example/fp-quick-sort/test"
                    ("fun"
                      (("n" ("tcon" "std/core/types/int32")))
                      ("tapp"
                        ("tcon" "std/core/types/effect-extend")
                        ("tcon" "std/core/console/console")
                        ("tapp"
                          ("tcon" "std/core/types/effect-extend")
                          ("tcon" "std/core/types/div")
                          ("tcon" "std/core/types/total")))
                      ("tcon" "std/core/types/unit")))))
              ("var" ("n" ("tcon" "std/core/types/int32"))))))
        ("def-fun" () ("no-fip" "False"))))))
