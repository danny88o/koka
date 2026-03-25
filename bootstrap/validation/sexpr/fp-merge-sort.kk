("core"
  (("type-def-group"
      ("synonym"
        "bootstrap/validation/example/fp-merge-sort/elem"
        ("tcon" "std/core/types/int32")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-merge-sort/pad"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-merge-sort/Pad"
              ()
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-merge-sort/sublist"
          ("8")
          (("con-info"
              "bootstrap/validation/example/fp-merge-sort/SCons"
              (("a" ("tvar" "8"))
                ("cs"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-merge-sort/sublist")
                    ("tvar" "8"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-merge-sort/STuple"
              (("a" ("tvar" "8")) ("b" ("tvar" "8")))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-merge-sort/partition"
          ("15")
          (("con-info"
              "bootstrap/validation/example/fp-merge-sort/Singleton"
              (("c"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-merge-sort/sublist")
                    ("tvar" "15")))
                ("z"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-merge-sort/partition")
                    ("tvar" "15"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-merge-sort/Sublist"
              (("c" ("tvar" "15"))
                ("z"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-merge-sort/partition")
                    ("tvar" "15"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-merge-sort/End"
              ()
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-merge-sort/unit2"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-merge-sort/Unit2"
              (("a" ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))
                ("b" ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
              "nothing"))
          "False"
          "normal"))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/#pad/@copy"
        ("fun"
          (("@this" ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))
        ("lam"
          (("@this" ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
          ("tcon" "std/core/types/total")
          ("con"
            "bootstrap/validation/example/fp-merge-sort/Pad"
            ("singleton"
              "bootstrap/validation/example/fp-merge-sort/pad"
              ("single" "True")
              ("value-repr" "0" "0" "0")
              "1")))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/#unit2/a"
        ("fun"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))
        ("lam"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("unit2"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-merge-sort/Unit2"
                    (("pat-var"
                        "@x"
                        ("pat-con"
                          "bootstrap/validation/example/fp-merge-sort/Pad"
                          ()
                          ("singleton"
                            "bootstrap/validation/example/fp-merge-sort/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("pat-con"
                        "bootstrap/validation/example/fp-merge-sort/Pad"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/fp-merge-sort/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("single"
                      "bootstrap/validation/example/fp-merge-sort/unit2"
                      ("single" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-merge-sort/pad")
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/pad"))))
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
                          "bootstrap/validation/example/fp-merge-sort/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/#unit2/b"
        ("fun"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))
        ("lam"
          (("unit2"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("unit2"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-merge-sort/Unit2"
                    (("pat-con"
                        "bootstrap/validation/example/fp-merge-sort/Pad"
                        ()
                        ("singleton"
                          "bootstrap/validation/example/fp-merge-sort/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var"
                        "@x"
                        ("pat-con"
                          "bootstrap/validation/example/fp-merge-sort/Pad"
                          ()
                          ("singleton"
                            "bootstrap/validation/example/fp-merge-sort/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())))
                    ("single"
                      "bootstrap/validation/example/fp-merge-sort/unit2"
                      ("single" "False")
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1")
                    (("tcon" "bootstrap/validation/example/fp-merge-sort/pad")
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/pad"))))
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
                          "bootstrap/validation/example/fp-merge-sort/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/#unit2/@copy"
        ("fun"
          (("@this" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2"))
        ("lam"
          (("@this" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))))
          ("tcon" "std/core/types/total")
          ("let"
            (("non-rec"
                ("def"
                  "@uniq-a@81"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")
                  ("case"
                    (("var"
                        ("a"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-merge-sort/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-a@82" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-merge-sort/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-a@82"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/pad"))))))
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
                                                      "bootstrap/validation/example/fp-merge-sort/unit2")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("unit2"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/pad"))
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-merge-sort/#unit2/a"
                                    ("fun"
                                      (("unit2"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-b@89"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")
                  ("case"
                    (("var"
                        ("b"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon"
                              "bootstrap/validation/example/fp-merge-sort/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-b@90" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon"
                                "bootstrap/validation/example/fp-merge-sort/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-b@90"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/pad"))))))
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
                                                      "bootstrap/validation/example/fp-merge-sort/unit2")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("unit2"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/pad"))
                                  ("fun"
                                    (("unit2"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-merge-sort/#unit2/b"
                                    ("fun"
                                      (("unit2"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))))))))
                  "def-val")))
            ("app"
              ("con"
                "bootstrap/validation/example/fp-merge-sort/Unit2"
                ("single"
                  "bootstrap/validation/example/fp-merge-sort/unit2"
                  ("single" "False")
                  ("value-repr" "0" "2" "8")
                  "none"
                  "1"))
              ("var"
                ("@uniq-a@81"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/pad")))
              ("var"
                ("@uniq-b@89"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/pad"))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/#sublist/a"
        ("forall"
          ("119")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "119"))))
            ("tcon" "std/core/types/total")
            ("tvar" "119")))
        ("type-lam"
          ("119")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "119"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "119")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      (("pat-var" "@x" "pat-wild") "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "119")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "119")))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "119"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/STuple"
                      (("pat-var" "@x" "pat-wild") "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "119") ("tvar" "119"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "119"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/is-scons"
        ("forall"
          ("136")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "136"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("136")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "136"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "136")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "136")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "136")))))
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
        "bootstrap/validation/example/fp-merge-sort/is-stuple"
        ("forall"
          ("154")
          ("fun"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "154"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("154")
          ("lam"
            (("sublist"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "154"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("sublist"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "154")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/STuple"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "154") ("tvar" "154"))))
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
        "bootstrap/validation/example/fp-merge-sort/is-singleton"
        ("forall"
          ("172")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "172"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("172")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "172"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/partition")
                      ("tvar" "172")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/Singleton"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/partition"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "172"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/partition")
                          ("tvar" "172")))))
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
        "bootstrap/validation/example/fp-merge-sort/is-sublist"
        ("forall"
          ("190")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "190"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("190")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "190"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/partition")
                      ("tvar" "190")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/Sublist"
                      ("pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/partition"
                        ("normal" "True")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "190")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/partition")
                          ("tvar" "190")))))
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
        "bootstrap/validation/example/fp-merge-sort/is-end"
        ("forall"
          ("208")
          ("fun"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "208"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("208")
          ("lam"
            (("partition"
                ("tapp"
                  ("tcon"
                    "bootstrap/validation/example/fp-merge-sort/partition")
                  ("tvar" "208"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("partition"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/partition")
                      ("tvar" "208")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/End"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-merge-sort/partition"
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
        "bootstrap/validation/example/fp-merge-sort/reverse-go"
        ("forall"
          ("266")
          ("fun"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "266")))
              ("acc"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "266")))
              ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
            ("tcon" "std/core/types/total")
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
              ("tvar" "266"))))
        ("type-lam"
          ("266")
          ("lam"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "266")))
              ("acc"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "266")))
              ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("c"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "266")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      (("pat-var" "a" "pat-wild") ("pat-var" "cs" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "266")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "266")))))
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
                                          (("c"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                                ("tvar" "266")))
                                            ("acc"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                                ("tvar" "266")))
                                            ("u"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/unit2")))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "266")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("c"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "266")))
                                        ("acc"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "266")))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/sublist")
                                        ("tvar" "266")))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "266")))
                                ("acc"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "266")))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "266")))
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "266")))
                                ("acc"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "266")))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "266"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-merge-sort/reverse-go"
                                ("forall"
                                  ("266")
                                  ("fun"
                                    (("c"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tvar" "266")))
                                      ("acc"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tvar" "266")))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/sublist")
                                      ("tvar" "266"))))))
                            ("tvar" "266")))
                        ("var"
                          ("cs"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tvar" "266"))))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-merge-sort/SCons"
                              ("normal"
                                "bootstrap/validation/example/fp-merge-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1"))
                            ("tvar" "266"))
                          ("var" ("a" ("tvar" "266")))
                          ("var"
                            ("acc"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "266")))))
                        ("var"
                          ("u"
                            ("tcon"
                              "bootstrap/validation/example/fp-merge-sort/unit2")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/STuple"
                      (("pat-var" "a" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "266") ("tvar" "266"))))
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
                            "bootstrap/validation/example/fp-merge-sort/SCons"
                            ("normal"
                              "bootstrap/validation/example/fp-merge-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tvar" "266"))
                        ("var" ("b" ("tvar" "266")))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-merge-sort/SCons"
                              ("normal"
                                "bootstrap/validation/example/fp-merge-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "1"))
                            ("tvar" "266"))
                          ("var" ("a" ("tvar" "266")))
                          ("var"
                            ("acc"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "266")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/reverse-sublist"
        ("forall"
          ("347")
          ("fun"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "347"))))
            ("tcon" "std/core/types/total")
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
              ("tvar" "347"))))
        ("type-lam"
          ("347")
          ("lam"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "347"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("c"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "347")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      (("pat-var" "a" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-merge-sort/SCons"
                          (("pat-var" "b" "pat-wild")
                            ("pat-var" "c" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-merge-sort/sublist"
                            ("normal" "False")
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1")
                          (("tvar" "347")
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tvar" "347")))))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "347")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "347")))))
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
                                          (("c"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                                ("tvar" "347")))
                                            ("acc"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                                ("tvar" "347")))
                                            ("u"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/unit2")))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "347")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("c"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "347")))
                                        ("acc"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "347")))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/sublist")
                                        ("tvar" "347")))))))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/total")
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "347")))
                                ("acc"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "347")))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "347")))
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "347")))
                                ("acc"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tvar" "347")))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "347"))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-merge-sort/reverse-go"
                                ("forall"
                                  ("266")
                                  ("fun"
                                    (("c"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tvar" "266")))
                                      ("acc"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tvar" "266")))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/sublist")
                                      ("tvar" "266"))))))
                            ("tvar" "347")))
                        ("var"
                          ("c"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tvar" "347"))))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-merge-sort/STuple"
                              ("normal"
                                "bootstrap/validation/example/fp-merge-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "2"))
                            ("tvar" "347"))
                          ("var" ("b" ("tvar" "347")))
                          ("var" ("a" ("tvar" "347"))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-merge-sort/Unit2"
                            ("single"
                              "bootstrap/validation/example/fp-merge-sort/unit2"
                              ("single" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("con"
                            "bootstrap/validation/example/fp-merge-sort/Pad"
                            ("singleton"
                              "bootstrap/validation/example/fp-merge-sort/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "bootstrap/validation/example/fp-merge-sort/Pad"
                            ("singleton"
                              "bootstrap/validation/example/fp-merge-sort/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      (("pat-var" "a" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-merge-sort/STuple"
                          (("pat-var" "b" "pat-wild")
                            ("pat-var" "c" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-merge-sort/sublist"
                            ("normal" "False")
                            ("value-repr" "0" "2" "8")
                            "none"
                            "2")
                          (("tvar" "347") ("tvar" "347"))))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "347")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "347")))))
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
                            "bootstrap/validation/example/fp-merge-sort/SCons"
                            ("normal"
                              "bootstrap/validation/example/fp-merge-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tvar" "347"))
                        ("var" ("c" ("tvar" "347")))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-merge-sort/STuple"
                              ("normal"
                                "bootstrap/validation/example/fp-merge-sort/sublist"
                                ("normal" "False")
                                ("value-repr" "0" "2" "8")
                                "none"
                                "2"))
                            ("tvar" "347"))
                          ("var" ("b" ("tvar" "347")))
                          ("var" ("a" ("tvar" "347"))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/STuple"
                      (("pat-var" "a" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "347") ("tvar" "347"))))
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
                            "bootstrap/validation/example/fp-merge-sort/STuple"
                            ("normal"
                              "bootstrap/validation/example/fp-merge-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "2"))
                          ("tvar" "347"))
                        ("var" ("b" ("tvar" "347")))
                        ("var" ("a" ("tvar" "347")))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/to-list"
        ("forall"
          ("405")
          ("fun"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "405")))
              ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
            ("tcon" "std/core/types/total")
            ("tapp" ("tcon" "std/core/types/list") ("tvar" "405"))))
        ("type-lam"
          ("405")
          ("lam"
            (("c"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                  ("tvar" "405")))
              ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("c"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-merge-sort/sublist")
                      ("tvar" "405")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/SCons"
                      (("pat-var" "a" "pat-wild") ("pat-var" "cs" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tvar" "405")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/sublist")
                          ("tvar" "405")))))
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
                          ("tvar" "405"))
                        ("var" ("a" ("tvar" "405")))
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
                                            (("c"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-merge-sort/sublist")
                                                  ("tvar" "405")))
                                              ("u"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                                            ("tcon" "std/core/types/total")
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tvar" "405")))))
                                      ("tcon" "std/core/types/total")
                                      ("fun"
                                        (("c"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/sublist")
                                              ("tvar" "405")))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/unit2")))
                                        ("tcon" "std/core/types/total")
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tvar" "405")))))))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/total")
                              ("fun"
                                (("c"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/sublist")
                                      ("tvar" "405")))
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/unit2")))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tvar" "405")))
                              ("fun"
                                (("c"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/sublist")
                                      ("tvar" "405")))
                                  ("u"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/unit2")))
                                ("tcon" "std/core/types/total")
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tvar" "405"))))
                            ("type-app"
                              ("var"
                                ("bootstrap/validation/example/fp-merge-sort/to-list"
                                  ("forall"
                                    ("405")
                                    ("fun"
                                      (("c"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tvar" "405")))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon" "std/core/types/list")
                                        ("tvar" "405"))))))
                              ("tvar" "405")))
                          ("var"
                            ("cs"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tvar" "405"))))
                          ("var"
                            ("u"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/unit2"))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-merge-sort/STuple"
                      (("pat-var" "a" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-merge-sort/sublist"
                        ("normal" "False")
                        ("value-repr" "0" "2" "8")
                        "none"
                        "2")
                      (("tvar" "405") ("tvar" "405"))))
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
                          ("tvar" "405"))
                        ("var" ("a" ("tvar" "405")))
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
                            ("tvar" "405"))
                          ("var" ("b" ("tvar" "405")))
                          ("type-app"
                            ("con"
                              "std/core/types/Nil"
                              ("singleton"
                                "std/core/types/list"
                                "as-list"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tvar" "405")))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/ascending"
        ("fun"
          (("a"
              ("tsyn"
                "bootstrap/validation/example/fp-merge-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("sublist"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("bs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "bootstrap/validation/example/fp-merge-sort/partition")
            ("tsyn"
              "bootstrap/validation/example/fp-merge-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("a"
              ("tsyn"
                "bootstrap/validation/example/fp-merge-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("sublist"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("bs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("bs"
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-merge-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "std/core/types/Cons"
                    (("pat-var" "b" "pat-wild") ("pat-var" "bs1" "pat-wild"))
                    ("as-cons"
                      "std/core/types/list"
                      "as-list"
                      ("value-repr" "0" "2" "8")
                      "std/core/types/Nil"
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-merge-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
                (("guard"
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
                                        ("tcon" "std/core/types/bool"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/int32"))
                                      ("y" ("tcon" "std/core/types/int32")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/bool"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/bool"))
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/bool")))
                        ("var"
                          ("std/num/int32/(<=)"
                            ("fun"
                              (("x" ("tcon" "std/core/types/int32"))
                                ("y" ("tcon" "std/core/types/int32")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/bool")))))
                      ("var"
                        ("a"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("var"
                        ("b"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
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
                                        (("a"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("sublist"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("bs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("a"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("sublist"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("bs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
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
                            (("a"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("sublist"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("bs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("fun"
                            (("a"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("sublist"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("bs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32")))))
                        ("var"
                          ("bootstrap/validation/example/fp-merge-sort/ascending"
                            ("fun"
                              (("a"
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("sublist"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("bs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))))))
                      ("var"
                        ("b"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("app"
                        ("type-app"
                          ("con"
                            "bootstrap/validation/example/fp-merge-sort/SCons"
                            ("normal"
                              "bootstrap/validation/example/fp-merge-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("b"
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("sublist"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      ("var"
                        ("bs1"
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("u"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/unit2")))))))
              ("branch"
                (("pat-var" "bs" "pat-wild"))
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
                          "bootstrap/validation/example/fp-merge-sort/Singleton"
                          ("normal"
                            "bootstrap/validation/example/fp-merge-sort/partition"
                            ("normal" "True")
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1"))
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
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
                                          (("c"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))
                                          ("tcon" "std/core/types/total")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("c"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/sublist")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32"))))))))
                            ("tcon" "std/core/types/total")
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tcon" "std/core/types/total")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32"))))
                            ("fun"
                              (("c"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/sublist")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-merge-sort/reverse-sublist"
                                ("forall"
                                  ("347")
                                  ("fun"
                                    (("c"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tvar" "347"))))
                                    ("tcon" "std/core/types/total")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/sublist")
                                      ("tvar" "347"))))))
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("sublist"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
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
                                          (("xs"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
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
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32"))))
                            ("fun"
                              (("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("var"
                            ("bootstrap/validation/example/fp-merge-sort/sequences"
                              ("fun"
                                (("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32")))))))
                        ("var"
                          ("bs"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0"))))
      ("def"
        "bootstrap/validation/example/fp-merge-sort/sequences"
        ("fun"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32")))))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "bootstrap/validation/example/fp-merge-sort/partition")
            ("tsyn"
              "bootstrap/validation/example/fp-merge-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("xs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
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
                      "bootstrap/validation/example/fp-merge-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "std/core/types/Cons"
                    (("pat-var" "a" "pat-wild")
                      ("pat-con"
                        "std/core/types/Cons"
                        (("pat-var" "b" "pat-wild")
                          ("pat-var" "xs1" "pat-wild"))
                        ("as-cons"
                          "std/core/types/list"
                          "as-list"
                          ("value-repr" "0" "2" "8")
                          "std/core/types/Nil"
                          "none"
                          "2")
                        (("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32"))))))
                    ("as-cons"
                      "std/core/types/list"
                      "as-list"
                      ("value-repr" "0" "2" "8")
                      "std/core/types/Nil"
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-merge-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
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
                              ("std/num/int32/(>)"
                                ("fun"
                                  (("x" ("tcon" "std/core/types/int32"))
                                    ("y" ("tcon" "std/core/types/int32")))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/bool")))))
                          ("var"
                            ("a"
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("var"
                            ("b"
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
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
                                                  (("a"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("sublist"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-merge-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("bs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-merge-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-merge-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("a"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("sublist"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("bs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-merge-sort/elem"
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
                                      (("a"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("sublist"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("bs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("fun"
                                      (("a"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("sublist"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("bs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32")))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-merge-sort/descending"
                                      ("fun"
                                        (("a"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("sublist"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("bs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon"
                                              "std/core/types/int32")))))))
                                ("var"
                                  ("b"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-merge-sort/STuple"
                                      ("normal"
                                        "bootstrap/validation/example/fp-merge-sort/sublist"
                                        ("normal" "False")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("b"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("a"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("xs1"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Unit2"
                                    ("single"
                                      "bootstrap/validation/example/fp-merge-sort/unit2"
                                      ("single" "False")
                                      ("value-repr" "0" "2" "8")
                                      "none"
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-merge-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-merge-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")))))))
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
                                                  (("a"
                                                      ("tsyn"
                                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                                        ("tcon"
                                                          "std/core/types/int32")))
                                                    ("sublist"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-merge-sort/sublist")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("bs"
                                                      ("tapp"
                                                        ("tcon"
                                                          "std/core/types/list")
                                                        ("tsyn"
                                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                                          ("tcon"
                                                            "std/core/types/int32"))))
                                                    ("u"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-merge-sort/unit2")))
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/effect-extend")
                                                    ("tcon"
                                                      "std/core/types/div")
                                                    ("tcon"
                                                      "std/core/types/total"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-merge-sort/partition")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("a"
                                                  ("tsyn"
                                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                                    ("tcon"
                                                      "std/core/types/int32")))
                                                ("sublist"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("bs"
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/list")
                                                    ("tsyn"
                                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                                      ("tcon"
                                                        "std/core/types/int32"))))
                                                ("u"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tcon" "std/core/types/div")
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-merge-sort/elem"
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
                                      (("a"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("sublist"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("bs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32"))))
                                    ("fun"
                                      (("a"
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32")))
                                        ("sublist"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/sublist")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("bs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32"))))
                                        ("u"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/unit2")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32")))))
                                  ("var"
                                    ("bootstrap/validation/example/fp-merge-sort/ascending"
                                      ("fun"
                                        (("a"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("sublist"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("bs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon"
                                              "std/core/types/int32")))))))
                                ("var"
                                  ("b"
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("app"
                                  ("type-app"
                                    ("con"
                                      "bootstrap/validation/example/fp-merge-sort/STuple"
                                      ("normal"
                                        "bootstrap/validation/example/fp-merge-sort/sublist"
                                        ("normal" "False")
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "2"))
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))
                                  ("var"
                                    ("b"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32"))))
                                  ("var"
                                    ("a"
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("var"
                                  ("xs1"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("app"
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Unit2"
                                    ("single"
                                      "bootstrap/validation/example/fp-merge-sort/unit2"
                                      ("single" "False")
                                      ("value-repr" "0" "2" "8")
                                      "none"
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-merge-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1"))
                                  ("con"
                                    "bootstrap/validation/example/fp-merge-sort/Pad"
                                    ("singleton"
                                      "bootstrap/validation/example/fp-merge-sort/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1"))))))))))))
              ("branch"
                (("pat-con"
                    "std/core/types/Cons"
                    (("pat-var" "a" "pat-wild")
                      ("pat-con"
                        "std/core/types/Nil"
                        ()
                        ("singleton"
                          "std/core/types/list"
                          "as-list"
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("as-cons"
                      "std/core/types/list"
                      "as-list"
                      ("value-repr" "0" "2" "8")
                      "std/core/types/Nil"
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-merge-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
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
                          "bootstrap/validation/example/fp-merge-sort/Sublist"
                          ("normal"
                            "bootstrap/validation/example/fp-merge-sort/partition"
                            ("normal" "True")
                            ("value-repr" "0" "2" "8")
                            "none"
                            "2"))
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("a"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("type-app"
                        ("con"
                          "bootstrap/validation/example/fp-merge-sort/End"
                          ("singleton"
                            "bootstrap/validation/example/fp-merge-sort/partition"
                            ("normal" "True")
                            ("value-repr" "0" "0" "0")
                            "3"))
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
                          ("tcon" "std/core/types/int32")))))))
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
                    ("type-app"
                      ("con"
                        "bootstrap/validation/example/fp-merge-sort/End"
                        ("singleton"
                          "bootstrap/validation/example/fp-merge-sort/partition"
                          ("normal" "True")
                          ("value-repr" "0" "0" "0")
                          "3"))
                      ("tsyn"
                        "bootstrap/validation/example/fp-merge-sort/elem"
                        ("tcon" "std/core/types/int32")))))))))
        ("def-fun" () ("fip" ("at-most" "0"))))
      ("def"
        "bootstrap/validation/example/fp-merge-sort/descending"
        ("fun"
          (("a"
              ("tsyn"
                "bootstrap/validation/example/fp-merge-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("sublist"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("bs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("tapp"
            ("tcon" "bootstrap/validation/example/fp-merge-sort/partition")
            ("tsyn"
              "bootstrap/validation/example/fp-merge-sort/elem"
              ("tcon" "std/core/types/int32"))))
        ("lam"
          (("a"
              ("tsyn"
                "bootstrap/validation/example/fp-merge-sort/elem"
                ("tcon" "std/core/types/int32")))
            ("sublist"
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-merge-sort/sublist")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("bs"
              ("tapp"
                ("tcon" "std/core/types/list")
                ("tsyn"
                  "bootstrap/validation/example/fp-merge-sort/elem"
                  ("tcon" "std/core/types/int32"))))
            ("u" ("tcon" "bootstrap/validation/example/fp-merge-sort/unit2")))
          ("tapp"
            ("tcon" "std/core/types/effect-extend")
            ("tcon" "std/core/types/div")
            ("tcon" "std/core/types/total"))
          ("case"
            (("var"
                ("bs"
                  ("tapp"
                    ("tcon" "std/core/types/list")
                    ("tsyn"
                      "bootstrap/validation/example/fp-merge-sort/elem"
                      ("tcon" "std/core/types/int32"))))))
            (("branch"
                (("pat-con"
                    "std/core/types/Cons"
                    (("pat-var" "b" "pat-wild") ("pat-var" "bs1" "pat-wild"))
                    ("as-cons"
                      "std/core/types/list"
                      "as-list"
                      ("value-repr" "0" "2" "8")
                      "std/core/types/Nil"
                      "none"
                      "2")
                    (("tsyn"
                        "bootstrap/validation/example/fp-merge-sort/elem"
                        ("tcon" "std/core/types/int32"))
                      ("tapp"
                        ("tcon" "std/core/types/list")
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
                          ("tcon" "std/core/types/int32"))))))
                (("guard"
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
                                        ("tcon" "std/core/types/bool"))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("x" ("tcon" "std/core/types/int32"))
                                      ("y" ("tcon" "std/core/types/int32")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/bool"))))))
                          ("tcon" "std/core/types/total")
                          ("tcon" "std/core/types/total")
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/bool"))
                          ("fun"
                            (("x" ("tcon" "std/core/types/int32"))
                              ("y" ("tcon" "std/core/types/int32")))
                            ("tcon" "std/core/types/total")
                            ("tcon" "std/core/types/bool")))
                        ("var"
                          ("std/num/int32/(>)"
                            ("fun"
                              (("x" ("tcon" "std/core/types/int32"))
                                ("y" ("tcon" "std/core/types/int32")))
                              ("tcon" "std/core/types/total")
                              ("tcon" "std/core/types/bool")))))
                      ("var"
                        ("a"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("var"
                        ("b"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
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
                                        (("a"
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon" "std/core/types/int32")))
                                          ("sublist"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-merge-sort/sublist")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("bs"
                                            ("tapp"
                                              ("tcon" "std/core/types/list")
                                              ("tsyn"
                                                "bootstrap/validation/example/fp-merge-sort/elem"
                                                ("tcon"
                                                  "std/core/types/int32"))))
                                          ("u"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/unit2")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tcon" "std/core/types/div")
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/partition")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))))
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("a"
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
                                          ("tcon" "std/core/types/int32")))
                                      ("sublist"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-merge-sort/sublist")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("bs"
                                        ("tapp"
                                          ("tcon" "std/core/types/list")
                                          ("tsyn"
                                            "bootstrap/validation/example/fp-merge-sort/elem"
                                            ("tcon" "std/core/types/int32"))))
                                      ("u"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/unit2")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tcon" "std/core/types/div")
                                      ("tcon" "std/core/types/total"))
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-merge-sort/partition")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
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
                            (("a"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("sublist"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("bs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32"))))
                          ("fun"
                            (("a"
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))
                              ("sublist"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/sublist")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("bs"
                                ("tapp"
                                  ("tcon" "std/core/types/list")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32"))))
                              ("u"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/unit2")))
                            ("tapp"
                              ("tcon" "std/core/types/effect-extend")
                              ("tcon" "std/core/types/div")
                              ("tcon" "std/core/types/total"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/partition")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32")))))
                        ("var"
                          ("bootstrap/validation/example/fp-merge-sort/descending"
                            ("fun"
                              (("a"
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32")))
                                ("sublist"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-merge-sort/sublist")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("bs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32"))))
                                ("u"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/unit2")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))))))
                      ("var"
                        ("b"
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32"))))
                      ("app"
                        ("type-app"
                          ("con"
                            "bootstrap/validation/example/fp-merge-sort/SCons"
                            ("normal"
                              "bootstrap/validation/example/fp-merge-sort/sublist"
                              ("normal" "False")
                              ("value-repr" "0" "2" "8")
                              "none"
                              "1"))
                          ("tsyn"
                            "bootstrap/validation/example/fp-merge-sort/elem"
                            ("tcon" "std/core/types/int32")))
                        ("var"
                          ("b"
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32"))))
                        ("var"
                          ("sublist"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-merge-sort/sublist")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32"))))))
                      ("var"
                        ("bs1"
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
                              ("tcon" "std/core/types/int32")))))
                      ("var"
                        ("u"
                          ("tcon"
                            "bootstrap/validation/example/fp-merge-sort/unit2")))))))
              ("branch"
                (("pat-var" "bs" "pat-wild"))
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
                          "bootstrap/validation/example/fp-merge-sort/Singleton"
                          ("normal"
                            "bootstrap/validation/example/fp-merge-sort/partition"
                            ("normal" "True")
                            ("value-repr" "0" "2" "8")
                            "none"
                            "1"))
                        ("tsyn"
                          "bootstrap/validation/example/fp-merge-sort/elem"
                          ("tcon" "std/core/types/int32")))
                      ("var"
                        ("sublist"
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-merge-sort/sublist")
                            ("tsyn"
                              "bootstrap/validation/example/fp-merge-sort/elem"
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
                                          (("xs"
                                              ("tapp"
                                                ("tcon" "std/core/types/list")
                                                ("tsyn"
                                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                                  ("tcon"
                                                    "std/core/types/int32")))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tcon" "std/core/types/div")
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-merge-sort/partition")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32"))))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("xs"
                                          ("tapp"
                                            ("tcon" "std/core/types/list")
                                            ("tsyn"
                                              "bootstrap/validation/example/fp-merge-sort/elem"
                                              ("tcon"
                                                "std/core/types/int32")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tcon" "std/core/types/div")
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-merge-sort/partition")
                                        ("tsyn"
                                          "bootstrap/validation/example/fp-merge-sort/elem"
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
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32"))))
                            ("fun"
                              (("xs"
                                  ("tapp"
                                    ("tcon" "std/core/types/list")
                                    ("tsyn"
                                      "bootstrap/validation/example/fp-merge-sort/elem"
                                      ("tcon" "std/core/types/int32")))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tcon" "std/core/types/div")
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-merge-sort/partition")
                                ("tsyn"
                                  "bootstrap/validation/example/fp-merge-sort/elem"
                                  ("tcon" "std/core/types/int32")))))
                          ("var"
                            ("bootstrap/validation/example/fp-merge-sort/sequences"
                              ("fun"
                                (("xs"
                                    ("tapp"
                                      ("tcon" "std/core/types/list")
                                      ("tsyn"
                                        "bootstrap/validation/example/fp-merge-sort/elem"
                                        ("tcon" "std/core/types/int32")))))
                                ("tapp"
                                  ("tcon" "std/core/types/effect-extend")
                                  ("tcon" "std/core/types/div")
                                  ("tcon" "std/core/types/total"))
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-merge-sort/partition")
                                  ("tsyn"
                                    "bootstrap/validation/example/fp-merge-sort/elem"
                                    ("tcon" "std/core/types/int32")))))))
                        ("var"
                          ("bs"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tsyn"
                                "bootstrap/validation/example/fp-merge-sort/elem"
                                ("tcon" "std/core/types/int32")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-merge-sort/main"
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
