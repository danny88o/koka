("core"
  (("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/afew"
          ("3")
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/One"
              (("a" ("tvar" "3"))
                ("b" ("tcon" "std/core/types/pad"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/Two"
              (("a" ("tvar" "3"))
                ("b" ("tvar" "3"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/Three"
              (("a" ("tvar" "3")) ("b" ("tvar" "3")) ("c" ("tvar" "3")))
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/buffer"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/BNil"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/BCons"
              (("next"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer"))
                ("b" ("tcon" "std/core/types/pad"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/tuple"
          ("9")
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/Pair"
              (("a" ("tvar" "9"))
                ("b" ("tvar" "9"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/Triple"
              (("a" ("tvar" "9")) ("b" ("tvar" "9")) ("c" ("tvar" "9")))
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/seq"
          ("20")
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/Empty"
              ()
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/Unit"
              (("a" ("tvar" "20"))
                ("b" ("tcon" "std/core/types/pad"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/More0"
              (("l" ("tvar" "20"))
                ("s"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "20"))))
                ("r"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                    ("tvar" "20"))))
              "nothing")
            ("con-info"
              "bootstrap/validation/example/fp-finger-trees/More"
              (("l"
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-finger-trees/tuple")
                    ("tvar" "20")))
                ("s"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "20"))))
                ("r"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                    ("tvar" "20"))))
              "nothing"))
          "True"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/bseq"
          ("25")
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/BSeq"
              (("s"
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                    ("tvar" "25")))
                ("q"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer")))
              "nothing"))
          "False"
          ("value" ("value-repr" "0" "2" "8")))))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/reuse3"
          ()
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/Reuse3"
              (("a" ("tcon" "std/core/types/pad"))
                ("b" ("tcon" "std/core/types/pad"))
                ("c" ("tcon" "std/core/types/pad")))
              "nothing"))
          "False"
          "normal")))
    ("type-def-group"
      ("data"
        ("data-info"
          "bootstrap/validation/example/fp-finger-trees/tuple4"
          ("34" "35" "36" "37")
          (("con-info"
              "bootstrap/validation/example/fp-finger-trees/Tuple4"
              (("fst" ("tvar" "34"))
                ("snd" ("tvar" "35"))
                ("thd" ("tvar" "36"))
                ("field4" ("tvar" "37")))
              "nothing"))
          "False"
          ("value" ("value-repr" "0" "4" "8"))))))
  (("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#reuse3/a"
        ("fun"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/pad"))
        ("lam"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("reuse3"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/reuse3"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-finger-trees/Reuse3"
                    (("pat-var"
                        "@x"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("single"
                      "bootstrap/validation/example/fp-finger-trees/reuse3"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var" ("@x" ("tcon" "std/core/types/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#reuse3/b"
        ("fun"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/pad"))
        ("lam"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("reuse3"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/reuse3"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-finger-trees/Reuse3"
                    (("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var"
                        "@x"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("single"
                      "bootstrap/validation/example/fp-finger-trees/reuse3"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var" ("@x" ("tcon" "std/core/types/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#reuse3/c"
        ("fun"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/pad"))
        ("lam"
          (("reuse3"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("reuse3"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/reuse3"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-finger-trees/Reuse3"
                    (("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-var"
                        "@x"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())))
                    ("single"
                      "bootstrap/validation/example/fp-finger-trees/reuse3"
                      ("single" "False")
                      ("value-repr" "0" "3" "8")
                      "none"
                      "1")
                    (("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad"))))
                (("guard"
                    ("con"
                      "std/core/types/True"
                      ("enum"
                        "std/core/types/bool"
                        "enum"
                        ("value-repr" "0" "0" "0")
                        "2"))
                    ("var" ("@x" ("tcon" "std/core/types/pad")))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#reuse3/@copy"
        ("fun"
          (("@this"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad")))
            ("c"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad"))))
          ("tcon" "std/core/types/total")
          ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
        ("lam"
          (("@this"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
            ("a"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad")))
            ("b"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad")))
            ("c"
              ("tapp"
                ("tcon" "std/core/types/@optional")
                ("tcon" "std/core/types/pad"))))
          ("tcon" "std/core/types/total")
          ("let"
            (("non-rec"
                ("def"
                  "@uniq-a@136"
                  ("tcon" "std/core/types/pad")
                  ("case"
                    (("var"
                        ("a"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon" "std/core/types/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-a@137" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon" "std/core/types/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-a@137" ("tcon" "std/core/types/pad"))))))
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
                                                (("reuse3"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("reuse3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad"))
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/#reuse3/a"
                                    ("fun"
                                      (("reuse3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/reuse3")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-b@144"
                  ("tcon" "std/core/types/pad")
                  ("case"
                    (("var"
                        ("b"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon" "std/core/types/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-b@145" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon" "std/core/types/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-b@145" ("tcon" "std/core/types/pad"))))))
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
                                                (("reuse3"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("reuse3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad"))
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/#reuse3/b"
                                    ("fun"
                                      (("reuse3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/reuse3")))))))))
                  "def-val"))
              ("non-rec"
                ("def"
                  "@uniq-c@152"
                  ("tcon" "std/core/types/pad")
                  ("case"
                    (("var"
                        ("c"
                          ("tapp"
                            ("tcon" "std/core/types/@optional")
                            ("tcon" "std/core/types/pad")))))
                    (("branch"
                        (("pat-con"
                            "std/core/types/@Optional"
                            (("pat-var" "@uniq-c@153" "pat-wild"))
                            ("struct"
                              "std/core/types/@optional"
                              "struct-as-maybe"
                              ("value-repr" "0" "2" "8")
                              "1")
                            (("tcon" "std/core/types/pad"))))
                        (("guard"
                            ("con"
                              "std/core/types/True"
                              ("enum"
                                "std/core/types/bool"
                                "enum"
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("var"
                              ("@uniq-c@153" ("tcon" "std/core/types/pad"))))))
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
                                                (("reuse3"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                                ("tcon" "std/core/types/total")
                                                ("tcon" "std/core/types/pad"))))
                                          ("tcon" "std/core/types/total")
                                          ("fun"
                                            (("reuse3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                            ("tcon" "std/core/types/total")
                                            ("tcon" "std/core/types/pad"))))))
                                  ("tcon" "std/core/types/total")
                                  ("tcon" "std/core/types/total")
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad"))
                                  ("fun"
                                    (("reuse3"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/pad")))
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/#reuse3/c"
                                    ("fun"
                                      (("reuse3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("tcon" "std/core/types/total")
                                      ("tcon" "std/core/types/pad")))))
                              ("var"
                                ("@this"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/reuse3")))))))))
                  "def-val")))
            ("app"
              ("con"
                "bootstrap/validation/example/fp-finger-trees/Reuse3"
                ("single"
                  "bootstrap/validation/example/fp-finger-trees/reuse3"
                  ("single" "False")
                  ("value-repr" "0" "3" "8")
                  "none"
                  "1"))
              ("var" ("@uniq-a@136" ("tcon" "std/core/types/pad")))
              ("var" ("@uniq-b@144" ("tcon" "std/core/types/pad")))
              ("var" ("@uniq-c@152" ("tcon" "std/core/types/pad"))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#afew/a"
        ("forall"
          ("188")
          ("fun"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "188"))))
            ("tcon" "std/core/types/total")
            ("tvar" "188")))
        ("type-lam"
          ("188")
          ("lam"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "188"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("afew"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/afew")
                      ("tvar" "188")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/One"
                      (("pat-var" "@x" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "1")
                      (("tvar" "188")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "188"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Two"
                      (("pat-var" "@x" "pat-wild")
                        "pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "188")
                        ("tvar" "188")
                        ("tcon" "std/core/types/pad"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "188"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Three"
                      (("pat-var" "@x" "pat-wild") "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "188") ("tvar" "188") ("tvar" "188"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "188"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/is-one"
        ("forall"
          ("205")
          ("fun"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "205"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("205")
          ("lam"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "205"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("afew"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/afew")
                      ("tvar" "205")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/One"
                      ("pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "1")
                      (("tvar" "205")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-two"
        ("forall"
          ("223")
          ("fun"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "223"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("223")
          ("lam"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "223"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("afew"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/afew")
                      ("tvar" "223")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Two"
                      ("pat-wild"
                        "pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "223")
                        ("tvar" "223")
                        ("tcon" "std/core/types/pad"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-three"
        ("forall"
          ("241")
          ("fun"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "241"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("241")
          ("lam"
            (("afew"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "241"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("afew"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/afew")
                      ("tvar" "241")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Three"
                      ("pat-wild" "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/afew"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "241") ("tvar" "241") ("tvar" "241"))))
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
        "bootstrap/validation/example/fp-finger-trees/#tuple/a"
        ("forall"
          ("266")
          ("fun"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "266"))))
            ("tcon" "std/core/types/total")
            ("tvar" "266")))
        ("type-lam"
          ("266")
          ("lam"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "266"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "266")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Pair"
                      (("pat-var" "@x" "pat-wild")
                        "pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "1")
                      (("tvar" "266")
                        ("tvar" "266")
                        ("tcon" "std/core/types/pad"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "266"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Triple"
                      (("pat-var" "@x" "pat-wild") "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "266") ("tvar" "266") ("tvar" "266"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "266"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple/b"
        ("forall"
          ("290")
          ("fun"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "290"))))
            ("tcon" "std/core/types/total")
            ("tvar" "290")))
        ("type-lam"
          ("290")
          ("lam"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "290"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "290")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Pair"
                      ("pat-wild"
                        ("pat-var" "@x" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "1")
                      (("tvar" "290")
                        ("tvar" "290")
                        ("tcon" "std/core/types/pad"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "290"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Triple"
                      ("pat-wild" ("pat-var" "@x" "pat-wild") "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "290") ("tvar" "290") ("tvar" "290"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "290"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/is-pair"
        ("forall"
          ("307")
          ("fun"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "307"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("307")
          ("lam"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "307"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "307")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Pair"
                      ("pat-wild"
                        "pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "1")
                      (("tvar" "307")
                        ("tvar" "307")
                        ("tcon" "std/core/types/pad"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-triple"
        ("forall"
          ("325")
          ("fun"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "325"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("325")
          ("lam"
            (("tuple"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple")
                  ("tvar" "325"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple")
                      ("tvar" "325")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Triple"
                      ("pat-wild" "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/tuple"
                        ("normal" "False")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "325") ("tvar" "325") ("tvar" "325"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-empty"
        ("forall"
          ("343")
          ("fun"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "343"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("343")
          ("lam"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "343"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("seq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "343")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Empty"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-finger-trees/seq"
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
        "bootstrap/validation/example/fp-finger-trees/is-unit"
        ("forall"
          ("361")
          ("fun"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "361"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("361")
          ("lam"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "361"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("seq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "361")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      ("pat-wild"
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "361")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-more0"
        ("forall"
          ("379")
          ("fun"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "379"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("379")
          ("lam"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "379"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("seq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "379")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      ("pat-wild" "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "379")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "379")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "379")))))
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
        "bootstrap/validation/example/fp-finger-trees/is-more"
        ("forall"
          ("397")
          ("fun"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "397"))))
            ("tcon" "std/core/types/total")
            ("tcon" "std/core/types/bool")))
        ("type-lam"
          ("397")
          ("lam"
            (("seq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "397"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("seq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "397")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      ("pat-wild" "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "397"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "397")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "397")))))
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
        "bootstrap/validation/example/fp-finger-trees/is-bnil"
        ("fun"
          (("buffer"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("buffer"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("buffer"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-finger-trees/BNil"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-finger-trees/buffer"
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
                    "bootstrap/validation/example/fp-finger-trees/BCons"
                    ("pat-wild" "pat-wild" "pat-wild")
                    ("as-cons"
                      "bootstrap/validation/example/fp-finger-trees/buffer"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-finger-trees/BNil"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/fp-finger-trees/buffer")
                      ("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad"))))
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
        "bootstrap/validation/example/fp-finger-trees/is-bcons"
        ("fun"
          (("buffer"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
          ("tcon" "std/core/types/total")
          ("tcon" "std/core/types/bool"))
        ("lam"
          (("buffer"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
          ("tcon" "std/core/types/total")
          ("case"
            (("var"
                ("buffer"
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
            (("branch"
                (("pat-con"
                    "bootstrap/validation/example/fp-finger-trees/BCons"
                    ("pat-wild"
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ())
                      ("pat-con"
                        "std/core/types/Pad"
                        ()
                        ("singleton"
                          "std/core/types/pad"
                          ("single" "True")
                          ("value-repr" "0" "0" "0")
                          "1")
                        ()))
                    ("as-cons"
                      "bootstrap/validation/example/fp-finger-trees/buffer"
                      "as-list"
                      ("value-repr" "0" "3" "8")
                      "bootstrap/validation/example/fp-finger-trees/BNil"
                      "none"
                      "2")
                    (("tcon"
                        "bootstrap/validation/example/fp-finger-trees/buffer")
                      ("tcon" "std/core/types/pad")
                      ("tcon" "std/core/types/pad"))))
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
                    "bootstrap/validation/example/fp-finger-trees/BNil"
                    ()
                    ("singleton"
                      "bootstrap/validation/example/fp-finger-trees/buffer"
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
        "bootstrap/validation/example/fp-finger-trees/#bseq/q"
        ("forall"
          ("440")
          ("fun"
            (("bseq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "440"))))
            ("tcon" "std/core/types/total")
            ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
        ("type-lam"
          ("440")
          ("lam"
            (("bseq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "440"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("bseq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "440")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      ("pat-wild" ("pat-var" "@x" "pat-wild"))
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "440"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                            "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#bseq/s"
        ("forall"
          ("459")
          ("fun"
            (("bseq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "459"))))
            ("tcon" "std/core/types/total")
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
              ("tvar" "459"))))
        ("type-lam"
          ("459")
          ("lam"
            (("bseq"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "459"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("bseq"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "459")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      (("pat-var" "@x" "pat-wild") "pat-wild")
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "459"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "459")))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#bseq/@copy"
        ("forall"
          ("502")
          ("fun"
            (("@this"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "502")))
              ("s"
                ("tapp"
                  ("tcon" "std/core/types/@optional")
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                    ("tvar" "502"))))
              ("q"
                ("tapp"
                  ("tcon" "std/core/types/@optional")
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
            ("tcon" "std/core/types/total")
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
              ("tvar" "502"))))
        ("type-lam"
          ("502")
          ("lam"
            (("@this"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "502")))
              ("s"
                ("tapp"
                  ("tcon" "std/core/types/@optional")
                  ("tapp"
                    ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                    ("tvar" "502"))))
              ("q"
                ("tapp"
                  ("tcon" "std/core/types/@optional")
                  ("tcon"
                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
            ("tcon" "std/core/types/total")
            ("let"
              (("non-rec"
                  ("def"
                    "@uniq-s@474"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "502"))
                    ("case"
                      (("var"
                          ("s"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tvar" "502"))))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-s@475" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "502")))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var"
                                ("@uniq-s@475"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "502")))))))
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
                                                  (("bseq"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/bseq")
                                                        ("tvar" "502"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "502")))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("bseq"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/bseq")
                                                    ("tvar" "502"))))
                                              ("tcon" "std/core/types/total")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "502")))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("bseq"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/bseq")
                                            ("tvar" "502"))))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "502")))
                                    ("fun"
                                      (("bseq"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/bseq")
                                            ("tvar" "502"))))
                                      ("tcon" "std/core/types/total")
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "502"))))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#bseq/s"
                                        ("forall"
                                          ("459")
                                          ("fun"
                                            (("bseq"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/bseq")
                                                  ("tvar" "459"))))
                                            ("tcon" "std/core/types/total")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "459"))))))
                                    ("tvar" "502")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/bseq")
                                      ("tvar" "502"))))))))))
                    "def-val"))
                ("non-rec"
                  ("def"
                    "@uniq-q@485"
                    ("tcon"
                      "bootstrap/validation/example/fp-finger-trees/buffer")
                    ("case"
                      (("var"
                          ("q"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-q@486" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var"
                                ("@uniq-q@486"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))))
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
                                                  (("bseq"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/bseq")
                                                        ("tvar" "502"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("bseq"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/bseq")
                                                    ("tvar" "502"))))
                                              ("tcon" "std/core/types/total")
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("bseq"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/bseq")
                                            ("tvar" "502"))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))
                                    ("fun"
                                      (("bseq"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/bseq")
                                            ("tvar" "502"))))
                                      ("tcon" "std/core/types/total")
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#bseq/q"
                                        ("forall"
                                          ("440")
                                          ("fun"
                                            (("bseq"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/bseq")
                                                  ("tvar" "440"))))
                                            ("tcon" "std/core/types/total")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                    ("tvar" "502")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/bseq")
                                      ("tvar" "502"))))))))))
                    "def-val")))
              ("app"
                ("type-app"
                  ("con"
                    "bootstrap/validation/example/fp-finger-trees/BSeq"
                    ("single"
                      "bootstrap/validation/example/fp-finger-trees/bseq"
                      "single-struct"
                      ("value-repr" "0" "2" "8")
                      "none"
                      "1"))
                  ("tvar" "502"))
                ("var"
                  ("@uniq-s@474"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "502"))))
                ("var"
                  ("@uniq-q@485"
                    ("tcon"
                      "bootstrap/validation/example/fp-finger-trees/buffer")))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple4/field4"
        ("forall"
          ("542" "543" "544" "545")
          ("fun"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "542")
                  ("tvar" "543")
                  ("tvar" "544")
                  ("tvar" "545"))))
            ("tcon" "std/core/types/total")
            ("tvar" "545")))
        ("type-lam"
          ("542" "543" "544" "545")
          ("lam"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "542")
                  ("tvar" "543")
                  ("tvar" "544")
                  ("tvar" "545"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple4"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                      ("tvar" "542")
                      ("tvar" "543")
                      ("tvar" "544")
                      ("tvar" "545")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                      ("pat-wild"
                        "pat-wild"
                        "pat-wild"
                        ("pat-var" "@x" "pat-wild"))
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                        "single-struct"
                        ("value-repr" "0" "4" "8")
                        "none"
                        "1")
                      (("tvar" "542")
                        ("tvar" "543")
                        ("tvar" "544")
                        ("tvar" "545"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "545"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple4/fst"
        ("forall"
          ("594" "595" "596" "597")
          ("fun"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "594")
                  ("tvar" "595")
                  ("tvar" "596")
                  ("tvar" "597"))))
            ("tcon" "std/core/types/total")
            ("tvar" "594")))
        ("type-lam"
          ("594" "595" "596" "597")
          ("lam"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "594")
                  ("tvar" "595")
                  ("tvar" "596")
                  ("tvar" "597"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple4"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                      ("tvar" "594")
                      ("tvar" "595")
                      ("tvar" "596")
                      ("tvar" "597")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                      (("pat-var" "@x" "pat-wild")
                        "pat-wild"
                        "pat-wild"
                        "pat-wild")
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                        "single-struct"
                        ("value-repr" "0" "4" "8")
                        "none"
                        "1")
                      (("tvar" "594")
                        ("tvar" "595")
                        ("tvar" "596")
                        ("tvar" "597"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "594"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple4/snd"
        ("forall"
          ("646" "647" "648" "649")
          ("fun"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "646")
                  ("tvar" "647")
                  ("tvar" "648")
                  ("tvar" "649"))))
            ("tcon" "std/core/types/total")
            ("tvar" "647")))
        ("type-lam"
          ("646" "647" "648" "649")
          ("lam"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "646")
                  ("tvar" "647")
                  ("tvar" "648")
                  ("tvar" "649"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple4"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                      ("tvar" "646")
                      ("tvar" "647")
                      ("tvar" "648")
                      ("tvar" "649")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                      ("pat-wild"
                        ("pat-var" "@x" "pat-wild")
                        "pat-wild"
                        "pat-wild")
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                        "single-struct"
                        ("value-repr" "0" "4" "8")
                        "none"
                        "1")
                      (("tvar" "646")
                        ("tvar" "647")
                        ("tvar" "648")
                        ("tvar" "649"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "647"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple4/thd"
        ("forall"
          ("698" "699" "700" "701")
          ("fun"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "698")
                  ("tvar" "699")
                  ("tvar" "700")
                  ("tvar" "701"))))
            ("tcon" "std/core/types/total")
            ("tvar" "700")))
        ("type-lam"
          ("698" "699" "700" "701")
          ("lam"
            (("tuple4"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "698")
                  ("tvar" "699")
                  ("tvar" "700")
                  ("tvar" "701"))))
            ("tcon" "std/core/types/total")
            ("case"
              (("var"
                  ("tuple4"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                      ("tvar" "698")
                      ("tvar" "699")
                      ("tvar" "700")
                      ("tvar" "701")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                      ("pat-wild"
                        "pat-wild"
                        ("pat-var" "@x" "pat-wild")
                        "pat-wild")
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                        "single-struct"
                        ("value-repr" "0" "4" "8")
                        "none"
                        "1")
                      (("tvar" "698")
                        ("tvar" "699")
                        ("tvar" "700")
                        ("tvar" "701"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("@x" ("tvar" "700"))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/#tuple4/@copy"
        ("forall"
          ("837" "838" "839" "840")
          ("fun"
            (("@this"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "837")
                  ("tvar" "838")
                  ("tvar" "839")
                  ("tvar" "840")))
              ("fst"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "837")))
              ("snd"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "838")))
              ("thd"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "839")))
              ("field4"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "840"))))
            ("tcon" "std/core/types/total")
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
              ("tvar" "837")
              ("tvar" "838")
              ("tvar" "839")
              ("tvar" "840"))))
        ("type-lam"
          ("837" "838" "839" "840")
          ("lam"
            (("@this"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
                  ("tvar" "837")
                  ("tvar" "838")
                  ("tvar" "839")
                  ("tvar" "840")))
              ("fst"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "837")))
              ("snd"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "838")))
              ("thd"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "839")))
              ("field4"
                ("tapp" ("tcon" "std/core/types/@optional") ("tvar" "840"))))
            ("tcon" "std/core/types/total")
            ("let"
              (("non-rec"
                  ("def"
                    "@uniq-fst@737"
                    ("tvar" "837")
                    ("case"
                      (("var"
                          ("fst"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tvar" "837")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-fst@738" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tvar" "837"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var" ("@uniq-fst@738" ("tvar" "837"))))))
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
                                                  (("tuple4"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                        ("tvar" "837")
                                                        ("tvar" "838")
                                                        ("tvar" "839")
                                                        ("tvar" "840"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tvar" "837"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("tuple4"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                    ("tvar" "837")
                                                    ("tvar" "838")
                                                    ("tvar" "839")
                                                    ("tvar" "840"))))
                                              ("tcon" "std/core/types/total")
                                              ("tvar" "837"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "837"))
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "837")))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#tuple4/fst"
                                        ("forall"
                                          ("594" "595" "596" "597")
                                          ("fun"
                                            (("tuple4"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                  ("tvar" "594")
                                                  ("tvar" "595")
                                                  ("tvar" "596")
                                                  ("tvar" "597"))))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "594")))))
                                    ("tvar" "837")
                                    ("tvar" "838")
                                    ("tvar" "839")
                                    ("tvar" "840")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                                      ("tvar" "837")
                                      ("tvar" "838")
                                      ("tvar" "839")
                                      ("tvar" "840"))))))))))
                    "def-val"))
                ("non-rec"
                  ("def"
                    "@uniq-snd@757"
                    ("tvar" "838")
                    ("case"
                      (("var"
                          ("snd"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tvar" "838")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-snd@758" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tvar" "838"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var" ("@uniq-snd@758" ("tvar" "838"))))))
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
                                                  (("tuple4"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                        ("tvar" "837")
                                                        ("tvar" "838")
                                                        ("tvar" "839")
                                                        ("tvar" "840"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tvar" "838"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("tuple4"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                    ("tvar" "837")
                                                    ("tvar" "838")
                                                    ("tvar" "839")
                                                    ("tvar" "840"))))
                                              ("tcon" "std/core/types/total")
                                              ("tvar" "838"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "838"))
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "838")))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#tuple4/snd"
                                        ("forall"
                                          ("646" "647" "648" "649")
                                          ("fun"
                                            (("tuple4"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                  ("tvar" "646")
                                                  ("tvar" "647")
                                                  ("tvar" "648")
                                                  ("tvar" "649"))))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "647")))))
                                    ("tvar" "837")
                                    ("tvar" "838")
                                    ("tvar" "839")
                                    ("tvar" "840")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                                      ("tvar" "837")
                                      ("tvar" "838")
                                      ("tvar" "839")
                                      ("tvar" "840"))))))))))
                    "def-val"))
                ("non-rec"
                  ("def"
                    "@uniq-thd@777"
                    ("tvar" "839")
                    ("case"
                      (("var"
                          ("thd"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tvar" "839")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-thd@778" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tvar" "839"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var" ("@uniq-thd@778" ("tvar" "839"))))))
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
                                                  (("tuple4"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                        ("tvar" "837")
                                                        ("tvar" "838")
                                                        ("tvar" "839")
                                                        ("tvar" "840"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tvar" "839"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("tuple4"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                    ("tvar" "837")
                                                    ("tvar" "838")
                                                    ("tvar" "839")
                                                    ("tvar" "840"))))
                                              ("tcon" "std/core/types/total")
                                              ("tvar" "839"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "839"))
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "839")))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#tuple4/thd"
                                        ("forall"
                                          ("698" "699" "700" "701")
                                          ("fun"
                                            (("tuple4"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                  ("tvar" "698")
                                                  ("tvar" "699")
                                                  ("tvar" "700")
                                                  ("tvar" "701"))))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "700")))))
                                    ("tvar" "837")
                                    ("tvar" "838")
                                    ("tvar" "839")
                                    ("tvar" "840")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                                      ("tvar" "837")
                                      ("tvar" "838")
                                      ("tvar" "839")
                                      ("tvar" "840"))))))))))
                    "def-val"))
                ("non-rec"
                  ("def"
                    "@uniq-field4@797"
                    ("tvar" "840")
                    ("case"
                      (("var"
                          ("field4"
                            ("tapp"
                              ("tcon" "std/core/types/@optional")
                              ("tvar" "840")))))
                      (("branch"
                          (("pat-con"
                              "std/core/types/@Optional"
                              (("pat-var" "@uniq-field4@798" "pat-wild"))
                              ("struct"
                                "std/core/types/@optional"
                                "struct-as-maybe"
                                ("value-repr" "0" "2" "8")
                                "1")
                              (("tvar" "840"))))
                          (("guard"
                              ("con"
                                "std/core/types/True"
                                ("enum"
                                  "std/core/types/bool"
                                  "enum"
                                  ("value-repr" "0" "0" "0")
                                  "1"))
                              ("var" ("@uniq-field4@798" ("tvar" "840"))))))
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
                                                  (("tuple4"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                        ("tvar" "837")
                                                        ("tvar" "838")
                                                        ("tvar" "839")
                                                        ("tvar" "840"))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("tvar" "840"))))
                                            ("tcon" "std/core/types/total")
                                            ("fun"
                                              (("tuple4"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                    ("tvar" "837")
                                                    ("tvar" "838")
                                                    ("tvar" "839")
                                                    ("tvar" "840"))))
                                              ("tcon" "std/core/types/total")
                                              ("tvar" "840"))))))
                                    ("tcon" "std/core/types/total")
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "840"))
                                    ("fun"
                                      (("tuple4"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "837")
                                            ("tvar" "838")
                                            ("tvar" "839")
                                            ("tvar" "840"))))
                                      ("tcon" "std/core/types/total")
                                      ("tvar" "840")))
                                  ("type-app"
                                    ("var"
                                      ("bootstrap/validation/example/fp-finger-trees/#tuple4/field4"
                                        ("forall"
                                          ("542" "543" "544" "545")
                                          ("fun"
                                            (("tuple4"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                  ("tvar" "542")
                                                  ("tvar" "543")
                                                  ("tvar" "544")
                                                  ("tvar" "545"))))
                                            ("tcon" "std/core/types/total")
                                            ("tvar" "545")))))
                                    ("tvar" "837")
                                    ("tvar" "838")
                                    ("tvar" "839")
                                    ("tvar" "840")))
                                ("var"
                                  ("@this"
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                                      ("tvar" "837")
                                      ("tvar" "838")
                                      ("tvar" "839")
                                      ("tvar" "840"))))))))))
                    "def-val")))
              ("app"
                ("type-app"
                  ("con"
                    "bootstrap/validation/example/fp-finger-trees/Tuple4"
                    ("single"
                      "bootstrap/validation/example/fp-finger-trees/tuple4"
                      "single-struct"
                      ("value-repr" "0" "4" "8")
                      "none"
                      "1"))
                  ("tvar" "837")
                  ("tvar" "838")
                  ("tvar" "839")
                  ("tvar" "840"))
                ("var" ("@uniq-fst@737" ("tvar" "837")))
                ("var" ("@uniq-snd@757" ("tvar" "838")))
                ("var" ("@uniq-thd@777" ("tvar" "839")))
                ("var" ("@uniq-field4@797" ("tvar" "840")))))))
        ("def-fun" () ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/head"
        ("forall"
          ("899")
          ("fun"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "899"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tvar" "899")))
        ("type-lam"
          ("899")
          ("lam"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "899"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("s"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "899")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      (("pat-var" "x" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "899")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("x" ("tvar" "899"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "x" "pat-wild") "pat-wild" "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "899")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "899")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "899")))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("x" ("tvar" "899"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Pair"
                          (("pat-var" "x" "pat-wild")
                            "pat-wild"
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tvar" "899")
                            ("tvar" "899")
                            ("tcon" "std/core/types/pad")))
                        "pat-wild"
                        "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "899"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "899")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "899")))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("x" ("tvar" "899"))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Triple"
                          (("pat-var" "x" "pat-wild") "pat-wild" "pat-wild")
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tvar" "899") ("tvar" "899") ("tvar" "899")))
                        "pat-wild"
                        "pat-wild")
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "899"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "899")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "899")))))
                  (("guard"
                      ("con"
                        "std/core/types/True"
                        ("enum"
                          "std/core/types/bool"
                          "enum"
                          ("value-repr" "0" "0" "0")
                          "2"))
                      ("var" ("x" ("tvar" "899"))))))
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
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("location"
                                              ("tcon" "std/core/types/string"))
                                            ("definition"
                                              ("tcon" "std/core/types/string")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tvar" "899"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("location"
                                          ("tcon" "std/core/types/string"))
                                        ("definition"
                                          ("tcon" "std/core/types/string")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tapp"
                                          ("tcon" "std/core/types/handled")
                                          ("tcon" "std/core/exn/exn"))
                                        ("tcon" "std/core/types/total"))
                                      ("tvar" "899"))))))
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
                              (("location" ("tcon" "std/core/types/string"))
                                ("definition" ("tcon" "std/core/types/string")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tvar" "899"))
                            ("fun"
                              (("location" ("tcon" "std/core/types/string"))
                                ("definition" ("tcon" "std/core/types/string")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tvar" "899")))
                          ("type-app"
                            ("var"
                              ("std/core/exn/error-pattern"
                                ("forall"
                                  ("10000")
                                  ("fun"
                                    (("location"
                                        ("tcon" "std/core/types/string"))
                                      ("definition"
                                        ("tcon" "std/core/types/string")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tvar" "10000")))))
                            ("tvar" "899")))
                        "\"bootstrap/validation/example/fp-finger-trees(37, 3)\""
                        "\"head\""))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/bhead"
        ("forall"
          ("932")
          ("fun"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "932"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tvar" "932")))
        ("type-lam"
          ("932")
          ("lam"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "932"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("bs"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "932")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      (("pat-var" "s" "pat-wild") "pat-wild")
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "932"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                          (("s"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "932"))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tvar" "932"))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("s"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "932"))))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tapp"
                                          ("tcon" "std/core/types/handled")
                                          ("tcon" "std/core/exn/exn"))
                                        ("tcon" "std/core/types/total"))
                                      ("tvar" "932"))))))
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
                              (("s"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "932"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tvar" "932"))
                            ("fun"
                              (("s"
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "932"))))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tvar" "932")))
                          ("type-app"
                            ("var"
                              ("bootstrap/validation/example/fp-finger-trees/head"
                                ("forall"
                                  ("899")
                                  ("fun"
                                    (("s"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "899"))))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tvar" "899")))))
                            ("tvar" "932")))
                        ("var"
                          ("s"
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/seq")
                              ("tvar" "932"))))))))))))
        ("def-fun" ("borrow") ("no-fip" "False"))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/cons"
        ("forall"
          ("1162")
          ("fun"
            (("x" ("tvar" "1162"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "1162")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "std/core/types/tuple2")
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                ("tvar" "1162"))
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))))
        ("type-lam"
          ("1162")
          ("lam"
            (("x" ("tvar" "1162"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "1162")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("s"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "1162")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Empty"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-finger-trees/seq"
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "1162"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/Unit"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "2"))
                            ("tvar" "1162"))
                          ("var" ("x" ("tvar" "1162")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      (("pat-var" "y" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "1162")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "1162"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More0"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3"))
                            ("tvar" "1162"))
                          ("var" ("x" ("tvar" "1162")))
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/Empty"
                              ("singleton"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1162")))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/One"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1"))
                              ("tvar" "1162"))
                            ("var" ("y" ("tvar" "1162")))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "y" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "1162")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1162")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "1162")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "1162"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "4"))
                            ("tvar" "1162"))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Pair"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1"))
                              ("tvar" "1162"))
                            ("var" ("x" ("tvar" "1162")))
                            ("var" ("y" ("tvar" "1162")))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "1162")))))
                          ("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/afew")
                                ("tvar" "1162")))))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Pair"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tvar" "1162")
                            ("tvar" "1162")
                            ("tcon" "std/core/types/pad")))
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "1162"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1162")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "1162")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "1162"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "4"))
                            ("tvar" "1162"))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Triple"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2"))
                              ("tvar" "1162"))
                            ("var" ("x" ("tvar" "1162")))
                            ("var" ("y" ("tvar" "1162")))
                            ("var" ("z" ("tvar" "1162"))))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "1162")))))
                          ("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/afew")
                                ("tvar" "1162")))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/BCons"
                            ("as-cons"
                              "bootstrap/validation/example/fp-finger-trees/buffer"
                              "as-list"
                              ("value-repr" "0" "3" "8")
                              "bootstrap/validation/example/fp-finger-trees/BNil"
                              "none"
                              "2"))
                          ("var"
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Triple"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-var" "w" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tvar" "1162") ("tvar" "1162") ("tvar" "1162")))
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "1162"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1162")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "1162")))))
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
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/BCons"
                                (("pat-var" "b'" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("as-cons"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"
                                  "as-list"
                                  ("value-repr" "0" "3" "8")
                                  "bootstrap/validation/example/fp-finger-trees/BNil"
                                  "none"
                                  "2")
                                (("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "1162")))
                                                          ("u3"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                          ("s"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                ("tvar"
                                                                  "1162"))))
                                                          ("b"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                            "std/core/types/tuple2")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "1162")))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("x"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1162")))
                                                      ("u3"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                      ("s"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                                            ("tvar" "1162"))))
                                                      ("b"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1162")))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("fun"
                                            (("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1162")))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1162"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1162")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("fun"
                                            (("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1162")))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1162"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1162")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                        ("type-app"
                                          ("var"
                                            ("bootstrap/validation/example/fp-finger-trees/cons"
                                              ("forall"
                                                ("1162")
                                                ("fun"
                                                  (("x" ("tvar" "1162"))
                                                    ("u3"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                    ("s"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "1162")))
                                                    ("b"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1162"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "1162"))))
                                      ("app"
                                        ("type-app"
                                          ("con"
                                            "bootstrap/validation/example/fp-finger-trees/Pair"
                                            ("normal"
                                              "bootstrap/validation/example/fp-finger-trees/tuple"
                                              ("normal" "False")
                                              ("value-repr" "0" "3" "8")
                                              "none"
                                              "1"))
                                          ("tvar" "1162"))
                                        ("var" ("z" ("tvar" "1162")))
                                        ("var" ("w" ("tvar" "1162")))
                                        ("con"
                                          "std/core/types/Pad"
                                          ("singleton"
                                            "std/core/types/pad"
                                            ("single" "True")
                                            ("value-repr" "0" "0" "0")
                                            "1")))
                                      ("var"
                                        ("u3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("var"
                                        ("q"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tvar" "1162")))))
                                      ("var"
                                        ("b'"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                  (("branch"
                                      (("pat-con"
                                          "std/core/types/Tuple2"
                                          (("pat-var" "q'" "pat-wild")
                                            ("pat-var" "b''" "pat-wild"))
                                          ("single"
                                            "std/core/types/tuple2"
                                            "single-struct"
                                            ("value-repr" "0" "2" "8")
                                            "none"
                                            "1")
                                          (("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "1162")))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1162"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "4"))
                                                ("tvar" "1162"))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Pair"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "1"))
                                                  ("tvar" "1162"))
                                                ("var" ("x" ("tvar" "1162")))
                                                ("var" ("y" ("tvar" "1162")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1")))
                                              ("var"
                                                ("q'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1162")))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1162")))))
                                            ("var"
                                              ("b''"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
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
                                            ("-3" "-4" "-1" "-2")
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
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "1162"))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                              ("tcon" "std/core/types/total")
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
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1162"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1162"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("fun"
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1162"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tvar" "10000")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "1162"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  "\"bootstrap/validation/example/fp-finger-trees(56, 7)\""
                                  "\"cons\"")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/bcons"
        ("forall"
          ("1207")
          ("fun"
            (("x" ("tvar" "1207"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "1207"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
              ("tvar" "1207"))))
        ("type-lam"
          ("1207")
          ("lam"
            (("x" ("tvar" "1207"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "1207"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("bs"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "1207")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      (("pat-var" "s" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "1207"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                              (("x" ("tvar" "1207"))
                                                ("u3"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                ("s"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1207")))
                                                ("b"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tvar" "1207"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("x" ("tvar" "1207"))
                                            ("u3"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                            ("s"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1207")))
                                            ("b"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/tuple2")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "1207"))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                  (("x" ("tvar" "1207"))
                                    ("u3"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                    ("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "1207")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "1207"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
                                ("fun"
                                  (("x" ("tvar" "1207"))
                                    ("u3"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                    ("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "1207")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "1207"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
                              ("type-app"
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/cons"
                                    ("forall"
                                      ("1162")
                                      ("fun"
                                        (("x" ("tvar" "1162"))
                                          ("u3"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                          ("s"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "1162")))
                                          ("b"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1162"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                ("tvar" "1207")))
                            ("var" ("x" ("tvar" "1207")))
                            ("var"
                              ("u3"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/reuse3")))
                            ("var"
                              ("s"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "1207"))))
                            ("var"
                              ("b"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                        (("branch"
                            (("pat-con"
                                "std/core/types/Tuple2"
                                (("pat-var" "s'" "pat-wild")
                                  ("pat-var" "b'" "pat-wild"))
                                ("single"
                                  "std/core/types/tuple2"
                                  "single-struct"
                                  ("value-repr" "0" "2" "8")
                                  "none"
                                  "1")
                                (("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "1207"))
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/bseq"
                                        "single-struct"
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "1"))
                                    ("tvar" "1207"))
                                  ("var"
                                    ("s'"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "1207"))))
                                  ("var"
                                    ("b'"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/more0"
        ("forall"
          ("1810")
          ("fun"
            (("q"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-finger-trees/tuple")
                    ("tvar" "1810"))))
              ("u"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "1810")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "std/core/types/tuple2")
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                ("tvar" "1810"))
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))))
        ("type-lam"
          ("1810")
          ("lam"
            (("q"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tapp"
                    ("tcon"
                      "bootstrap/validation/example/fp-finger-trees/tuple")
                    ("tvar" "1810"))))
              ("u"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/afew")
                  ("tvar" "1810")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("q"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tapp"
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/tuple")
                        ("tvar" "1810"))))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Empty"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-finger-trees/seq"
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
                      ("case"
                        (("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/afew")
                                ("tvar" "1810")))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/One"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1")
                                (("tvar" "1810")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "1810"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))
                                  ("app"
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/Unit"
                                        ("normal"
                                          "bootstrap/validation/example/fp-finger-trees/seq"
                                          ("normal" "True")
                                          ("value-repr" "0" "3" "8")
                                          "none"
                                          "2"))
                                      ("tvar" "1810"))
                                    ("var" ("x" ("tvar" "1810")))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1")))
                                  ("var"
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                          ("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Two"
                                (("pat-var" "y" "pat-wild")
                                  ("pat-var" "z" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tcon" "std/core/types/pad"))))
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
                                      ("b"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/BCons"
                                          (("pat-var" "b'" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ())
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("as-cons"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"
                                            "as-list"
                                            ("value-repr" "0" "3" "8")
                                            "bootstrap/validation/example/fp-finger-trees/BNil"
                                            "none"
                                            "2")
                                          (("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")
                                            ("tcon" "std/core/types/pad")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("y" ("tvar" "1810")))
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/Empty"
                                                  ("singleton"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/One"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/afew"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "1"))
                                                  ("tvar" "1810"))
                                                ("var" ("z" ("tvar" "1810")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                                      ("-3" "-4" "-1" "-2")
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
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/tuple2")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                                  ("tvar"
                                                                    "1810"))
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
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
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/tuple2")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tvar" "1810"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                        ("tvar" "10000")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            "\"bootstrap/validation/example/fp-finger-trees(83,25)\""
                                            "\"more0\"")))))))))
                          ("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Three"
                                (("pat-var" "y" "pat-wild")
                                  ("pat-var" "z" "pat-wild")
                                  ("pat-var" "w" "pat-wild"))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "3")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tvar" "1810"))))
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
                                      ("b"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/BCons"
                                          (("pat-var" "b'" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ())
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("as-cons"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"
                                            "as-list"
                                            ("value-repr" "0" "3" "8")
                                            "bootstrap/validation/example/fp-finger-trees/BNil"
                                            "none"
                                            "2")
                                          (("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")
                                            ("tcon" "std/core/types/pad")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("y" ("tvar" "1810")))
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/Empty"
                                                  ("singleton"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Two"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/afew"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "2"))
                                                  ("tvar" "1810"))
                                                ("var" ("z" ("tvar" "1810")))
                                                ("var" ("w" ("tvar" "1810")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                                      ("-3" "-4" "-1" "-2")
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
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/tuple2")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                                  ("tvar"
                                                                    "1810"))
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
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
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/tuple2")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tvar" "1810"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                        ("tvar" "10000")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            "\"bootstrap/validation/example/fp-finger-trees(85,27)\""
                                            "\"more0\""))))))))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      (("pat-var" "p" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "1810"))
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
                            ("p"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                ("tvar" "1810")))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Pair"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tcon" "std/core/types/pad"))))
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
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "1810"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))
                                  ("app"
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/More"
                                        ("normal"
                                          "bootstrap/validation/example/fp-finger-trees/seq"
                                          ("normal" "True")
                                          ("value-repr" "0" "3" "8")
                                          "none"
                                          "4"))
                                      ("tvar" "1810"))
                                    ("app"
                                      ("type-app"
                                        ("con"
                                          "bootstrap/validation/example/fp-finger-trees/Pair"
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/tuple"
                                            ("normal" "False")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "1"))
                                        ("tvar" "1810"))
                                      ("var" ("x" ("tvar" "1810")))
                                      ("var" ("y" ("tvar" "1810")))
                                      ("con"
                                        "std/core/types/Pad"
                                        ("singleton"
                                          "std/core/types/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1")))
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/Empty"
                                        ("singleton"
                                          "bootstrap/validation/example/fp-finger-trees/seq"
                                          ("normal" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                        ("tvar" "1810")))
                                    ("var"
                                      ("u"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/afew")
                                          ("tvar" "1810")))))
                                  ("var"
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                          ("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Triple"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-var" "z" "pat-wild"))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tvar" "1810"))))
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
                                      ("b"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/BCons"
                                          (("pat-var" "b'" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ())
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("as-cons"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"
                                            "as-list"
                                            ("value-repr" "0" "3" "8")
                                            "bootstrap/validation/example/fp-finger-trees/BNil"
                                            "none"
                                            "2")
                                          (("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")
                                            ("tcon" "std/core/types/pad")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("x" ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Unit"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/seq"
                                                      ("normal" "True")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "2"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810")))
                                                ("app"
                                                  ("type-app"
                                                    ("con"
                                                      "bootstrap/validation/example/fp-finger-trees/Pair"
                                                      ("normal"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple"
                                                        ("normal" "False")
                                                        ("value-repr"
                                                          "0"
                                                          "3"
                                                          "8")
                                                        "none"
                                                        "1"))
                                                    ("tvar" "1810"))
                                                  ("var" ("y" ("tvar" "1810")))
                                                  ("var" ("z" ("tvar" "1810")))
                                                  ("con"
                                                    "std/core/types/Pad"
                                                    ("singleton"
                                                      "std/core/types/pad"
                                                      ("single" "True")
                                                      ("value-repr" "0" "0" "0")
                                                      "1")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1")))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                                      ("-3" "-4" "-1" "-2")
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
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/tuple2")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                                  ("tvar"
                                                                    "1810"))
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
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
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/tuple2")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tvar" "1810"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                        ("tvar" "10000")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            "\"bootstrap/validation/example/fp-finger-trees(91,11)\""
                                            "\"more0\""))))))))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "p" "pat-wild")
                        ("pat-var" "q1" "pat-wild")
                        ("pat-var" "u1" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "1810"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1810"))))))
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
                            ("p"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                ("tvar" "1810")))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Pair"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tcon" "std/core/types/pad"))))
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
                                                        (("q"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                  ("tvar"
                                                                    "1810")))))
                                                          ("u"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/afew")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                ("tvar"
                                                                  "1810"))))
                                                          ("b"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                            "std/core/types/tuple2")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "1810")))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("q"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar"
                                                                "1810")))))
                                                      ("u"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/afew")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                                            ("tvar" "1810"))))
                                                      ("b"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810")))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("fun"
                                            (("q"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))))
                                              ("u"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/afew")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1810")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("fun"
                                            (("q"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))))
                                              ("u"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/afew")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "1810")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                        ("type-app"
                                          ("var"
                                            ("bootstrap/validation/example/fp-finger-trees/more0"
                                              ("forall"
                                                ("1810")
                                                ("fun"
                                                  (("q"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810"))))
                                                    ("u"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/afew")
                                                        ("tvar" "1810")))
                                                    ("b"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "1810"))))
                                      ("var"
                                        ("q1"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "1810"))))))
                                      ("var"
                                        ("u1"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/afew")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tvar" "1810")))))
                                      ("var"
                                        ("b"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                  (("branch"
                                      (("pat-con"
                                          "std/core/types/Tuple2"
                                          (("pat-var" "q1'" "pat-wild")
                                            ("pat-var" "b'" "pat-wild"))
                                          ("single"
                                            "std/core/types/tuple2"
                                            "single-struct"
                                            ("value-repr" "0" "2" "8")
                                            "none"
                                            "1")
                                          (("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "1810")))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "4"))
                                                ("tvar" "1810"))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Pair"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "1"))
                                                  ("tvar" "1810"))
                                                ("var" ("x" ("tvar" "1810")))
                                                ("var" ("y" ("tvar" "1810")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1")))
                                              ("var"
                                                ("q1'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
                          ("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Triple"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-var" "z" "pat-wild"))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tvar" "1810"))))
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
                                      ("b"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/BCons"
                                          (("pat-var" "b'" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ())
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("as-cons"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"
                                            "as-list"
                                            ("value-repr" "0" "3" "8")
                                            "bootstrap/validation/example/fp-finger-trees/BNil"
                                            "none"
                                            "2")
                                          (("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")
                                            ("tcon" "std/core/types/pad")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("x" ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/More0"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/seq"
                                                      ("normal" "True")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "3"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810")))
                                                ("app"
                                                  ("type-app"
                                                    ("con"
                                                      "bootstrap/validation/example/fp-finger-trees/Pair"
                                                      ("normal"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple"
                                                        ("normal" "False")
                                                        ("value-repr"
                                                          "0"
                                                          "3"
                                                          "8")
                                                        "none"
                                                        "1"))
                                                    ("tvar" "1810"))
                                                  ("var" ("y" ("tvar" "1810")))
                                                  ("var" ("z" ("tvar" "1810")))
                                                  ("con"
                                                    "std/core/types/Pad"
                                                    ("singleton"
                                                      "std/core/types/pad"
                                                      ("single" "True")
                                                      ("value-repr" "0" "0" "0")
                                                      "1")))
                                                ("var"
                                                  ("q1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810"))))))
                                                ("var"
                                                  ("u1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/afew")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                                      ("-3" "-4" "-1" "-2")
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
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/tuple2")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                                  ("tvar"
                                                                    "1810"))
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
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
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/tuple2")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tvar" "1810"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                        ("tvar" "10000")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            "\"bootstrap/validation/example/fp-finger-trees(99,11)\""
                                            "\"more0\""))))))))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Pair"
                          (("pat-var" "p" "pat-wild")
                            ("pat-var" "y1" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))
                            ("tcon" "std/core/types/pad")))
                        ("pat-var" "q1" "pat-wild")
                        ("pat-var" "u1" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1810")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1810"))))))
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
                            ("p"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                ("tvar" "1810")))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Pair"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tcon" "std/core/types/pad"))))
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
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "1810"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))
                                  ("app"
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/More"
                                        ("normal"
                                          "bootstrap/validation/example/fp-finger-trees/seq"
                                          ("normal" "True")
                                          ("value-repr" "0" "3" "8")
                                          "none"
                                          "4"))
                                      ("tvar" "1810"))
                                    ("app"
                                      ("type-app"
                                        ("con"
                                          "bootstrap/validation/example/fp-finger-trees/Pair"
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/tuple"
                                            ("normal" "False")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "1"))
                                        ("tvar" "1810"))
                                      ("var" ("x" ("tvar" "1810")))
                                      ("var" ("y" ("tvar" "1810")))
                                      ("con"
                                        "std/core/types/Pad"
                                        ("singleton"
                                          "std/core/types/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1")))
                                    ("app"
                                      ("type-app"
                                        ("con"
                                          "bootstrap/validation/example/fp-finger-trees/More0"
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/seq"
                                            ("normal" "True")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "3"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                          ("tvar" "1810")))
                                      ("var"
                                        ("y1"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "1810"))))
                                      ("var"
                                        ("q1"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "1810"))))))
                                      ("var"
                                        ("u1"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/afew")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tvar" "1810"))))))
                                    ("var"
                                      ("u"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/afew")
                                          ("tvar" "1810")))))
                                  ("var"
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                          ("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Triple"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var" "y" "pat-wild")
                                  ("pat-var" "z" "pat-wild"))
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/tuple"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2")
                                (("tvar" "1810")
                                  ("tvar" "1810")
                                  ("tvar" "1810"))))
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
                                      ("b"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/BCons"
                                          (("pat-var" "b'" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ())
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("as-cons"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"
                                            "as-list"
                                            ("value-repr" "0" "3" "8")
                                            "bootstrap/validation/example/fp-finger-trees/BNil"
                                            "none"
                                            "2")
                                          (("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")
                                            ("tcon" "std/core/types/pad")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("x" ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/More"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/seq"
                                                      ("normal" "True")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "4"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810")))
                                                ("app"
                                                  ("type-app"
                                                    ("con"
                                                      "bootstrap/validation/example/fp-finger-trees/Pair"
                                                      ("normal"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple"
                                                        ("normal" "False")
                                                        ("value-repr"
                                                          "0"
                                                          "3"
                                                          "8")
                                                        "none"
                                                        "1"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))
                                                  ("app"
                                                    ("type-app"
                                                      ("con"
                                                        "bootstrap/validation/example/fp-finger-trees/Pair"
                                                        ("normal"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple"
                                                          ("normal" "False")
                                                          ("value-repr"
                                                            "0"
                                                            "3"
                                                            "8")
                                                          "none"
                                                          "1"))
                                                      ("tvar" "1810"))
                                                    ("var"
                                                      ("y" ("tvar" "1810")))
                                                    ("var"
                                                      ("z" ("tvar" "1810")))
                                                    ("con"
                                                      "std/core/types/Pad"
                                                      ("singleton"
                                                        "std/core/types/pad"
                                                        ("single" "True")
                                                        ("value-repr"
                                                          "0"
                                                          "0"
                                                          "0")
                                                        "1")))
                                                  ("var"
                                                    ("y1"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))
                                                  ("con"
                                                    "std/core/types/Pad"
                                                    ("singleton"
                                                      "std/core/types/pad"
                                                      ("single" "True")
                                                      ("value-repr" "0" "0" "0")
                                                      "1")))
                                                ("var"
                                                  ("q1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810"))))))
                                                ("var"
                                                  ("u1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/afew")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                                      ("-3" "-4" "-1" "-2")
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
                                                              ("tapp"
                                                                ("tcon"
                                                                  "std/core/types/tuple2")
                                                                ("tapp"
                                                                  ("tcon"
                                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                                  ("tvar"
                                                                    "1810"))
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
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
                                                          ("tapp"
                                                            ("tcon"
                                                              "std/core/types/tuple2")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tvar" "1810"))
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/effect-extend")
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/handled")
                                                    ("tcon" "std/core/exn/exn"))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  ("tapp"
                                                    ("tcon"
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "1810"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                        ("tvar" "10000")))))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                            "\"bootstrap/validation/example/fp-finger-trees(105,11)\""
                                            "\"more0\""))))))))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Triple"
                          (("pat-var" "p" "pat-wild")
                            ("pat-var" "y1" "pat-wild")
                            ("pat-var" "z1" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))))
                        ("pat-var" "q1" "pat-wild")
                        ("pat-var" "u1" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1810")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "1810"))))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "1810"))))))
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
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/BCons"
                                (("pat-var" "b'" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("as-cons"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"
                                  "as-list"
                                  ("value-repr" "0" "3" "8")
                                  "bootstrap/validation/example/fp-finger-trees/BNil"
                                  "none"
                                  "2")
                                (("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                      ("p"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                          ("tvar" "1810")))))
                                  (("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/Pair"
                                          (("pat-var" "x" "pat-wild")
                                            ("pat-var" "y" "pat-wild")
                                            ("pat-con"
                                              "std/core/types/Pad"
                                              ()
                                              ("singleton"
                                                "std/core/types/pad"
                                                ("single" "True")
                                                ("value-repr" "0" "0" "0")
                                                "1")
                                              ()))
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/tuple"
                                            ("normal" "False")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "1")
                                          (("tvar" "1810")
                                            ("tvar" "1810")
                                            ("tcon" "std/core/types/pad"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "4"))
                                                ("tvar" "1810"))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Pair"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "1"))
                                                  ("tvar" "1810"))
                                                ("var" ("x" ("tvar" "1810")))
                                                ("var" ("y" ("tvar" "1810")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/More"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/seq"
                                                      ("normal" "True")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "4"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810")))
                                                ("app"
                                                  ("type-app"
                                                    ("con"
                                                      "bootstrap/validation/example/fp-finger-trees/Pair"
                                                      ("normal"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple"
                                                        ("normal" "False")
                                                        ("value-repr"
                                                          "0"
                                                          "3"
                                                          "8")
                                                        "none"
                                                        "1"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))
                                                  ("var"
                                                    ("y1"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))
                                                  ("var"
                                                    ("z1"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))
                                                  ("con"
                                                    "std/core/types/Pad"
                                                    ("singleton"
                                                      "std/core/types/pad"
                                                      ("single" "True")
                                                      ("value-repr" "0" "0" "0")
                                                      "1")))
                                                ("var"
                                                  ("q1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810"))))))
                                                ("var"
                                                  ("u1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/afew")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                    ("branch"
                                      (("pat-con"
                                          "bootstrap/validation/example/fp-finger-trees/Triple"
                                          (("pat-var" "x" "pat-wild")
                                            ("pat-var" "y" "pat-wild")
                                            ("pat-var" "z" "pat-wild"))
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/tuple"
                                            ("normal" "False")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "2")
                                          (("tvar" "1810")
                                            ("tvar" "1810")
                                            ("tvar" "1810"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "1810"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "1810"))
                                              ("var" ("x" ("tvar" "1810")))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/More"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/seq"
                                                      ("normal" "True")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "4"))
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "1810")))
                                                ("app"
                                                  ("type-app"
                                                    ("con"
                                                      "bootstrap/validation/example/fp-finger-trees/Triple"
                                                      ("normal"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple"
                                                        ("normal" "False")
                                                        ("value-repr"
                                                          "0"
                                                          "3"
                                                          "8")
                                                        "none"
                                                        "2"))
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "1810")))
                                                  ("app"
                                                    ("type-app"
                                                      ("con"
                                                        "bootstrap/validation/example/fp-finger-trees/Pair"
                                                        ("normal"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple"
                                                          ("normal" "False")
                                                          ("value-repr"
                                                            "0"
                                                            "3"
                                                            "8")
                                                          "none"
                                                          "1"))
                                                      ("tvar" "1810"))
                                                    ("var"
                                                      ("y" ("tvar" "1810")))
                                                    ("var"
                                                      ("z" ("tvar" "1810")))
                                                    ("con"
                                                      "std/core/types/Pad"
                                                      ("singleton"
                                                        "std/core/types/pad"
                                                        ("single" "True")
                                                        ("value-repr"
                                                          "0"
                                                          "0"
                                                          "0")
                                                        "1")))
                                                  ("var"
                                                    ("y1"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))
                                                  ("var"
                                                    ("z1"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810")))))
                                                ("var"
                                                  ("q1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "1810"))))))
                                                ("var"
                                                  ("u1"
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/afew")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/tuple")
                                                        ("tvar" "1810"))))))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "1810")))))
                                            ("var"
                                              ("b'"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
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
                                            ("-3" "-4" "-1" "-2")
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
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "1810"))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                              ("tcon" "std/core/types/total")
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
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "1810"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1810"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("fun"
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1810"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tvar" "10000")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "1810"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  "\"bootstrap/validation/example/fp-finger-trees(108, 7)\""
                                  "\"more0\"")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/uncons"
        ("forall"
          ("2036")
          ("fun"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "2036")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/tuple4")
              ("tvar" "2036")
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                ("tvar" "2036"))
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))))
        ("type-lam"
          ("2036")
          ("lam"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "2036")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("s"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "2036")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      (("pat-var" "x" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "2036")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
                            "bootstrap/validation/example/fp-finger-trees/Tuple4"
                            ("single"
                              "bootstrap/validation/example/fp-finger-trees/tuple4"
                              "single-struct"
                              ("value-repr" "0" "4" "8")
                              "none"
                              "1"))
                          ("tvar" "2036")
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/reuse3")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2036"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("var" ("x" ("tvar" "2036")))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/Reuse3"
                            ("single"
                              "bootstrap/validation/example/fp-finger-trees/reuse3"
                              ("single" "False")
                              ("value-repr" "0" "3" "8")
                              "none"
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))
                        ("type-app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/Empty"
                            ("singleton"
                              "bootstrap/validation/example/fp-finger-trees/seq"
                              ("normal" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("tvar" "2036"))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Triple"
                          (("pat-var" "x" "pat-wild")
                            ("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tvar" "2036") ("tvar" "2036") ("tvar" "2036")))
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "2036"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2036")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2036")))))
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
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/BCons"
                                (("pat-var" "b'" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("as-cons"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"
                                  "as-list"
                                  ("value-repr" "0" "3" "8")
                                  "bootstrap/validation/example/fp-finger-trees/BNil"
                                  "none"
                                  "2")
                                (("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                                        "single-struct"
                                        ("value-repr" "0" "4" "8")
                                        "none"
                                        "1"))
                                    ("tvar" "2036")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/reuse3")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2036"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))
                                  ("var" ("x" ("tvar" "2036")))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-finger-trees/Reuse3"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"
                                        ("single" "False")
                                        ("value-repr" "0" "3" "8")
                                        "none"
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1")))
                                  ("app"
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/More"
                                        ("normal"
                                          "bootstrap/validation/example/fp-finger-trees/seq"
                                          ("normal" "True")
                                          ("value-repr" "0" "3" "8")
                                          "none"
                                          "4"))
                                      ("tvar" "2036"))
                                    ("app"
                                      ("type-app"
                                        ("con"
                                          "bootstrap/validation/example/fp-finger-trees/Pair"
                                          ("normal"
                                            "bootstrap/validation/example/fp-finger-trees/tuple"
                                            ("normal" "False")
                                            ("value-repr" "0" "3" "8")
                                            "none"
                                            "1"))
                                        ("tvar" "2036"))
                                      ("var" ("y" ("tvar" "2036")))
                                      ("var" ("z" ("tvar" "2036")))
                                      ("con"
                                        "std/core/types/Pad"
                                        ("singleton"
                                          "std/core/types/pad"
                                          ("single" "True")
                                          ("value-repr" "0" "0" "0")
                                          "1")))
                                    ("var"
                                      ("q"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "2036")))))
                                    ("var"
                                      ("u"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/afew")
                                          ("tvar" "2036")))))
                                  ("var"
                                    ("b'"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                            ("-3" "-4" "-1" "-2")
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
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                      ("tvar" "2036")
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/reuse3")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "2036"))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                              ("tcon" "std/core/types/total")
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
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                  ("tvar" "2036")
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/reuse3")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "2036"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple4")
                                          ("tvar" "2036")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2036"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("fun"
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple4")
                                          ("tvar" "2036")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2036"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tvar" "10000")))))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                        ("tvar" "2036")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "2036"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  "\"bootstrap/validation/example/fp-finger-trees(71, 7)\""
                                  "\"uncons\"")))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Pair"
                          (("pat-var" "x" "pat-wild")
                            ("pat-var" "y" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/tuple"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tvar" "2036")
                            ("tvar" "2036")
                            ("tcon" "std/core/types/pad")))
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "2036"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2036")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2036")))))
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
                            "bootstrap/validation/example/fp-finger-trees/Tuple4"
                            ("single"
                              "bootstrap/validation/example/fp-finger-trees/tuple4"
                              "single-struct"
                              ("value-repr" "0" "4" "8")
                              "none"
                              "1"))
                          ("tvar" "2036")
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/reuse3")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2036"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("var" ("x" ("tvar" "2036")))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/Reuse3"
                            ("single"
                              "bootstrap/validation/example/fp-finger-trees/reuse3"
                              ("single" "False")
                              ("value-repr" "0" "3" "8")
                              "none"
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More0"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3"))
                            ("tvar" "2036"))
                          ("var" ("y" ("tvar" "2036")))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "2036")))))
                          ("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/afew")
                                ("tvar" "2036")))))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "x" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-var" "u" "pat-wild"))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "2036")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2036")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2036")))))
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
                                              (("q"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "2036"))))
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/afew")
                                                    ("tvar" "2036")))
                                                ("b"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tvar" "2036"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("q"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2036"))))
                                            ("u"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/afew")
                                                ("tvar" "2036")))
                                            ("b"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/tuple2")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2036"))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                  (("q"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                          ("tvar" "2036"))))
                                    ("u"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/afew")
                                        ("tvar" "2036")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2036"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
                                ("fun"
                                  (("q"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                          ("tvar" "2036"))))
                                    ("u"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/afew")
                                        ("tvar" "2036")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2036"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
                              ("type-app"
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/more0"
                                    ("forall"
                                      ("1810")
                                      ("fun"
                                        (("q"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "1810"))))
                                          ("u"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/afew")
                                              ("tvar" "1810")))
                                          ("b"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "1810"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                ("tvar" "2036")))
                            ("var"
                              ("q"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                    ("tvar" "2036")))))
                            ("var"
                              ("u"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/afew")
                                  ("tvar" "2036"))))
                            ("var"
                              ("b"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                        (("branch"
                            (("pat-con"
                                "std/core/types/Tuple2"
                                (("pat-var" "q'" "pat-wild")
                                  ("pat-var" "b'" "pat-wild"))
                                ("single"
                                  "std/core/types/tuple2"
                                  "single-struct"
                                  ("value-repr" "0" "2" "8")
                                  "none"
                                  "1")
                                (("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "2036"))
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                      "bootstrap/validation/example/fp-finger-trees/Tuple4"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/tuple4"
                                        "single-struct"
                                        ("value-repr" "0" "4" "8")
                                        "none"
                                        "1"))
                                    ("tvar" "2036")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/reuse3")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2036"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))
                                  ("var" ("x" ("tvar" "2036")))
                                  ("app"
                                    ("con"
                                      "bootstrap/validation/example/fp-finger-trees/Reuse3"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"
                                        ("single" "False")
                                        ("value-repr" "0" "3" "8")
                                        "none"
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1"))
                                    ("con"
                                      "std/core/types/Pad"
                                      ("singleton"
                                        "std/core/types/pad"
                                        ("single" "True")
                                        ("value-repr" "0" "0" "0")
                                        "1")))
                                  ("var"
                                    ("q'"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2036"))))
                                  ("var"
                                    ("b'"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
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
                                  ("-3" "-4" "-1" "-2")
                                  ("fun"
                                    (("x"
                                        ("fun"
                                          (("location"
                                              ("tcon" "std/core/types/string"))
                                            ("definition"
                                              ("tcon" "std/core/types/string")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "2036")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/reuse3")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2036"))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                    ("tcon" "std/core/types/total")
                                    ("fun"
                                      (("location"
                                          ("tcon" "std/core/types/string"))
                                        ("definition"
                                          ("tcon" "std/core/types/string")))
                                      ("tapp"
                                        ("tcon" "std/core/types/effect-extend")
                                        ("tapp"
                                          ("tcon" "std/core/types/handled")
                                          ("tcon" "std/core/exn/exn"))
                                        ("tcon" "std/core/types/total"))
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/tuple4")
                                        ("tvar" "2036")
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/reuse3")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "2036"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                              (("location" ("tcon" "std/core/types/string"))
                                ("definition" ("tcon" "std/core/types/string")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple4")
                                ("tvar" "2036")
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/reuse3")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "2036"))
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                            ("fun"
                              (("location" ("tcon" "std/core/types/string"))
                                ("definition" ("tcon" "std/core/types/string")))
                              ("tapp"
                                ("tcon" "std/core/types/effect-extend")
                                ("tapp"
                                  ("tcon" "std/core/types/handled")
                                  ("tcon" "std/core/exn/exn"))
                                ("tcon" "std/core/types/total"))
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple4")
                                ("tvar" "2036")
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/reuse3")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "2036"))
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))
                          ("type-app"
                            ("var"
                              ("std/core/exn/error-pattern"
                                ("forall"
                                  ("10000")
                                  ("fun"
                                    (("location"
                                        ("tcon" "std/core/types/string"))
                                      ("definition"
                                        ("tcon" "std/core/types/string")))
                                    ("tapp"
                                      ("tcon" "std/core/types/effect-extend")
                                      ("tapp"
                                        ("tcon" "std/core/types/handled")
                                        ("tcon" "std/core/exn/exn"))
                                      ("tcon" "std/core/types/total"))
                                    ("tvar" "10000")))))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple4")
                              ("tvar" "2036")
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/reuse3")
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tvar" "2036"))
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        "\"bootstrap/validation/example/fp-finger-trees(68, 3)\""
                        "\"uncons\""))))))))
        ("def-fun" () ("fip" ("at-most" "1")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/buncons"
        ("forall"
          ("2102")
          ("fun"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "2102"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "std/core/types/tuple3")
              ("tvar" "2102")
              ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3")
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                ("tvar" "2102")))))
        ("type-lam"
          ("2102")
          ("lam"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "2102"))))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("bs"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "2102")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      (("pat-var" "s" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "2102"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                              (("s"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "2102")))
                                                ("b"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))
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
                                                  "bootstrap/validation/example/fp-finger-trees/tuple4")
                                                ("tvar" "2102")
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tvar" "2102"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("s"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "2102")))
                                            ("b"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple4")
                                            ("tvar" "2102")
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/reuse3")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2102"))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                  (("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2102")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                    ("tvar" "2102")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/reuse3")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2102"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
                                ("fun"
                                  (("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2102")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/tuple4")
                                    ("tvar" "2102")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/reuse3")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2102"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
                              ("type-app"
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/uncons"
                                    ("forall"
                                      ("2036")
                                      ("fun"
                                        (("s"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2036")))
                                          ("b"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/tuple4")
                                          ("tvar" "2036")
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2036"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                ("tvar" "2102")))
                            ("var"
                              ("s"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "2102"))))
                            ("var"
                              ("b"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/Tuple4"
                                (("pat-var" "x" "pat-wild")
                                  ("pat-var"
                                    "u3"
                                    ("pat-con"
                                      "bootstrap/validation/example/fp-finger-trees/Reuse3"
                                      ("pat-wild" "pat-wild" "pat-wild")
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"
                                        ("single" "False")
                                        ("value-repr" "0" "3" "8")
                                        "none"
                                        "1")
                                      (("tcon" "std/core/types/pad")
                                        ("tcon" "std/core/types/pad")
                                        ("tcon" "std/core/types/pad"))))
                                  ("pat-var" "s'" "pat-wild")
                                  ("pat-var" "b'" "pat-wild"))
                                ("single"
                                  "bootstrap/validation/example/fp-finger-trees/tuple4"
                                  "single-struct"
                                  ("value-repr" "0" "4" "8")
                                  "none"
                                  "1")
                                (("tvar" "2102")
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/reuse3")
                                  ("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "2102"))
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                      "std/core/types/Tuple3"
                                      ("single"
                                        "std/core/types/tuple3"
                                        "single-struct"
                                        ("value-repr" "0" "3" "8")
                                        "none"
                                        "1"))
                                    ("tvar" "2102")
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/reuse3")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/bseq")
                                      ("tvar" "2102")))
                                  ("var" ("x" ("tvar" "2102")))
                                  ("var"
                                    ("u3"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                  ("app"
                                    ("type-app"
                                      ("con"
                                        "bootstrap/validation/example/fp-finger-trees/BSeq"
                                        ("single"
                                          "bootstrap/validation/example/fp-finger-trees/bseq"
                                          "single-struct"
                                          ("value-repr" "0" "2" "8")
                                          "none"
                                          "1"))
                                      ("tvar" "2102"))
                                    ("var"
                                      ("s'"
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "2102"))))
                                    ("var"
                                      ("b'"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer")))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "1")))))
    ("rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/snoc"
        ("forall"
          ("2505")
          ("fun"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "2505")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("x" ("tvar" "2505")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "std/core/types/tuple2")
              ("tapp"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                ("tvar" "2505"))
              ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))))
        ("type-lam"
          ("2505")
          ("lam"
            (("s"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/seq")
                  ("tvar" "2505")))
              ("b"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/buffer"))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("x" ("tvar" "2505")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("s"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/seq")
                      ("tvar" "2505")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Empty"
                      ()
                      ("singleton"
                        "bootstrap/validation/example/fp-finger-trees/seq"
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/Unit"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "2"))
                            ("tvar" "2505"))
                          ("var" ("x" ("tvar" "2505")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/Unit"
                      (("pat-var" "y" "pat-wild")
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ())
                        ("pat-con"
                          "std/core/types/Pad"
                          ()
                          ("singleton"
                            "std/core/types/pad"
                            ("single" "True")
                            ("value-repr" "0" "0" "0")
                            "1")
                          ()))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "2")
                      (("tvar" "2505")
                        ("tcon" "std/core/types/pad")
                        ("tcon" "std/core/types/pad"))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More0"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3"))
                            ("tvar" "2505"))
                          ("var" ("y" ("tvar" "2505")))
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/Empty"
                              ("singleton"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("tapp"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/tuple")
                              ("tvar" "2505")))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/One"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "1"))
                              ("tvar" "2505"))
                            ("var" ("x" ("tvar" "2505")))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))))
                        ("var"
                          ("b"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/One"
                          (("pat-var" "y" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ())
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tvar" "2505")
                            ("tcon" "std/core/types/pad")
                            ("tcon" "std/core/types/pad"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "2505")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More0"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3"))
                            ("tvar" "2505"))
                          ("var" ("u" ("tvar" "2505")))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "2505")))))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Two"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2"))
                              ("tvar" "2505"))
                            ("var" ("y" ("tvar" "2505")))
                            ("var" ("x" ("tvar" "2505")))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/BCons"
                            ("as-cons"
                              "bootstrap/validation/example/fp-finger-trees/buffer"
                              "as-list"
                              ("value-repr" "0" "3" "8")
                              "bootstrap/validation/example/fp-finger-trees/BNil"
                              "none"
                              "2"))
                          ("var"
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Two"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tvar" "2505")
                            ("tvar" "2505")
                            ("tcon" "std/core/types/pad"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "2505")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More0"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "3"))
                            ("tvar" "2505"))
                          ("var" ("u" ("tvar" "2505")))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "2505")))))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Three"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "3"))
                              ("tvar" "2505"))
                            ("var" ("y" ("tvar" "2505")))
                            ("var" ("z" ("tvar" "2505")))
                            ("var" ("x" ("tvar" "2505")))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/BCons"
                            ("as-cons"
                              "bootstrap/validation/example/fp-finger-trees/buffer"
                              "as-list"
                              ("value-repr" "0" "3" "8")
                              "bootstrap/validation/example/fp-finger-trees/BNil"
                              "none"
                              "2"))
                          ("var"
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More0"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Three"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-var" "w" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "3")
                          (("tvar" "2505") ("tvar" "2505") ("tvar" "2505"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "3")
                      (("tvar" "2505")
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/BCons"
                                (("pat-var" "b'" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("as-cons"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"
                                  "as-list"
                                  ("value-repr" "0" "3" "8")
                                  "bootstrap/validation/example/fp-finger-trees/BNil"
                                  "none"
                                  "2")
                                (("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                                        (("s"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                ("tvar"
                                                                  "2505"))))
                                                          ("b"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                          ("u3"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                          ("x"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "2505"))))
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
                                                            "std/core/types/tuple2")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "2505")))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("s"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                                            ("tvar" "2505"))))
                                                      ("b"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                      ("u3"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                      ("x"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "2505"))))
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
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "2505")))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("fun"
                                            (("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "2505"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505"))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("fun"
                                            (("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "2505"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505"))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                        ("type-app"
                                          ("var"
                                            ("bootstrap/validation/example/fp-finger-trees/snoc"
                                              ("forall"
                                                ("2505")
                                                ("fun"
                                                  (("s"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "2505")))
                                                    ("b"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                    ("u3"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                    ("x" ("tvar" "2505")))
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
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "2505"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "2505"))))
                                      ("var"
                                        ("q"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tvar" "2505")))))
                                      ("var"
                                        ("b'"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("var"
                                        ("u3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("app"
                                        ("type-app"
                                          ("con"
                                            "bootstrap/validation/example/fp-finger-trees/Pair"
                                            ("normal"
                                              "bootstrap/validation/example/fp-finger-trees/tuple"
                                              ("normal" "False")
                                              ("value-repr" "0" "3" "8")
                                              "none"
                                              "1"))
                                          ("tvar" "2505"))
                                        ("var" ("y" ("tvar" "2505")))
                                        ("var" ("z" ("tvar" "2505")))
                                        ("con"
                                          "std/core/types/Pad"
                                          ("singleton"
                                            "std/core/types/pad"
                                            ("single" "True")
                                            ("value-repr" "0" "0" "0")
                                            "1")))))
                                  (("branch"
                                      (("pat-con"
                                          "std/core/types/Tuple2"
                                          (("pat-var" "q'" "pat-wild")
                                            ("pat-var" "b''" "pat-wild"))
                                          ("single"
                                            "std/core/types/tuple2"
                                            "single-struct"
                                            ("value-repr" "0" "2" "8")
                                            "none"
                                            "1")
                                          (("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "2505")))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "2505"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More0"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "3"))
                                                ("tvar" "2505"))
                                              ("var" ("u" ("tvar" "2505")))
                                              ("var"
                                                ("q'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "2505")))))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Two"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/afew"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "2"))
                                                  ("tvar" "2505"))
                                                ("var" ("w" ("tvar" "2505")))
                                                ("var" ("x" ("tvar" "2505")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))))
                                            ("var"
                                              ("b''"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
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
                                            ("-3" "-4" "-1" "-2")
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
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "2505"))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                              ("tcon" "std/core/types/total")
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
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "2505"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2505"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("fun"
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2505"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tvar" "10000")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "2505"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  "\"bootstrap/validation/example/fp-finger-trees(127, 7)\""
                                  "\"snoc\"")))))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/One"
                          (("pat-var" "y" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ())
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "1")
                          (("tvar" "2505")
                            ("tcon" "std/core/types/pad")
                            ("tcon" "std/core/types/pad"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "2505"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "4"))
                            ("tvar" "2505"))
                          ("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                ("tvar" "2505"))))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "2505")))))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Two"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "2"))
                              ("tvar" "2505"))
                            ("var" ("y" ("tvar" "2505")))
                            ("var" ("x" ("tvar" "2505")))
                            ("con"
                              "std/core/types/Pad"
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1"))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/BCons"
                            ("as-cons"
                              "bootstrap/validation/example/fp-finger-trees/buffer"
                              "as-list"
                              ("value-repr" "0" "3" "8")
                              "bootstrap/validation/example/fp-finger-trees/BNil"
                              "none"
                              "2"))
                          ("var"
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Two"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-con"
                              "std/core/types/Pad"
                              ()
                              ("singleton"
                                "std/core/types/pad"
                                ("single" "True")
                                ("value-repr" "0" "0" "0")
                                "1")
                              ()))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "2")
                          (("tvar" "2505")
                            ("tvar" "2505")
                            ("tcon" "std/core/types/pad"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "2505"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/seq")
                            ("tvar" "2505"))
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/buffer"))
                        ("app"
                          ("type-app"
                            ("con"
                              "bootstrap/validation/example/fp-finger-trees/More"
                              ("normal"
                                "bootstrap/validation/example/fp-finger-trees/seq"
                                ("normal" "True")
                                ("value-repr" "0" "3" "8")
                                "none"
                                "4"))
                            ("tvar" "2505"))
                          ("var"
                            ("u"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                ("tvar" "2505"))))
                          ("var"
                            ("q"
                              ("tapp"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                  ("tvar" "2505")))))
                          ("app"
                            ("type-app"
                              ("con"
                                "bootstrap/validation/example/fp-finger-trees/Three"
                                ("normal"
                                  "bootstrap/validation/example/fp-finger-trees/afew"
                                  ("normal" "False")
                                  ("value-repr" "0" "3" "8")
                                  "none"
                                  "3"))
                              ("tvar" "2505"))
                            ("var" ("y" ("tvar" "2505")))
                            ("var" ("z" ("tvar" "2505")))
                            ("var" ("x" ("tvar" "2505")))))
                        ("app"
                          ("con"
                            "bootstrap/validation/example/fp-finger-trees/BCons"
                            ("as-cons"
                              "bootstrap/validation/example/fp-finger-trees/buffer"
                              "as-list"
                              ("value-repr" "0" "3" "8")
                              "bootstrap/validation/example/fp-finger-trees/BNil"
                              "none"
                              "2"))
                          ("var"
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1"))
                          ("con"
                            "std/core/types/Pad"
                            ("singleton"
                              "std/core/types/pad"
                              ("single" "True")
                              ("value-repr" "0" "0" "0")
                              "1")))))))
                ("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/More"
                      (("pat-var" "u" "pat-wild")
                        ("pat-var" "q" "pat-wild")
                        ("pat-con"
                          "bootstrap/validation/example/fp-finger-trees/Three"
                          (("pat-var" "y" "pat-wild")
                            ("pat-var" "z" "pat-wild")
                            ("pat-var" "w" "pat-wild"))
                          ("normal"
                            "bootstrap/validation/example/fp-finger-trees/afew"
                            ("normal" "False")
                            ("value-repr" "0" "3" "8")
                            "none"
                            "3")
                          (("tvar" "2505") ("tvar" "2505") ("tvar" "2505"))))
                      ("normal"
                        "bootstrap/validation/example/fp-finger-trees/seq"
                        ("normal" "True")
                        ("value-repr" "0" "3" "8")
                        "none"
                        "4")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/tuple")
                          ("tvar" "2505"))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tapp"
                            ("tcon"
                              "bootstrap/validation/example/fp-finger-trees/tuple")
                            ("tvar" "2505")))
                        ("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/afew")
                          ("tvar" "2505")))))
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
                            ("b"
                              ("tcon"
                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                        (("branch"
                            (("pat-con"
                                "bootstrap/validation/example/fp-finger-trees/BCons"
                                (("pat-var" "b'" "pat-wild")
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ())
                                  ("pat-con"
                                    "std/core/types/Pad"
                                    ()
                                    ("singleton"
                                      "std/core/types/pad"
                                      ("single" "True")
                                      ("value-repr" "0" "0" "0")
                                      "1")
                                    ()))
                                ("as-cons"
                                  "bootstrap/validation/example/fp-finger-trees/buffer"
                                  "as-list"
                                  ("value-repr" "0" "3" "8")
                                  "bootstrap/validation/example/fp-finger-trees/BNil"
                                  "none"
                                  "2")
                                (("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer")
                                  ("tcon" "std/core/types/pad")
                                  ("tcon" "std/core/types/pad"))))
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
                                                        (("s"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                                              ("tapp"
                                                                ("tcon"
                                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                                ("tvar"
                                                                  "2505"))))
                                                          ("b"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                          ("u3"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                          ("x"
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "2505"))))
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
                                                            "std/core/types/tuple2")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                                            ("tapp"
                                                              ("tcon"
                                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                                              ("tvar" "2505")))
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                                  ("tcon"
                                                    "std/core/types/total")
                                                  ("fun"
                                                    (("s"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                                          ("tapp"
                                                            ("tcon"
                                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                                            ("tvar" "2505"))))
                                                      ("b"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                      ("u3"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                      ("x"
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "2505"))))
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
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tapp"
                                                          ("tcon"
                                                            "bootstrap/validation/example/fp-finger-trees/tuple")
                                                          ("tvar" "2505")))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("fun"
                                            (("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "2505"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505"))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer")))
                                          ("fun"
                                            (("s"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "2505"))))
                                              ("b"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))
                                              ("u3"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                              ("x"
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505"))))
                                            ("tapp"
                                              ("tcon"
                                                "std/core/types/effect-extend")
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/handled")
                                                ("tcon" "std/core/exn/exn"))
                                              ("tcon" "std/core/types/total"))
                                            ("tapp"
                                              ("tcon" "std/core/types/tuple2")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/tuple")
                                                  ("tvar" "2505")))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                        ("type-app"
                                          ("var"
                                            ("bootstrap/validation/example/fp-finger-trees/snoc"
                                              ("forall"
                                                ("2505")
                                                ("fun"
                                                  (("s"
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "2505")))
                                                    ("b"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                    ("u3"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                    ("x" ("tvar" "2505")))
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
                                                      "std/core/types/tuple2")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                                      ("tvar" "2505"))
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/tuple")
                                            ("tvar" "2505"))))
                                      ("var"
                                        ("q"
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/tuple")
                                              ("tvar" "2505")))))
                                      ("var"
                                        ("b'"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("var"
                                        ("u3"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/reuse3")))
                                      ("app"
                                        ("type-app"
                                          ("con"
                                            "bootstrap/validation/example/fp-finger-trees/Pair"
                                            ("normal"
                                              "bootstrap/validation/example/fp-finger-trees/tuple"
                                              ("normal" "False")
                                              ("value-repr" "0" "3" "8")
                                              "none"
                                              "1"))
                                          ("tvar" "2505"))
                                        ("var" ("y" ("tvar" "2505")))
                                        ("var" ("z" ("tvar" "2505")))
                                        ("con"
                                          "std/core/types/Pad"
                                          ("singleton"
                                            "std/core/types/pad"
                                            ("single" "True")
                                            ("value-repr" "0" "0" "0")
                                            "1")))))
                                  (("branch"
                                      (("pat-con"
                                          "std/core/types/Tuple2"
                                          (("pat-var" "q'" "pat-wild")
                                            ("pat-var" "b''" "pat-wild"))
                                          ("single"
                                            "std/core/types/tuple2"
                                            "single-struct"
                                            ("value-repr" "0" "2" "8")
                                            "none"
                                            "1")
                                          (("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/tuple")
                                                ("tvar" "2505")))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "2505"))
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("app"
                                              ("type-app"
                                                ("con"
                                                  "bootstrap/validation/example/fp-finger-trees/More"
                                                  ("normal"
                                                    "bootstrap/validation/example/fp-finger-trees/seq"
                                                    ("normal" "True")
                                                    ("value-repr" "0" "3" "8")
                                                    "none"
                                                    "4"))
                                                ("tvar" "2505"))
                                              ("var"
                                                ("u"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/tuple")
                                                    ("tvar" "2505"))))
                                              ("var"
                                                ("q'"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tapp"
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/tuple")
                                                      ("tvar" "2505")))))
                                              ("app"
                                                ("type-app"
                                                  ("con"
                                                    "bootstrap/validation/example/fp-finger-trees/Two"
                                                    ("normal"
                                                      "bootstrap/validation/example/fp-finger-trees/afew"
                                                      ("normal" "False")
                                                      ("value-repr" "0" "3" "8")
                                                      "none"
                                                      "2"))
                                                  ("tvar" "2505"))
                                                ("var" ("w" ("tvar" "2505")))
                                                ("var" ("x" ("tvar" "2505")))
                                                ("con"
                                                  "std/core/types/Pad"
                                                  ("singleton"
                                                    "std/core/types/pad"
                                                    ("single" "True")
                                                    ("value-repr" "0" "0" "0")
                                                    "1"))))
                                            ("var"
                                              ("b''"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))
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
                                            ("-3" "-4" "-1" "-2")
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
                                                    ("tapp"
                                                      ("tcon"
                                                        "std/core/types/tuple2")
                                                      ("tapp"
                                                        ("tcon"
                                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                                        ("tvar" "2505"))
                                                      ("tcon"
                                                        "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                              ("tcon" "std/core/types/total")
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
                                                    ("tcon" "std/core/exn/exn"))
                                                  ("tcon"
                                                    "std/core/types/total"))
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/tuple2")
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "2505"))
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2505"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer")))
                                      ("fun"
                                        (("location"
                                            ("tcon" "std/core/types/string"))
                                          ("definition"
                                            ("tcon" "std/core/types/string")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2505"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tvar" "10000")))))
                                      ("tapp"
                                        ("tcon" "std/core/types/tuple2")
                                        ("tapp"
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/seq")
                                          ("tvar" "2505"))
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
                                  "\"bootstrap/validation/example/fp-finger-trees(134, 7)\""
                                  "\"snoc\"")))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/bsnoc"
        ("forall"
          ("2550")
          ("fun"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "2550")))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("x" ("tvar" "2550")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("tapp"
              ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
              ("tvar" "2550"))))
        ("type-lam"
          ("2550")
          ("lam"
            (("bs"
                ("tapp"
                  ("tcon" "bootstrap/validation/example/fp-finger-trees/bseq")
                  ("tvar" "2550")))
              ("u3"
                ("tcon" "bootstrap/validation/example/fp-finger-trees/reuse3"))
              ("x" ("tvar" "2550")))
            ("tapp"
              ("tcon" "std/core/types/effect-extend")
              ("tapp"
                ("tcon" "std/core/types/handled")
                ("tcon" "std/core/exn/exn"))
              ("tcon" "std/core/types/total"))
            ("case"
              (("var"
                  ("bs"
                    ("tapp"
                      ("tcon"
                        "bootstrap/validation/example/fp-finger-trees/bseq")
                      ("tvar" "2550")))))
              (("branch"
                  (("pat-con"
                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                      (("pat-var" "s" "pat-wild") ("pat-var" "b" "pat-wild"))
                      ("single"
                        "bootstrap/validation/example/fp-finger-trees/bseq"
                        "single-struct"
                        ("value-repr" "0" "2" "8")
                        "none"
                        "1")
                      (("tapp"
                          ("tcon"
                            "bootstrap/validation/example/fp-finger-trees/seq")
                          ("tvar" "2550"))
                        ("tcon"
                          "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                              (("s"
                                                  ("tapp"
                                                    ("tcon"
                                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                                    ("tvar" "2550")))
                                                ("b"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/buffer"))
                                                ("u3"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                                ("x" ("tvar" "2550")))
                                              ("tapp"
                                                ("tcon"
                                                  "std/core/types/effect-extend")
                                                ("tapp"
                                                  ("tcon"
                                                    "std/core/types/handled")
                                                  ("tcon" "std/core/exn/exn"))
                                                ("tcon" "std/core/types/total"))
                                              ("tapp"
                                                ("tcon" "std/core/types/tuple2")
                                                ("tapp"
                                                  ("tcon"
                                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                                  ("tvar" "2550"))
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/buffer")))))
                                        ("tcon" "std/core/types/total")
                                        ("fun"
                                          (("s"
                                              ("tapp"
                                                ("tcon"
                                                  "bootstrap/validation/example/fp-finger-trees/seq")
                                                ("tvar" "2550")))
                                            ("b"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/buffer"))
                                            ("u3"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                            ("x" ("tvar" "2550")))
                                          ("tapp"
                                            ("tcon"
                                              "std/core/types/effect-extend")
                                            ("tapp"
                                              ("tcon" "std/core/types/handled")
                                              ("tcon" "std/core/exn/exn"))
                                            ("tcon" "std/core/types/total"))
                                          ("tapp"
                                            ("tcon" "std/core/types/tuple2")
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2550"))
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer")))))))
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
                                  (("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2550")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))
                                    ("u3"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                    ("x" ("tvar" "2550")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2550"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer")))
                                ("fun"
                                  (("s"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2550")))
                                    ("b"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))
                                    ("u3"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                    ("x" ("tvar" "2550")))
                                  ("tapp"
                                    ("tcon" "std/core/types/effect-extend")
                                    ("tapp"
                                      ("tcon" "std/core/types/handled")
                                      ("tcon" "std/core/exn/exn"))
                                    ("tcon" "std/core/types/total"))
                                  ("tapp"
                                    ("tcon" "std/core/types/tuple2")
                                    ("tapp"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/seq")
                                      ("tvar" "2550"))
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/buffer"))))
                              ("type-app"
                                ("var"
                                  ("bootstrap/validation/example/fp-finger-trees/snoc"
                                    ("forall"
                                      ("2505")
                                      ("fun"
                                        (("s"
                                            ("tapp"
                                              ("tcon"
                                                "bootstrap/validation/example/fp-finger-trees/seq")
                                              ("tvar" "2505")))
                                          ("b"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/buffer"))
                                          ("u3"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/reuse3"))
                                          ("x" ("tvar" "2505")))
                                        ("tapp"
                                          ("tcon"
                                            "std/core/types/effect-extend")
                                          ("tapp"
                                            ("tcon" "std/core/types/handled")
                                            ("tcon" "std/core/exn/exn"))
                                          ("tcon" "std/core/types/total"))
                                        ("tapp"
                                          ("tcon" "std/core/types/tuple2")
                                          ("tapp"
                                            ("tcon"
                                              "bootstrap/validation/example/fp-finger-trees/seq")
                                            ("tvar" "2505"))
                                          ("tcon"
                                            "bootstrap/validation/example/fp-finger-trees/buffer"))))))
                                ("tvar" "2550")))
                            ("var"
                              ("s"
                                ("tapp"
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/seq")
                                  ("tvar" "2550"))))
                            ("var"
                              ("b"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/buffer")))
                            ("var"
                              ("u3"
                                ("tcon"
                                  "bootstrap/validation/example/fp-finger-trees/reuse3")))
                            ("var" ("x" ("tvar" "2550")))))
                        (("branch"
                            (("pat-con"
                                "std/core/types/Tuple2"
                                (("pat-var" "s'" "pat-wild")
                                  ("pat-var" "b'" "pat-wild"))
                                ("single"
                                  "std/core/types/tuple2"
                                  "single-struct"
                                  ("value-repr" "0" "2" "8")
                                  "none"
                                  "1")
                                (("tapp"
                                    ("tcon"
                                      "bootstrap/validation/example/fp-finger-trees/seq")
                                    ("tvar" "2550"))
                                  ("tcon"
                                    "bootstrap/validation/example/fp-finger-trees/buffer"))))
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
                                      "bootstrap/validation/example/fp-finger-trees/BSeq"
                                      ("single"
                                        "bootstrap/validation/example/fp-finger-trees/bseq"
                                        "single-struct"
                                        ("value-repr" "0" "2" "8")
                                        "none"
                                        "1"))
                                    ("tvar" "2550"))
                                  ("var"
                                    ("s'"
                                      ("tapp"
                                        ("tcon"
                                          "bootstrap/validation/example/fp-finger-trees/seq")
                                        ("tvar" "2550"))))
                                  ("var"
                                    ("b'"
                                      ("tcon"
                                        "bootstrap/validation/example/fp-finger-trees/buffer"))))))))))))))))
        ("def-fun" () ("fip" ("at-most" "0")))))
    ("non-rec"
      ("def"
        "bootstrap/validation/example/fp-finger-trees/main"
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
