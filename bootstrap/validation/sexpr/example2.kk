("core"
  (("bootstrap/validation/example/example2/main" ("no-fip" "False"))
    ("bootstrap/validation/example/example2/rev-acc" ("fip" ("at-most" "0")))
    ("std/core/#default/(!=)" ("no-fip" "False"))
    ("std/core/#default/cmp/(<)" ("no-fip" "False"))
    ("std/core/#default/cmp/(<=)" ("no-fip" "False"))
    ("std/core/#default/cmp/(==)" ("no-fip" "False"))
    ("std/core/#default/cmp/(>)" ("no-fip" "False"))
    ("std/core/#default/cmp/(>=)" ("no-fip" "False"))
    ("std/core/#range/@lift-for-while@1830" ("no-fip" "False"))
    ("std/core/#range/@lift-for@1829" ("no-fip" "False"))
    ("std/core/#range/@mlift-fold-while@10075" ("no-fip" "False"))
    ("std/core/#range/@mlift-fold@10074" ("no-fip" "False"))
    ("std/core/#range/@mlift-lift-for-while@1830@10077" ("no-fip" "False"))
    ("std/core/#range/@mlift-lift-for@1829@10076" ("no-fip" "False"))
    ("std/core/#range/fold" ("no-fip" "False"))
    ("std/core/#range/fold-while" ("no-fip" "False"))
    ("std/core/#range/for" ("no-fip" "False"))
    ("std/core/#range/for-while" ("no-fip" "False"))
    ("std/core/#stream/@copy" ("no-fip" "False"))
    ("std/core/#stream/head" ("no-fip" "False"))
    ("std/core/#stream/tail" ("no-fip" "False"))
    ("std/core/@default-exn" ("no-fip" "False"))
    ("std/core/@mlift-while@10072" ("no-fip" "False"))
    ("std/core/@mlift-while@10073" ("no-fip" "False"))
    ("std/core/apply" ("no-fip" "False"))
    ("std/core/bool/(!=)" ("fip" ("at-most" "0")))
    ("std/core/bool/(<)" ("fip" ("at-most" "0")))
    ("std/core/bool/(<=)" ("fip" ("at-most" "0")))
    ("std/core/bool/(==)" ("fip" ("at-most" "0")))
    ("std/core/bool/(>)" ("fip" ("at-most" "0")))
    ("std/core/bool/(>=)" ("fip" ("at-most" "0")))
    ("std/core/bool/cmp" ("fip" ("at-most" "0")))
    ("std/core/bool/int" ("fip" ("at-most" "0")))
    ("std/core/bool/order2" ("fip" ("at-most" "0")))
    ("std/core/bool/show" ("no-fip" "False"))
    ("std/core/bool/xor" ("fip" ("at-most" "0")))
    ("std/core/char/#int/char" ("fip" ("at-most" "0")))
    ("std/core/char/(!=)" ("fip" ("at-most" "0")))
    ("std/core/char/(+)" ("fip" ("at-most" "0")))
    ("std/core/char/(-)" ("fip" ("at-most" "0")))
    ("std/core/char/(<)" ("fip" ("at-most" "0")))
    ("std/core/char/(<=)" ("fip" ("at-most" "0")))
    ("std/core/char/(==)" ("fip" ("at-most" "0")))
    ("std/core/char/(>)" ("fip" ("at-most" "0")))
    ("std/core/char/(>=)" ("fip" ("at-most" "0")))
    ("std/core/char/cmp" ("fip" ("at-most" "0")))
    ("std/core/char/int" ("fip" ("at-most" "0")))
    ("std/core/char/is-alpha" ("fip" ("at-most" "0")))
    ("std/core/char/is-alpha-num" ("fip" ("at-most" "0")))
    ("std/core/char/is-ascii" ("fip" ("at-most" "0")))
    ("std/core/char/is-control" ("fip" ("at-most" "0")))
    ("std/core/char/is-digit" ("fip" ("at-most" "0")))
    ("std/core/char/is-hex-digit" ("fip" ("at-most" "0")))
    ("std/core/char/is-lower" ("fip" ("at-most" "0")))
    ("std/core/char/is-upper" ("fip" ("at-most" "0")))
    ("std/core/char/is-white" ("fip" ("at-most" "0")))
    ("std/core/char/order2" ("fip" ("at-most" "0")))
    ("std/core/console/#default/show/print" ("no-fip" "False"))
    ("std/core/console/#default/show/println" ("no-fip" "False"))
    ("std/core/console/#string/print" ("no-fip" "False"))
    ("std/core/console/#string/println" ("no-fip" "False"))
    ("std/core/console/print-redirect" ("no-fip" "False"))
    ("std/core/console/prints" ("no-fip" "False"))
    ("std/core/console/printsln" ("no-fip" "False"))
    ("std/core/console/unsafe-nostate" ("no-fip" "False"))
    ("std/core/console/xprints" ("no-fip" "False"))
    ("std/core/console/xprintsln" ("no-fip" "False"))
    ("std/core/const" ("no-fip" "False"))
    ("std/core/debug/#file/kk-file-line" ("fip" ("at-most" "0")))
    ("std/core/debug/@mlift-trace-show@10013" ("no-fip" "False"))
    ("std/core/debug/assert" ("fip" ("at-most" "0")))
    ("std/core/debug/breakpoint" ("fip" ("at-most" "0")))
    ("std/core/debug/impossible" ("fip" ("at-most" "0")))
    ("std/core/debug/notrace" ("no-fip" "False"))
    ("std/core/debug/trace" ("fip" ("at-most" "0")))
    ("std/core/debug/trace-any" ("fip" ("at-most" "0")))
    ("std/core/debug/trace-info" ("fip" ("at-most" "0")))
    ("std/core/debug/trace-show" ("fip" ("at-most" "0")))
    ("std/core/debug/unsafe-abort" ("no-fip" "False"))
    ("std/core/debug/xtrace" ("fip" ("at-most" "0")))
    ("std/core/debug/xtrace-any" ("fip" ("at-most" "0")))
    ("std/core/delayed/#delayed/@copy" ("no-fip" "False"))
    ("std/core/delayed/#delayed/dref" ("no-fip" "False"))
    ("std/core/delayed/#force/@mlift-go@10013" ("no-fip" "False"))
    ("std/core/delayed/#force/go" ("no-fip" "False"))
    ("std/core/delayed/delay" ("no-fip" "False"))
    ("std/core/delayed/force" ("no-fip" "False"))
    ("std/core/delayed/is-xblocking" ("fip" ("at-most" "0")))
    ("std/core/delayed/is-xcomputation" ("fip" ("at-most" "0")))
    ("std/core/delayed/is-xdone" ("fip" ("at-most" "0")))
    ("std/core/delayed/memo" ("no-fip" "False"))
    ("std/core/delayed/once" ("no-fip" "False"))
    ("std/core/either/(==)" ("no-fip" "False"))
    ("std/core/either/@mlift-map@10010" ("no-fip" "False"))
    ("std/core/either/@mlift-show@10011" ("no-fip" "False"))
    ("std/core/either/@mlift-show@10012" ("no-fip" "False"))
    ("std/core/either/map" ("no-fip" "False"))
    ("std/core/either/maybe" ("no-fip" "False"))
    ("std/core/either/show" ("no-fip" "False"))
    ("std/core/exn/#error/@mlift-try@10028" ("no-fip" "False"))
    ("std/core/exn/#error/try" ("no-fip" "False"))
    ("std/core/exn/#exception/@copy" ("no-fip" "False"))
    ("std/core/exn/#exception/info" ("no-fip" "False"))
    ("std/core/exn/#exception/message" ("no-fip" "False"))
    ("std/core/exn/#exn/@brk-throw-exn" ("no-fip" "False"))
    ("std/core/exn/#exn/@cfc" ("no-fip" "False"))
    ("std/core/exn/#exn/@handle" ("no-fip" "False"))
    ("std/core/exn/#handle/try" ("no-fip" "False"))
    ("std/core/exn/#throw-exn/@select" ("no-fip" "False"))
    ("std/core/exn/catch" ("no-fip" "False"))
    ("std/core/exn/default" ("no-fip" "False"))
    ("std/core/exn/either" ("no-fip" "False"))
    ("std/core/exn/error-pattern" ("no-fip" "False"))
    ("std/core/exn/exn" ("no-fip" "False"))
    ("std/core/exn/exn-error-range" ("no-fip" "False"))
    ("std/core/exn/is-error" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnAssert" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnError" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnInternal" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnPattern" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnRange" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnSystem" ("fip" ("at-most" "0")))
    ("std/core/exn/is-exnTodo" ("fip" ("at-most" "0")))
    ("std/core/exn/is-ok" ("fip" ("at-most" "0")))
    ("std/core/exn/maybe" ("no-fip" "False"))
    ("std/core/exn/on-exit" ("no-fip" "False"))
    ("std/core/exn/show" ("no-fip" "False"))
    ("std/core/exn/throw" ("no-fip" "False"))
    ("std/core/exn/throw-exn" ("no-fip" "False"))
    ("std/core/exn/untry" ("no-fip" "False"))
    ("std/core/fold" ("no-fip" "False"))
    ("std/core/fold-while" ("no-fip" "False"))
    ("std/core/for" ("no-fip" "False"))
    ("std/core/for-while" ("no-fip" "False"))
    ("std/core/hnd/#clause0/@copy" ("no-fip" "False"))
    ("std/core/hnd/#clause0/clause" ("no-fip" "False"))
    ("std/core/hnd/#clause1/@copy" ("no-fip" "False"))
    ("std/core/hnd/#clause1/clause" ("no-fip" "False"))
    ("std/core/hnd/#clause2/@copy" ("no-fip" "False"))
    ("std/core/hnd/#clause2/clause" ("no-fip" "False"))
    ("std/core/hnd/#ev/(==)" ("no-fip" "False"))
    ("std/core/hnd/#ev/@copy" ("no-fip" "False"))
    ("std/core/hnd/#ev/htag" ("no-fip" "False"))
    ("std/core/hnd/#htag/@copy" ("no-fip" "False"))
    ("std/core/hnd/#htag/show" ("no-fip" "False"))
    ("std/core/hnd/#htag/tagname" ("no-fip" "False"))
    ("std/core/hnd/#resume-context/@copy" ("no-fip" "False"))
    ("std/core/hnd/#resume-context/k" ("no-fip" "False"))
    ("std/core/hnd/@evv-at" ("no-fip" "False"))
    ("std/core/hnd/@evv-index" ("no-fip" "False"))
    ("std/core/hnd/@evv-index-mask" ("no-fip" "False"))
    ("std/core/hnd/@evv-is-affine" ("no-fip" "False"))
    ("std/core/hnd/@hhandle" ("no-fip" "False"))
    ("std/core/hnd/@mask-at" ("no-fip" "False"))
    ("std/core/hnd/@mask-builtin" ("no-fip" "False"))
    ("std/core/hnd/@named-handle" ("no-fip" "False"))
    ("std/core/hnd/@new-htag" ("no-fip" "False"))
    ("std/core/hnd/@open-at0" ("no-fip" "False"))
    ("std/core/hnd/@open-at1" ("no-fip" "False"))
    ("std/core/hnd/@open-at2" ("no-fip" "False"))
    ("std/core/hnd/@open-at3" ("no-fip" "False"))
    ("std/core/hnd/@open-at4" ("no-fip" "False"))
    ("std/core/hnd/@open-none0" ("no-fip" "False"))
    ("std/core/hnd/@open-none1" ("no-fip" "False"))
    ("std/core/hnd/@open-none2" ("no-fip" "False"))
    ("std/core/hnd/@open-none3" ("no-fip" "False"))
    ("std/core/hnd/@open-none4" ("no-fip" "False"))
    ("std/core/hnd/@open0" ("no-fip" "False"))
    ("std/core/hnd/@open1" ("no-fip" "False"))
    ("std/core/hnd/@open2" ("no-fip" "False"))
    ("std/core/hnd/@open3" ("no-fip" "False"))
    ("std/core/hnd/@open4" ("no-fip" "False"))
    ("std/core/hnd/@perform0" ("no-fip" "False"))
    ("std/core/hnd/@perform1" ("no-fip" "False"))
    ("std/core/hnd/@perform2" ("no-fip" "False"))
    ("std/core/hnd/@perform3" ("no-fip" "False"))
    ("std/core/hnd/@perform4" ("no-fip" "False"))
    ("std/core/hnd/add" ("no-fip" "False"))
    ("std/core/hnd/cast-clause0" ("no-fip" "False"))
    ("std/core/hnd/cast-clause1" ("no-fip" "False"))
    ("std/core/hnd/cast-clause2" ("no-fip" "False"))
    ("std/core/hnd/cast-ev0" ("no-fip" "False"))
    ("std/core/hnd/cast-ev1" ("no-fip" "False"))
    ("std/core/hnd/cast-ev2" ("no-fip" "False"))
    ("std/core/hnd/cast-ev3" ("no-fip" "False"))
    ("std/core/hnd/cast-ev4" ("no-fip" "False"))
    ("std/core/hnd/cast-ev5" ("no-fip" "False"))
    ("std/core/hnd/clause-control-raw0" ("no-fip" "False"))
    ("std/core/hnd/clause-control-raw1" ("no-fip" "False"))
    ("std/core/hnd/clause-control-raw2" ("no-fip" "False"))
    ("std/core/hnd/clause-control-raw3" ("no-fip" "False"))
    ("std/core/hnd/clause-control0" ("no-fip" "False"))
    ("std/core/hnd/clause-control1" ("no-fip" "False"))
    ("std/core/hnd/clause-control2" ("no-fip" "False"))
    ("std/core/hnd/clause-control3" ("no-fip" "False"))
    ("std/core/hnd/clause-control4" ("no-fip" "False"))
    ("std/core/hnd/clause-never0" ("no-fip" "False"))
    ("std/core/hnd/clause-never1" ("no-fip" "False"))
    ("std/core/hnd/clause-never2" ("no-fip" "False"))
    ("std/core/hnd/clause-never3" ("no-fip" "False"))
    ("std/core/hnd/clause-never4" ("no-fip" "False"))
    ("std/core/hnd/clause-tail-noop0" ("no-fip" "False"))
    ("std/core/hnd/clause-tail-noop1" ("no-fip" "False"))
    ("std/core/hnd/clause-tail-noop2" ("no-fip" "False"))
    ("std/core/hnd/clause-tail-noop3" ("no-fip" "False"))
    ("std/core/hnd/clause-tail-noop4" ("no-fip" "False"))
    ("std/core/hnd/clause-tail0" ("no-fip" "False"))
    ("std/core/hnd/clause-tail1" ("no-fip" "False"))
    ("std/core/hnd/clause-tail2" ("no-fip" "False"))
    ("std/core/hnd/clause-tail3" ("no-fip" "False"))
    ("std/core/hnd/clause-tail4" ("no-fip" "False"))
    ("std/core/hnd/clause-value" ("no-fip" "False"))
    ("std/core/hnd/eq" ("no-fip" "False"))
    ("std/core/hnd/eq-marker" ("no-fip" "False"))
    ("std/core/hnd/evv-eq" ("no-fip" "False"))
    ("std/core/hnd/evv-get" ("no-fip" "False"))
    ("std/core/hnd/evv-insert" ("no-fip" "False"))
    ("std/core/hnd/evv-set" ("no-fip" "False"))
    ("std/core/hnd/evv-show" ("no-fip" "False"))
    ("std/core/hnd/evv-swap" ("no-fip" "False"))
    ("std/core/hnd/evv-swap-create" ("no-fip" "False"))
    ("std/core/hnd/evv-swap-create0" ("no-fip" "False"))
    ("std/core/hnd/evv-swap-create1" ("no-fip" "False"))
    ("std/core/hnd/evv-swap-delete" ("no-fip" "False"))
    ("std/core/hnd/evv-swap-with" ("no-fip" "False"))
    ("std/core/hnd/finalize" ("no-fip" "False"))
    ("std/core/hnd/finally" ("no-fip" "False"))
    ("std/core/hnd/finally-prompt" ("no-fip" "False"))
    ("std/core/hnd/fresh-marker" ("no-fip" "False"))
    ("std/core/hnd/fresh-marker-named" ("no-fip" "False"))
    ("std/core/hnd/get" ("no-fip" "False"))
    ("std/core/hnd/guard" ("no-fip" "False"))
    ("std/core/hnd/initially" ("no-fip" "False"))
    ("std/core/hnd/initially-prompt" ("no-fip" "False"))
    ("std/core/hnd/is-deep" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-finalize" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-pure" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-shallow" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-yield" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-yielding" ("fip" ("at-most" "0")))
    ("std/core/hnd/is-yieldingFinal" ("fip" ("at-most" "0")))
    ("std/core/hnd/keep-yielding-final" ("no-fip" "False"))
    ("std/core/hnd/local-var" ("no-fip" "False"))
    ("std/core/hnd/mask-at1" ("no-fip" "False"))
    ("std/core/hnd/open-at1" ("no-fip" "False"))
    ("std/core/hnd/open1" ("no-fip" "False"))
    ("std/core/hnd/prompt" ("no-fip" "False"))
    ("std/core/hnd/prompt-local-var" ("no-fip" "False"))
    ("std/core/hnd/protect" ("no-fip" "False"))
    ("std/core/hnd/protect-prompt" ("no-fip" "False"))
    ("std/core/hnd/protect2" ("no-fip" "False"))
    ("std/core/hnd/resume" ("no-fip" "False"))
    ("std/core/hnd/resume-final" ("no-fip" "False"))
    ("std/core/hnd/resume-shallow" ("no-fip" "False"))
    ("std/core/hnd/try-finalize-prompt" ("no-fip" "False"))
    ("std/core/hnd/under0" ("no-fip" "False"))
    ("std/core/hnd/under1" ("no-fip" "False"))
    ("std/core/hnd/under1x" ("no-fip" "False"))
    ("std/core/hnd/under2" ("no-fip" "False"))
    ("std/core/hnd/under3" ("no-fip" "False"))
    ("std/core/hnd/under4" ("no-fip" "False"))
    ("std/core/hnd/unsafe-reyield" ("no-fip" "False"))
    ("std/core/hnd/unsafe-st" ("no-fip" "False"))
    ("std/core/hnd/unsafe-try-finalize" ("no-fip" "False"))
    ("std/core/hnd/xperform1" ("no-fip" "False"))
    ("std/core/hnd/yield-bind" ("no-fip" "False"))
    ("std/core/hnd/yield-bind2" ("no-fip" "False"))
    ("std/core/hnd/yield-capture" ("no-fip" "False"))
    ("std/core/hnd/yield-cont" ("no-fip" "False"))
    ("std/core/hnd/yield-extend" ("no-fip" "False"))
    ("std/core/hnd/yield-prompt" ("no-fip" "False"))
    ("std/core/hnd/yield-to" ("no-fip" "False"))
    ("std/core/hnd/yield-to-final" ("no-fip" "False"))
    ("std/core/hnd/yield-to-prim" ("no-fip" "False"))
    ("std/core/hnd/yielding" ("no-fip" "False"))
    ("std/core/hnd/yielding-non-final" ("no-fip" "False"))
    ("std/core/host" ("no-fip" "False"))
    ("std/core/ignore" ("no-fip" "False"))
    ("std/core/int/#int16/int" ("fip" ("at-most" "0")))
    ("std/core/int/#int8/int" ("fip" ("at-most" "0")))
    ("std/core/int/#int8/uint" ("fip" ("at-most" "0")))
    ("std/core/int/#intptr_t/int" ("fip" ("at-most" "0")))
    ("std/core/int/#ssize_t/int" ("fip" ("at-most" "0")))
    ("std/core/int/(!=)" ("fip" ("at-most" "0")))
    ("std/core/int/(%)" ("fip" ("at-most" "0")))
    ("std/core/int/(*)" ("fip" ("at-most" "0")))
    ("std/core/int/(+)" ("fip" ("at-most" "0")))
    ("std/core/int/(-)" ("fip" ("at-most" "0")))
    ("std/core/int/(/)" ("fip" ("at-most" "0")))
    ("std/core/int/(<)" ("fip" ("at-most" "0")))
    ("std/core/int/(<=)" ("fip" ("at-most" "0")))
    ("std/core/int/(==)" ("fip" ("at-most" "0")))
    ("std/core/int/(>)" ("fip" ("at-most" "0")))
    ("std/core/int/(>=)" ("fip" ("at-most" "0")))
    ("std/core/int/(^)" ("fip" ("at-most" "0")))
    ("std/core/int/(~)" ("fip" ("at-most" "0")))
    ("std/core/int/abs" ("fip" ("at-most" "0")))
    ("std/core/int/bool" ("no-fip" "False"))
    ("std/core/int/cdiv-exp10" ("fip" ("at-most" "0")))
    ("std/core/int/cdivmod-exp10" ("no-fip" "False"))
    ("std/core/int/cmp" ("fip" ("at-most" "0")))
    ("std/core/int/count-digits" ("fip" ("at-most" "0")))
    ("std/core/int/dec" ("fip" ("at-most" "0")))
    ("std/core/int/divmod" ("fip" ("at-most" "0")))
    ("std/core/int/divmod-exp10" ("no-fip" "False"))
    ("std/core/int/exp10" ("fip" ("at-most" "0")))
    ("std/core/int/exp2" ("fip" ("at-most" "0")))
    ("std/core/int/inc" ("fip" ("at-most" "0")))
    ("std/core/int/int-add" ("fip" ("at-most" "0")))
    ("std/core/int/int-sub" ("fip" ("at-most" "0")))
    ("std/core/int/int16" ("fip" ("at-most" "0")))
    ("std/core/int/int8" ("fip" ("at-most" "0")))
    ("std/core/int/intptr_t" ("fip" ("at-most" "0")))
    ("std/core/int/is-even" ("fip" ("at-most" "0")))
    ("std/core/int/is-exp10" ("fip" ("at-most" "0")))
    ("std/core/int/is-neg" ("fip" ("at-most" "0")))
    ("std/core/int/is-odd" ("fip" ("at-most" "0")))
    ("std/core/int/is-pos" ("fip" ("at-most" "0")))
    ("std/core/int/is-zero" ("fip" ("at-most" "0")))
    ("std/core/int/max" ("fip" ("at-most" "0")))
    ("std/core/int/maybe" ("no-fip" "False"))
    ("std/core/int/mbint" ("fip" ("at-most" "0")))
    ("std/core/int/min" ("fip" ("at-most" "0")))
    ("std/core/int/mul-exp10" ("fip" ("at-most" "0")))
    ("std/core/int/negate" ("fip" ("at-most" "0")))
    ("std/core/int/order" ("fip" ("at-most" "0")))
    ("std/core/int/order2" ("fip" ("at-most" "0")))
    ("std/core/int/parse-int" ("no-fip" "False"))
    ("std/core/int/pow" ("fip" ("at-most" "0")))
    ("std/core/int/show" ("no-fip" "False"))
    ("std/core/int/sign" ("fip" ("at-most" "0")))
    ("std/core/int/ssize_t" ("fip" ("at-most" "0")))
    ("std/core/int/uint8" ("fip" ("at-most" "0")))
    ("std/core/int/xparse" ("no-fip" "False"))
    ("std/core/lazy/atomic-enter" ("fip" ("at-most" "0")))
    ("std/core/lazy/atomic-leave" ("fip" ("at-most" "0")))
    ("std/core/lazy/datatype-is-whnf" ("fip" ("at-most" "0")))
    ("std/core/lazy/datatype-ptr-is-thread-shared" ("fip" ("at-most" "0")))
    ("std/core/lazy/datatype-ptr-is-unique" ("fip" ("at-most" "0")))
    ("std/core/lazy/datatype-ptr-is-whnf" ("fip" ("at-most" "0")))
    ("std/core/lazy/indirect-compress" ("fip" ("at-most" "0")))
    ("std/core/lazy/memoize" ("fip" ("at-most" "0")))
    ("std/core/lazy/memoize-target" ("fip" ("at-most" "0")))
    ("std/core/list/#char/list" ("no-fip" "False"))
    ("std/core/list/#concat/join" ("no-fip" "False"))
    ("std/core/list/#function/@mlift-trmc-list@10287" ("no-fip" "False"))
    ("std/core/list/#function/@trmc-list" ("no-fip" "False"))
    ("std/core/list/#function/list" ("no-fip" "False"))
    ("std/core/list/#joinsep/join" ("no-fip" "False"))
    ("std/core/list/#maybe/head" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/#maybe/list" ("no-fip" "False"))
    ("std/core/list/#range/@trmc-list" ("no-fip" "False"))
    ("std/core/list/#range/list" ("no-fip" "False"))
    ("std/core/list/#stride/@trmc-list" ("no-fip" "False"))
    ("std/core/list/#stride/list" ("no-fip" "False"))
    ("std/core/list/#stridefunction/@mlift-trmc-list@10288" ("no-fip" "False"))
    ("std/core/list/#stridefunction/@trmc-list" ("no-fip" "False"))
    ("std/core/list/#stridefunction/list" ("no-fip" "False"))
    ("std/core/list/#string/map" ("no-fip" "False"))
    ("std/core/list/(++)" ("fip" ("at-most" "0")))
    ("std/core/list/(==)" ("no-fip" "False"))
    ("std/core/list/(@mlift-x@10278==)" ("no-fip" "False"))
    ("std/core/list/@index" ("no-fip" "False"))
    ("std/core/list/@lift-concat@5739" ("no-fip" "False"))
    ("std/core/list/@lift-flatmap@5740" ("no-fip" "False"))
    ("std/core/list/@lift-intersperse@5734" ("no-fip" "False"))
    ("std/core/list/@lift-length@5730" ("no-fip" "False"))
    ("std/core/list/@lift-map-indexed-peek@5733" ("no-fip" "False"))
    ("std/core/list/@lift-map-indexed@5731" ("no-fip" "False"))
    ("std/core/list/@lift-map-peek@5732" ("no-fip" "False"))
    ("std/core/list/@lift-span@5738" ("no-fip" "False"))
    ("std/core/list/@lift-unzip3@5736" ("no-fip" "False"))
    ("std/core/list/@lift-unzip4@5737" ("no-fip" "False"))
    ("std/core/list/@lift-unzip@5735" ("no-fip" "False"))
    ("std/core/list/@mlift-all@10308" ("no-fip" "False"))
    ("std/core/list/@mlift-any@10309" ("no-fip" "False"))
    ("std/core/list/@mlift-cmp@10279" ("no-fip" "False"))
    ("std/core/list/@mlift-drop-while@10281" ("no-fip" "False"))
    ("std/core/list/@mlift-find@10285" ("no-fip" "False"))
    ("std/core/list/@mlift-foldl@10280" ("no-fip" "False"))
    ("std/core/list/@mlift-foreach-indexed@10298" ("no-fip" "False"))
    ("std/core/list/@mlift-foreach-indexed@10299" ("no-fip" "False"))
    ("std/core/list/@mlift-foreach-indexed@10300" ("no-fip" "False"))
    ("std/core/list/@mlift-foreach-while@10284" ("no-fip" "False"))
    ("std/core/list/@mlift-foreach@10296" ("no-fip" "False"))
    ("std/core/list/@mlift-index-of-acc@10295" ("no-fip" "False"))
    ("std/core/list/@mlift-lift-span@5738@10304" ("no-fip" "False"))
    ("std/core/list/@mlift-lookup@10294" ("no-fip" "False"))
    ("std/core/list/@mlift-partition-acc@10293" ("no-fip" "False"))
    ("std/core/list/@mlift-remove@10292" ("no-fip" "False"))
    ("std/core/list/@mlift-show@10301" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-filter-map@10283" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-filter@10282" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-flatmap-maybe@10307" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-lift-flatmap@5740@10306" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-lift-map-indexed-peek@5733@10291"
      ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-lift-map-indexed@5731@10289" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-lift-map-peek@5732@10290" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-map-while@10297" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-map@10286" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-take-while@10305" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-zipwith-iter@10303" ("no-fip" "False"))
    ("std/core/list/@mlift-trmc-zipwith@10302" ("no-fip" "False"))
    ("std/core/list/@trmc-append" ("fip" ("at-most" "0")))
    ("std/core/list/@trmc-concat-maybe" ("no-fip" "False"))
    ("std/core/list/@trmc-filter" ("no-fip" "False"))
    ("std/core/list/@trmc-filter-map" ("no-fip" "False"))
    ("std/core/list/@trmc-flatmap-maybe" ("no-fip" "False"))
    ("std/core/list/@trmc-init" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-concat@5739" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-flatmap@5740" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-intersperse@5734" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-map-indexed-peek@5733" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-map-indexed@5731" ("no-fip" "False"))
    ("std/core/list/@trmc-lift-map-peek@5732" ("no-fip" "False"))
    ("std/core/list/@trmc-map" ("fip" ("at-most" "0")))
    ("std/core/list/@trmc-map-while" ("no-fip" "False"))
    ("std/core/list/@trmc-replicate" ("no-fip" "False"))
    ("std/core/list/@trmc-take" ("no-fip" "False"))
    ("std/core/list/@trmc-take-while" ("no-fip" "False"))
    ("std/core/list/@trmc-zip" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/@trmc-zipwith" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/@trmc-zipwith-iter" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/all" ("no-fip" "False"))
    ("std/core/list/any" ("no-fip" "False"))
    ("std/core/list/append" ("fip" ("at-most" "0")))
    ("std/core/list/cmp" ("no-fip" "False"))
    ("std/core/list/concat" ("no-fip" "False"))
    ("std/core/list/concat-maybe" ("no-fip" "False"))
    ("std/core/list/drop" ("no-fip" "False"))
    ("std/core/list/drop-while" ("no-fip" "False"))
    ("std/core/list/filter" ("no-fip" "False"))
    ("std/core/list/filter-map" ("no-fip" "False"))
    ("std/core/list/find" ("no-fip" "False"))
    ("std/core/list/find-maybe" ("no-fip" "False"))
    ("std/core/list/flatmap" ("no-fip" "False"))
    ("std/core/list/flatmap-maybe" ("no-fip" "False"))
    ("std/core/list/foldl" ("no-fip" "False"))
    ("std/core/list/foldl1" ("no-fip" "False"))
    ("std/core/list/foldr" ("no-fip" "False"))
    ("std/core/list/foldr1" ("no-fip" "False"))
    ("std/core/list/foreach" ("no-fip" "False"))
    ("std/core/list/foreach-indexed" ("no-fip" "False"))
    ("std/core/list/foreach-while" ("no-fip" "False"))
    ("std/core/list/head" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/index-of" ("no-fip" "False"))
    ("std/core/list/index-of-acc" ("no-fip" "False"))
    ("std/core/list/init" ("no-fip" "False"))
    ("std/core/list/intersperse" ("no-fip" "False"))
    ("std/core/list/is-empty" ("fip" ("at-most" "0")))
    ("std/core/list/join-end" ("no-fip" "False"))
    ("std/core/list/joinsep" ("no-fip" "False"))
    ("std/core/list/last" ("no-fip" "False"))
    ("std/core/list/length" ("no-fip" "False"))
    ("std/core/list/lines" ("no-fip" "False"))
    ("std/core/list/lookup" ("no-fip" "False"))
    ("std/core/list/map" ("fip" ("at-most" "0")))
    ("std/core/list/map-indexed" ("no-fip" "False"))
    ("std/core/list/map-indexed-peek" ("no-fip" "False"))
    ("std/core/list/map-peek" ("no-fip" "False"))
    ("std/core/list/map-while" ("no-fip" "False"))
    ("std/core/list/maximum" ("no-fip" "False"))
    ("std/core/list/minimum" ("no-fip" "False"))
    ("std/core/list/partition" ("no-fip" "False"))
    ("std/core/list/partition-acc" ("no-fip" "False"))
    ("std/core/list/remove" ("no-fip" "False"))
    ("std/core/list/replicate" ("no-fip" "False"))
    ("std/core/list/reverse" ("fip" ("at-most" "0")))
    ("std/core/list/reverse-acc" ("fip" ("at-most" "0")))
    ("std/core/list/reverse-append" ("fip" ("at-most" "0")))
    ("std/core/list/reverse-join" ("no-fip" "False"))
    ("std/core/list/show" ("no-fip" "False"))
    ("std/core/list/show-list" ("no-fip" "False"))
    ("std/core/list/single" ("fip" ("at-most" "1")))
    ("std/core/list/span" ("no-fip" "False"))
    ("std/core/list/split" ("no-fip" "False"))
    ("std/core/list/sum" ("no-fip" "False"))
    ("std/core/list/tail" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/take" ("no-fip" "False"))
    ("std/core/list/take-while" ("no-fip" "False"))
    ("std/core/list/unlines" ("no-fip" "False"))
    ("std/core/list/unzip" ("no-fip" "False"))
    ("std/core/list/unzip3" ("no-fip" "False"))
    ("std/core/list/unzip4" ("no-fip" "False"))
    ("std/core/list/zip" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/zipwith" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/zipwith-indexed" ("fbip" ("at-most" "0") "False"))
    ("std/core/list/zipwith-iter" ("fbip" ("at-most" "0") "False"))
    ("std/core/main-console" ("no-fip" "False"))
    ("std/core/maybe/(==)" ("no-fip" "False"))
    ("std/core/maybe/(||)" ("no-fip" "False"))
    ("std/core/maybe/@mlift-map@10019" ("no-fip" "False"))
    ("std/core/maybe/@mlift-order2@10020" ("no-fip" "False"))
    ("std/core/maybe/@mlift-show@10021" ("no-fip" "False"))
    ("std/core/maybe/bool" ("no-fip" "False"))
    ("std/core/maybe/cmp" ("no-fip" "False"))
    ("std/core/maybe/default" ("no-fip" "False"))
    ("std/core/maybe/expect" ("no-fip" "False"))
    ("std/core/maybe/map" ("no-fip" "False"))
    ("std/core/maybe/maybe" ("no-fip" "False"))
    ("std/core/maybe/order2" ("fip" ("at-most" "0")))
    ("std/core/maybe/show" ("no-fip" "False"))
    ("std/core/maybe/unjust" ("no-fip" "False"))
    ("std/core/maybe2/(==)" ("no-fip" "False"))
    ("std/core/maybe2/(@mlift-x@10022==)" ("no-fip" "False"))
    ("std/core/maybe2/(||)" ("no-fip" "False"))
    ("std/core/maybe2/@mlift-cmp@10023" ("no-fip" "False"))
    ("std/core/maybe2/@mlift-map@10021" ("no-fip" "False"))
    ("std/core/maybe2/@mlift-show@10024" ("no-fip" "False"))
    ("std/core/maybe2/@mlift-show@10025" ("no-fip" "False"))
    ("std/core/maybe2/bool" ("no-fip" "False"))
    ("std/core/maybe2/cmp" ("no-fip" "False"))
    ("std/core/maybe2/default" ("no-fip" "False"))
    ("std/core/maybe2/expect" ("no-fip" "False"))
    ("std/core/maybe2/map" ("no-fip" "False"))
    ("std/core/maybe2/maybe2" ("no-fip" "False"))
    ("std/core/maybe2/show" ("no-fip" "False"))
    ("std/core/maybe2/unjust" ("no-fip" "False"))
    ("std/core/o" ("no-fip" "False"))
    ("std/core/order/#default/@mlift-order2@10013" ("no-fip" "False"))
    ("std/core/order/#default/order2" ("no-fip" "False"))
    ("std/core/order/#order/int" ("fip" ("at-most" "0")))
    ("std/core/order/#order2/int" ("fip" ("at-most" "0")))
    ("std/core/order/(!=)" ("fip" ("at-most" "0")))
    ("std/core/order/(<)" ("fip" ("at-most" "0")))
    ("std/core/order/(<=)" ("fip" ("at-most" "0")))
    ("std/core/order/(==)" ("fip" ("at-most" "0")))
    ("std/core/order/(>)" ("fip" ("at-most" "0")))
    ("std/core/order/(>=)" ("fip" ("at-most" "0")))
    ("std/core/repeat" ("no-fip" "False"))
    ("std/core/same-type" ("no-fip" "False"))
    ("std/core/show/#char/show" ("no-fip" "False"))
    ("std/core/show/#sslice/show" ("no-fip" "False"))
    ("std/core/show/#string/show" ("no-fip" "False"))
    ("std/core/show/gshow" ("no-fip" "False"))
    ("std/core/show/int-show-hex" ("no-fip" "False"))
    ("std/core/show/show-char" ("no-fip" "False"))
    ("std/core/show/show-hex" ("no-fip" "False"))
    ("std/core/sslice/#pred/@mlift-count@10111" ("no-fip" "False"))
    ("std/core/sslice/#pred/@mlift-count@10112" ("no-fip" "False"))
    ("std/core/sslice/#pred/@mlift-count@10113" ("no-fip" "False"))
    ("std/core/sslice/#pred/count" ("no-fip" "False"))
    ("std/core/sslice/#slice/@mlift-foreach-while@10114" ("no-fip" "False"))
    ("std/core/sslice/#slice/@mlift-foreach@10110" ("no-fip" "False"))
    ("std/core/sslice/#slice/foreach" ("no-fip" "False"))
    ("std/core/sslice/#slice/foreach-while" ("no-fip" "False"))
    ("std/core/sslice/#slice/truncate" ("no-fip" "False"))
    ("std/core/sslice/#sslice/@copy" ("no-fip" "False"))
    ("std/core/sslice/#sslice/len" ("no-fip" "False"))
    ("std/core/sslice/#sslice/start" ("no-fip" "False"))
    ("std/core/sslice/#sslice/str" ("no-fip" "False"))
    ("std/core/sslice/#string/foreach" ("no-fip" "False"))
    ("std/core/sslice/#string/foreach-while" ("no-fip" "False"))
    ("std/core/sslice/#string/truncate" ("no-fip" "False"))
    ("std/core/sslice/(!=)" ("no-fip" "False"))
    ("std/core/sslice/(!==)" ("no-fip" "False"))
    ("std/core/sslice/(==)" ("no-fip" "False"))
    ("std/core/sslice/(===)" ("no-fip" "False"))
    ("std/core/sslice/@new-sslice" ("no-fip" "False"))
    ("std/core/sslice/advance" ("no-fip" "False"))
    ("std/core/sslice/after" ("no-fip" "False"))
    ("std/core/sslice/before" ("no-fip" "False"))
    ("std/core/sslice/capitalize" ("no-fip" "False"))
    ("std/core/sslice/common-prefix" ("no-fip" "False"))
    ("std/core/sslice/count" ("no-fip" "False"))
    ("std/core/sslice/drop" ("no-fip" "False"))
    ("std/core/sslice/ends-with" ("no-fip" "False"))
    ("std/core/sslice/extend" ("no-fip" "False"))
    ("std/core/sslice/find" ("no-fip" "False"))
    ("std/core/sslice/find-last" ("no-fip" "False"))
    ("std/core/sslice/first" ("no-fip" "False"))
    ("std/core/sslice/first1" ("no-fip" "False"))
    ("std/core/sslice/head" ("no-fip" "False"))
    ("std/core/sslice/head-char" ("no-fip" "False"))
    ("std/core/sslice/is-empty" ("no-fip" "False"))
    ("std/core/sslice/is-notempty" ("no-fip" "False"))
    ("std/core/sslice/is-valid" ("no-fip" "False"))
    ("std/core/sslice/last" ("no-fip" "False"))
    ("std/core/sslice/last1" ("no-fip" "False"))
    ("std/core/sslice/length" ("no-fip" "False"))
    ("std/core/sslice/next" ("no-fip" "False"))
    ("std/core/sslice/slice" ("no-fip" "False"))
    ("std/core/sslice/starts-with" ("no-fip" "False"))
    ("std/core/sslice/string" ("no-fip" "False"))
    ("std/core/sslice/subslice" ("no-fip" "False"))
    ("std/core/sslice/tail" ("no-fip" "False"))
    ("std/core/sslice/take" ("no-fip" "False"))
    ("std/core/sslice/trim-left" ("no-fip" "False"))
    ("std/core/sslice/trim-right" ("no-fip" "False"))
    ("std/core/sslice/xends-with" ("no-fip" "False"))
    ("std/core/sslice/xindex-of" ("no-fip" "False"))
    ("std/core/sslice/xlast-index-of" ("no-fip" "False"))
    ("std/core/sslice/xstarts-with" ("no-fip" "False"))
    ("std/core/string/#char/string" ("no-fip" "False"))
    ("std/core/string/#chars/count" ("no-fip" "False"))
    ("std/core/string/#listchar/string" ("no-fip" "False"))
    ("std/core/string/#maybe/string" ("no-fip" "False"))
    ("std/core/string/#sep/split" ("no-fip" "False"))
    ("std/core/string/#splitn/split" ("no-fip" "False"))
    ("std/core/string/#stringpat/count" ("no-fip" "False"))
    ("std/core/string/#vector/join" ("no-fip" "False"))
    ("std/core/string/#vector/string" ("no-fip" "False"))
    ("std/core/string/#vectorsep/join" ("no-fip" "False"))
    ("std/core/string/(!=)" ("no-fip" "False"))
    ("std/core/string/(<)" ("fip" ("at-most" "0")))
    ("std/core/string/(<=)" ("fip" ("at-most" "0")))
    ("std/core/string/(==)" ("no-fip" "False"))
    ("std/core/string/(>)" ("fip" ("at-most" "0")))
    ("std/core/string/(>=)" ("fip" ("at-most" "0")))
    ("std/core/string/(||)" ("no-fip" "False"))
    ("std/core/string/cmp" ("fip" ("at-most" "0")))
    ("std/core/string/contains" ("no-fip" "False"))
    ("std/core/string/is-empty" ("no-fip" "False"))
    ("std/core/string/is-notempty" ("no-fip" "False"))
    ("std/core/string/list" ("no-fip" "False"))
    ("std/core/string/maybe" ("no-fip" "False"))
    ("std/core/string/order2" ("fbip" ("at-most" "0") "False"))
    ("std/core/string/pad-left" ("no-fip" "False"))
    ("std/core/string/pad-right" ("no-fip" "False"))
    ("std/core/string/repeat" ("no-fip" "False"))
    ("std/core/string/repeatz" ("no-fip" "False"))
    ("std/core/string/replace-all" ("no-fip" "False"))
    ("std/core/string/splitv" ("no-fip" "False"))
    ("std/core/string/splitvn" ("no-fip" "False"))
    ("std/core/string/string-cmp" ("fip" ("at-most" "0")))
    ("std/core/string/to-lower" ("no-fip" "False"))
    ("std/core/string/to-upper" ("no-fip" "False"))
    ("std/core/string/trim" ("no-fip" "False"))
    ("std/core/string/trim-left" ("no-fip" "False"))
    ("std/core/string/trim-right" ("no-fip" "False"))
    ("std/core/string/vector" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/(==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/(@mlift-x@10135==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/@mlift-cmp@10145" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/@mlift-map@10121" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/@mlift-map@10122" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/@mlift-show@10155" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/@mlift-show@10156" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/cmp" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/map" ("no-fip" "False"))
    ("std/core/tuple/#tuple2/show" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/(==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/(@mlift-x@10136==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/(@mlift-x@10137==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-cmp@10146" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-cmp@10147" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-map@10123" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-map@10124" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-map@10125" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-show@10157" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-show@10158" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/@mlift-show@10159" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/cmp" ("fbip" ("at-most" "0") "False"))
    ("std/core/tuple/#tuple3/map" ("no-fip" "False"))
    ("std/core/tuple/#tuple3/show" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/(==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/(@mlift-x@10138==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/(@mlift-x@10139==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/(@mlift-x@10140==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-cmp@10148" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-cmp@10149" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-cmp@10150" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-map@10126" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-map@10127" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-map@10128" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-map@10129" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-show@10160" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-show@10161" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-show@10162" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/@mlift-show@10163" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/cmp" ("fbip" ("at-most" "0") "False"))
    ("std/core/tuple/#tuple4/map" ("no-fip" "False"))
    ("std/core/tuple/#tuple4/show" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/(==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/(@mlift-x@10141==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/(@mlift-x@10142==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/(@mlift-x@10143==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/(@mlift-x@10144==)" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-cmp@10151" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-cmp@10152" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-cmp@10153" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-cmp@10154" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-map@10130" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-map@10131" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-map@10132" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-map@10133" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-map@10134" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-show@10164" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-show@10165" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-show@10166" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-show@10167" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/@mlift-show@10168" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/cmp" ("fbip" ("at-most" "0") "False"))
    ("std/core/tuple/#tuple5/map" ("no-fip" "False"))
    ("std/core/tuple/#tuple5/show" ("no-fip" "False"))
    ("std/core/tuple/#unit/(==)" ("no-fip" "False"))
    ("std/core/tuple/#unit/cmp" ("no-fip" "False"))
    ("std/core/tuple/#unit/order2" ("fip" ("at-most" "0")))
    ("std/core/tuple/#unit/show" ("no-fip" "False"))
    ("std/core/tuple/show-tuple" ("no-fip" "False"))
    ("std/core/types/#bool/(!)" ("fip" ("at-most" "0")))
    ("std/core/types/#box/@copy" ("no-fip" "False"))
    ("std/core/types/#box/unbox" ("no-fip" "False"))
    ("std/core/types/#cctx/(++)" ("fip" ("at-most" "0")))
    ("std/core/types/#cctx/(++.)" ("fip" ("at-most" "0")))
    ("std/core/types/#cctx/empty" ("fip" ("at-most" "0")))
    ("std/core/types/#cctx/holeptr" ("no-fip" "False"))
    ("std/core/types/#cctx/res" ("no-fip" "False"))
    ("std/core/types/#pad/@copy" ("no-fip" "False"))
    ("std/core/types/#ref/(!)" ("no-fip" "False"))
    ("std/core/types/#tuple2/@copy" ("no-fip" "False"))
    ("std/core/types/#tuple2/fst" ("no-fip" "False"))
    ("std/core/types/#tuple2/snd" ("no-fip" "False"))
    ("std/core/types/#tuple3/@copy" ("no-fip" "False"))
    ("std/core/types/#tuple3/fst" ("no-fip" "False"))
    ("std/core/types/#tuple3/snd" ("no-fip" "False"))
    ("std/core/types/#tuple3/thd" ("no-fip" "False"))
    ("std/core/types/#tuple4/@copy" ("no-fip" "False"))
    ("std/core/types/#tuple4/field4" ("no-fip" "False"))
    ("std/core/types/#tuple4/fst" ("no-fip" "False"))
    ("std/core/types/#tuple4/snd" ("no-fip" "False"))
    ("std/core/types/#tuple4/thd" ("no-fip" "False"))
    ("std/core/types/#tuple5/@copy" ("no-fip" "False"))
    ("std/core/types/#tuple5/field4" ("no-fip" "False"))
    ("std/core/types/#tuple5/field5" ("no-fip" "False"))
    ("std/core/types/#tuple5/fst" ("no-fip" "False"))
    ("std/core/types/#tuple5/snd" ("no-fip" "False"))
    ("std/core/types/#tuple5/thd" ("no-fip" "False"))
    ("std/core/types/#unit/@copy" ("no-fip" "False"))
    ("std/core/types/(&&)" ("fip" ("at-most" "0")))
    ("std/core/types/(++)" ("no-fip" "False"))
    ("std/core/types/(||)" ("fip" ("at-most" "0")))
    ("std/core/types/@byref" ("no-fip" "False"))
    ("std/core/types/@cctx-compose-extend" ("fip" ("at-most" "0")))
    ("std/core/types/@cctx-create" ("fip" ("at-most" "0")))
    ("std/core/types/@cctx-extend" ("fip" ("at-most" "0")))
    ("std/core/types/@cctx-hole-create" ("fip" ("at-most" "0")))
    ("std/core/types/@field-addr-of" ("fip" ("at-most" "0")))
    ("std/core/types/@make-int32" ("fip" ("at-most" "0")))
    ("std/core/types/@make-ssize_t" ("fip" ("at-most" "0")))
    ("std/core/types/@no-reuse" ("no-fip" "False"))
    ("std/core/types/@open" ("no-fip" "False"))
    ("std/core/types/@toany" ("no-fip" "False"))
    ("std/core/types/force" ("fip" ("at-most" "1")))
    ("std/core/types/id" ("fip" ("at-most" "0")))
    ("std/core/types/is-cons" ("fip" ("at-most" "0")))
    ("std/core/types/is-eq" ("fip" ("at-most" "0")))
    ("std/core/types/is-eq2" ("fip" ("at-most" "0")))
    ("std/core/types/is-false" ("fip" ("at-most" "0")))
    ("std/core/types/is-gt" ("fip" ("at-most" "0")))
    ("std/core/types/is-gt2" ("fip" ("at-most" "0")))
    ("std/core/types/is-just" ("fip" ("at-most" "0")))
    ("std/core/types/is-just2" ("fip" ("at-most" "0")))
    ("std/core/types/is-lazy" ("fip" ("at-most" "0")))
    ("std/core/types/is-left" ("fip" ("at-most" "0")))
    ("std/core/types/is-lt" ("fip" ("at-most" "0")))
    ("std/core/types/is-lt2" ("fip" ("at-most" "0")))
    ("std/core/types/is-nil" ("fip" ("at-most" "0")))
    ("std/core/types/is-nothing" ("fip" ("at-most" "0")))
    ("std/core/types/is-nothing2" ("fip" ("at-most" "0")))
    ("std/core/types/is-right" ("fip" ("at-most" "0")))
    ("std/core/types/is-true" ("fip" ("at-most" "0")))
    ("std/core/types/keep" ("fip" ("at-most" "0")))
    ("std/core/types/lazy-eval" ("fip" ("at-most" "0")))
    ("std/core/types/local-get" ("no-fip" "False"))
    ("std/core/types/local-new" ("no-fip" "False"))
    ("std/core/types/local-scope" ("no-fip" "False"))
    ("std/core/types/local-set" ("no-fip" "False"))
    ("std/core/types/mask-st" ("no-fip" "False"))
    ("std/core/types/modify" ("no-fip" "False"))
    ("std/core/types/not" ("fip" ("at-most" "0")))
    ("std/core/types/ref" ("no-fip" "False"))
    ("std/core/types/run" ("no-fip" "False"))
    ("std/core/types/set" ("no-fip" "False"))
    ("std/core/types/unsafe-no-local-cast" ("no-fip" "False"))
    ("std/core/unique" ("no-fip" "False"))
    ("std/core/vector/#assign/@index" ("no-fip" "False"))
    ("std/core/vector/#list/vector" ("no-fip" "False"))
    ("std/core/vector/#ssize_t/(+)" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/(-)" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/(<)" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/(<=)" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/(>=)" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/decr" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/incr" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/is-neg" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/is-pos" ("fip" ("at-most" "0")))
    ("std/core/vector/#ssize_t/is-zero" ("fip" ("at-most" "0")))
    ("std/core/vector/#unit/vector" ("no-fip" "False"))
    ("std/core/vector/@index" ("no-fip" "False"))
    ("std/core/vector/@lift-for-whilez@1012" ("no-fip" "False"))
    ("std/core/vector/@lift-forz@1011" ("no-fip" "False"))
    ("std/core/vector/@mlift-lift-for-whilez@1012@10048" ("no-fip" "False"))
    ("std/core/vector/@mlift-lift-forz@1011@10045" ("no-fip" "False"))
    ("std/core/vector/@mlift-map@10049" ("no-fip" "False"))
    ("std/core/vector/@mlift-map@10050" ("no-fip" "False"))
    ("std/core/vector/@mlift-vector-init@10046" ("no-fip" "False"))
    ("std/core/vector/@mlift-vector-init@10047" ("no-fip" "False"))
    ("std/core/vector/@unsafe-vector" ("no-fip" "False"))
    ("std/core/vector/at" ("no-fip" "False"))
    ("std/core/vector/for-whilez" ("no-fip" "False"))
    ("std/core/vector/foreach" ("no-fip" "False"))
    ("std/core/vector/foreach-indexed" ("no-fip" "False"))
    ("std/core/vector/foreach-indexedz" ("no-fip" "False"))
    ("std/core/vector/foreach-while" ("no-fip" "False"))
    ("std/core/vector/forz" ("no-fip" "False"))
    ("std/core/vector/length" ("no-fip" "False"))
    ("std/core/vector/lengthz" ("no-fip" "False"))
    ("std/core/vector/list" ("no-fip" "False"))
    ("std/core/vector/map" ("no-fip" "False"))
    ("std/core/vector/unsafe-assign" ("no-fip" "False"))
    ("std/core/vector/unsafe-idx" ("no-fip" "False"))
    ("std/core/vector/unsafe-vector" ("no-fip" "False"))
    ("std/core/vector/unvlist" ("no-fip" "False"))
    ("std/core/vector/vector" ("no-fip" "False"))
    ("std/core/vector/vector-alloc" ("no-fip" "False"))
    ("std/core/vector/vector-alloc-total" ("no-fip" "False"))
    ("std/core/vector/vector-init" ("no-fip" "False"))
    ("std/core/vector/vector-init-total" ("no-fip" "False"))
    ("std/core/vector/vlist" ("no-fip" "False"))
    ("std/core/while" ("no-fip" "False")))
  (("data-info" "std/core/types/@field-addr" ("10000") () "False" "normal")
    ("data-info"
      "std/core/types/@optional"
      ("10001")
      (("con-info"
          "std/core/types/@Optional"
          (("value" ("tvar" "10001")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/types/@None"
          ()
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info" "std/core/types/@reuse" () () "False" "normal")
    ("data-info"
      "std/core/types/@valueop"
      ("10002" "10003")
      (("con-info"
          "std/core/types/@Valueop"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info" "std/core/types/alloc" ("10004") () "False" "normal")
    ("data-info" "std/core/types/any" () () "False" "normal")
    ("data-info" "std/core/blocking" () () "False" "normal")
    ("data-info"
      "std/core/types/bool"
      ()
      (("con-info"
          "std/core/types/False"
          ()
          "nothing"
          ("value-repr" "0" "0" "0"))
        ("con-info"
          "std/core/types/True"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info"
      "std/core/types/box"
      ("10005")
      (("con-info"
          "std/core/types/Box"
          (("unbox" ("tvar" "10005")))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info"
      "std/core/types/cctx"
      ("10006" "10007")
      (("con-info"
          "std/core/types/@Cctx"
          (("res" ("tvar" "10006"))
            ("holeptr"
              ("tapp" ("tcon" "std/core/types/@field-addr") ("tvar" "10007"))))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info"
      "std/core/types/char"
      ()
      ()
      "False"
      ("value" ("value-repr" "4" "0" "4")))
    ("data-info"
      "std/core/hnd/clause0"
      ("10005" "10006" "10007" "10008")
      (("con-info"
          "std/core/hnd/Clause0"
          (("clause"
              ("fun"
                ((""
                    ("tapp"
                      ("tcon" "std/core/hnd/marker")
                      ("tvar" "10007")
                      ("tvar" "10008")))
                  ("" ("tapp" ("tcon" "std/core/hnd/ev") ("tvar" "10006"))))
                ("tvar" "10007")
                ("tvar" "10005"))))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info"
      "std/core/hnd/clause1"
      ("10009" "10010" "10011" "10012" "10013")
      (("con-info"
          "std/core/hnd/Clause1"
          (("clause"
              ("fun"
                ((""
                    ("tapp"
                      ("tcon" "std/core/hnd/marker")
                      ("tvar" "10012")
                      ("tvar" "10013")))
                  ("" ("tapp" ("tcon" "std/core/hnd/ev") ("tvar" "10011")))
                  ("" ("tvar" "10009")))
                ("tvar" "10012")
                ("tvar" "10010"))))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info"
      "std/core/hnd/clause2"
      ("10014" "10015" "10016" "10017" "10018" "10019")
      (("con-info"
          "std/core/hnd/Clause2"
          (("clause"
              ("fun"
                ((""
                    ("tapp"
                      ("tcon" "std/core/hnd/marker")
                      ("tvar" "10018")
                      ("tvar" "10019")))
                  ("" ("tapp" ("tcon" "std/core/hnd/ev") ("tvar" "10017")))
                  ("" ("tvar" "10014"))
                  ("" ("tvar" "10015")))
                ("tvar" "10018")
                ("tvar" "10016"))))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info"
      "std/core/delayed/computation"
      ("10001" "10002")
      (("con-info"
          "std/core/delayed/XComputation"
          (("action" ("fun" () ("tvar" "10001") ("tvar" "10002"))))
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/delayed/XDone"
          (("value" ("tvar" "10002")))
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/delayed/XBlocking"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      "normal")
    ("data-info" "std/core/console/console" () () "False" "normal")
    ("data-info"
      "std/core/delayed/delayed"
      ("10003" "10004")
      (("con-info"
          "std/core/delayed/XDelay"
          (("dref"
              ("tapp"
                ("tcon" "std/core/types/ref")
                ("tcon" "std/core/types/global")
                ("tapp"
                  ("tcon" "std/core/delayed/computation")
                  ("tvar" "10003")
                  ("tvar" "10004")))))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info" "std/core/types/div" () () "False" "normal")
    ("data-info"
      "std/core/types/effect-extend"
      ("10009" "10010")
      ()
      "False"
      "normal")
    ("data-info"
      "std/core/types/either"
      ("10011" "10012")
      (("con-info"
          "std/core/types/Left"
          (("left" ("tvar" "10011")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/types/Right"
          (("right" ("tvar" "10012")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info"
      "std/core/exn/error"
      ("10000")
      (("con-info"
          "std/core/exn/Error"
          (("exception" ("tcon" "std/core/exn/exception")))
          "nothing"
          ("value-repr" "0" "3" "8"))
        ("con-info"
          "std/core/exn/Ok"
          (("result" ("tvar" "10000")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8")))
    ("data-info"
      "std/core/hnd/ev"
      ("10004")
      (("con-info"
          "std/core/hnd/Ev"
          (("htag" ("tapp" ("tcon" "std/core/hnd/htag") ("tvar" "10004")))
            ("marker"
              ("tapp"
                ("tcon" "std/core/hnd/marker")
                ("tvar" "10005")
                ("tvar" "10006")))
            ("hnd" ("tapp" ("tvar" "10004") ("tvar" "10005") ("tvar" "10006")))
            ("hevv" ("tapp" ("tcon" "std/core/hnd/evv") ("tvar" "10005"))))
          "nothing"
          ("value-repr" "4" "3" "8")))
      "False"
      "normal")
    ("data-info" "std/core/hnd/evv" ("10000") () "False" "normal")
    ("data-info"
      "std/core/exn/exception"
      ()
      (("con-info"
          "std/core/exn/Exception"
          (("message" ("tcon" "std/core/types/string"))
            ("info" ("tcon" "std/core/exn/exception-info")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info"
      "std/core/exn/exception-info"
      ()
      (("con-info"
          "std/core/exn/ExnError"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/exn/ExnAssert"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/exn/ExnTodo"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/exn/ExnRange"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/exn/ExnPattern"
          (("location" ("tcon" "std/core/types/string"))
            ("definition" ("tcon" "std/core/types/string")))
          "nothing"
          ("value-repr" "0" "3" "8"))
        ("con-info"
          "std/core/exn/ExnSystem"
          (("errno" ("tcon" "std/core/types/int")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/exn/ExnInternal"
          (("name" ("tcon" "std/core/types/string")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("open" "False"))
    ("data-info"
      "std/core/exn/exn"
      ("10001" "10002")
      (("con-info"
          "std/core/exn/@Hnd-exn"
          (("@cfc" ("tcon" "std/core/types/int"))
            ("@brk-throw-exn"
              ("forall"
                ("10003")
                ("tapp"
                  ("tcon" "std/core/hnd/clause1")
                  ("tcon" "std/core/exn/exception")
                  ("tvar" "10003")
                  ("tcon" "std/core/exn/exn")
                  ("tvar" "10001")
                  ("tvar" "10002")))))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "True"
      "normal")
    ("data-info"
      "std/core/types/float32"
      ()
      ()
      "False"
      ("value" ("value-repr" "4" "0" "4")))
    ("data-info"
      "std/core/types/float64"
      ()
      ()
      "False"
      ("value" ("value-repr" "8" "0" "8")))
    ("data-info" "std/core/fsys" () () "False" "normal")
    ("data-info" "std/core/global-scope" () () "False" "normal")
    ("data-info" "std/core/types/global" () () "False" "normal")
    ("data-info" "std/core/types/handled" ("10013") () "False" "normal")
    ("data-info" "std/core/types/handled1" ("10014") () "False" "normal")
    ("data-info"
      "std/core/types/hdiv"
      ("10015" "10016" "10017")
      (("con-info"
          "std/core/types/@Hdiv"
          ()
          "nothing"
          ("value-repr" "0" "0" "0"))
        ("con-info"
          "std/core/types/@Hnodiv"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info"
      "std/core/hnd/htag"
      ("10001")
      (("con-info"
          "std/core/hnd/Htag"
          (("tagname" ("tcon" "std/core/types/string")))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info" "std/core/types/int" () () "False" "normal")
    ("data-info"
      "std/core/types/int16"
      ()
      ()
      "False"
      ("value" ("value-repr" "2" "0" "2")))
    ("data-info"
      "std/core/types/int32"
      ()
      ()
      "False"
      ("value" ("value-repr" "4" "0" "4")))
    ("data-info"
      "std/core/types/int64"
      ()
      ()
      "False"
      ("value" ("value-repr" "8" "0" "8")))
    ("data-info"
      "std/core/types/int8"
      ()
      ()
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info"
      "std/core/types/intptr_t"
      ()
      ()
      "False"
      ("value" ("value-repr" "8" "0" "8")))
    ("data-info"
      "std/core/types/list"
      ("10018")
      (("con-info" "std/core/types/Nil" () "nothing" ("value-repr" "0" "0" "0"))
        ("con-info"
          "std/core/types/Cons"
          (("head" ("tvar" "10018"))
            ("tail" ("tapp" ("tcon" "std/core/types/list") ("tvar" "10018"))))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "True"
      "normal")
    ("data-info" "std/core/types/local" ("10019") () "False" "normal")
    ("data-info"
      "std/core/types/local-var"
      ("10020" "10021")
      ()
      "False"
      "normal")
    ("data-info"
      "std/core/hnd/marker"
      ("10002" "10003")
      ()
      "False"
      ("value" ("value-repr" "4" "0" "4")))
    ("data-info"
      "std/core/types/maybe"
      ("10022")
      (("con-info"
          "std/core/types/Nothing"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/types/Just"
          (("value" ("tvar" "10022")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info"
      "std/core/types/maybe2"
      ("10023" "10024")
      (("con-info"
          "std/core/types/Nothing2"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/types/Just2"
          (("fst" ("tvar" "10023")) ("snd" ("tvar" "10024")))
          "nothing"
          ("value-repr" "0" "3" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8")))
    ("data-info" "std/core/types/ndet" () () "False" "normal")
    ("data-info" "std/core/net" () () "False" "normal")
    ("data-info" "std/core/types/nhandled" ("10025") () "False" "normal")
    ("data-info" "std/core/types/nhandled1" ("10026") () "False" "normal")
    ("data-info" "std/core/nmd" () () "False" "normal")
    ("data-info"
      "std/core/types/order"
      ()
      (("con-info" "std/core/types/Lt" () "nothing" ("value-repr" "0" "0" "0"))
        ("con-info" "std/core/types/Eq" () "nothing" ("value-repr" "0" "0" "0"))
        ("con-info"
          "std/core/types/Gt"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info"
      "std/core/types/order2"
      ("10027")
      (("con-info"
          "std/core/types/Lt2"
          (("lt" ("tvar" "10027")) ("gt" ("tvar" "10027")))
          "nothing"
          ("value-repr" "0" "3" "8"))
        ("con-info"
          "std/core/types/Eq2"
          (("eq" ("tvar" "10027")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/types/Gt2"
          (("lt" ("tvar" "10027")) ("gt" ("tvar" "10027")))
          "nothing"
          ("value-repr" "0" "3" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8")))
    ("data-info"
      "std/core/types/pad"
      ()
      (("con-info"
          "std/core/types/Pad"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      "normal")
    ("data-info" "std/core/types/read" ("10028") () "False" "normal")
    ("data-info" "std/core/types/ref" ("10029" "10030") () "False" "normal")
    ("data-info"
      "std/core/hnd/resume-context"
      ("10022" "10023" "10024" "10025")
      (("con-info"
          "std/core/hnd/Resume-context"
          (("k"
              ("fun"
                ((""
                    ("tapp"
                      ("tcon" "std/core/hnd/resume-result")
                      ("tvar" "10022")
                      ("tvar" "10025"))))
                ("tvar" "10023")
                ("tvar" "10025"))))
          "nothing"
          ("value-repr" "0" "1" "8")))
      "False"
      ("value" ("value-repr" "0" "1" "8")))
    ("data-info"
      "std/core/hnd/resume-result"
      ("10020" "10021")
      (("con-info"
          "std/core/hnd/Deep"
          (("result" ("tvar" "10020")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/hnd/Shallow"
          (("result" ("tvar" "10020")))
          "nothing"
          ("value-repr" "0" "2" "8"))
        ("con-info"
          "std/core/hnd/Finalize"
          (("result" ("tvar" "10021")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info" "std/core/scope" ("10000") () "False" "normal")
    ("data-info"
      "std/core/types/ssize_t"
      ()
      ()
      "False"
      ("value" ("value-repr" "8" "0" "8")))
    ("data-info"
      "std/core/sslice/sslice"
      ()
      (("con-info"
          "std/core/sslice/Sslice"
          (("str" ("tcon" "std/core/types/string"))
            ("start" ("tcon" "std/core/types/int"))
            ("len" ("tcon" "std/core/types/int")))
          "nothing"
          ("value-repr" "0" "3" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8")))
    ("data-info"
      "std/core/stream"
      ("10001")
      (("con-info"
          "std/core/Next"
          (("head" ("tvar" "10001"))
            ("tail" ("tapp" ("tcon" "std/core/stream") ("tvar" "10001"))))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "True"
      "normal")
    ("data-info" "std/core/types/string" () () "False" "normal")
    ("data-info" "std/core/types/total" () () "False" "normal")
    ("data-info"
      "std/core/types/tuple2"
      ("10033" "10034")
      (("con-info"
          "std/core/types/Tuple2"
          (("fst" ("tvar" "10033")) ("snd" ("tvar" "10034")))
          "nothing"
          ("value-repr" "0" "2" "8")))
      "False"
      ("value" ("value-repr" "0" "2" "8")))
    ("data-info"
      "std/core/types/tuple3"
      ("10035" "10036" "10037")
      (("con-info"
          "std/core/types/Tuple3"
          (("fst" ("tvar" "10035"))
            ("snd" ("tvar" "10036"))
            ("thd" ("tvar" "10037")))
          "nothing"
          ("value-repr" "0" "3" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8")))
    ("data-info"
      "std/core/types/tuple4"
      ("10038" "10039" "10040" "10041")
      (("con-info"
          "std/core/types/Tuple4"
          (("fst" ("tvar" "10038"))
            ("snd" ("tvar" "10039"))
            ("thd" ("tvar" "10040"))
            ("field4" ("tvar" "10041")))
          "nothing"
          ("value-repr" "0" "4" "8")))
      "False"
      "normal")
    ("data-info"
      "std/core/types/tuple5"
      ("10042" "10043" "10044" "10045" "10046")
      (("con-info"
          "std/core/types/Tuple5"
          (("fst" ("tvar" "10042"))
            ("snd" ("tvar" "10043"))
            ("thd" ("tvar" "10044"))
            ("field4" ("tvar" "10045"))
            ("field5" ("tvar" "10046")))
          "nothing"
          ("value-repr" "0" "5" "8")))
      "False"
      "normal")
    ("data-info" "std/core/ui" () () "False" "normal")
    ("data-info"
      "std/core/types/unit"
      ()
      (("con-info"
          "std/core/types/Unit"
          ()
          "nothing"
          ("value-repr" "0" "0" "0")))
      "False"
      ("value" ("value-repr" "1" "0" "1")))
    ("data-info" "std/core/types/vector" ("10047") () "False" "normal")
    ("data-info" "std/core/types/void" () () "False" "normal")
    ("data-info" "std/core/types/write" ("10031") () "False" "normal")
    ("data-info" "std/core/hnd/yield-info" () () "False" "normal")
    ("data-info"
      "std/core/hnd/yld"
      ("10026" "10027" "10028")
      (("con-info" "std/core/hnd/Pure" () "nothing" ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/hnd/YieldingFinal"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/hnd/Yielding"
          ()
          "nothing"
          ("value-repr" "0" "1" "8"))
        ("con-info"
          "std/core/hnd/Yield"
          (("clause"
              ("fun"
                ((""
                    ("fun"
                      ((""
                          ("tapp"
                            ("tcon" "std/core/hnd/resume-result")
                            ("tvar" "10029")
                            ("tvar" "10028"))))
                      ("tvar" "10026")
                      ("tvar" "10028"))))
                ("tvar" "10026")
                ("tvar" "10028")))
            ("cont"
              ("fun"
                ((""
                    ("fun"
                      ()
                      ("tcon" "std/core/types/total")
                      ("tvar" "10029"))))
                ("tvar" "10026")
                ("tvar" "10027"))))
          "nothing"
          ("value-repr" "0" "3" "8")))
      "False"
      ("value" ("value-repr" "0" "3" "8"))))
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
                      ("std/core/types/Cons"
                        ("fun"
                          (("head" ("tvar" "51"))
                            ("tail"
                              ("tapp"
                                ("tcon" "std/core/types/list")
                                ("tvar" "51"))))
                          ("tcon" "std/core/types/total")
                          ("tapp"
                            ("tcon" "std/core/types/list")
                            ("tvar" "51"))))
                      (("pat-var" ("x" ("tvar" "51")) "pat-wild")
                        ("pat-var"
                          ("xx"
                            ("tapp"
                              ("tcon" "std/core/types/list")
                              ("tvar" "51")))
                          "pat-wild"))
                      ("as-cons"
                        "std/core/types/list"
                        "as-list"
                        ("value-repr" "0" "2" "8")
                        "std/core/types/Nil"
                        "none"
                        "2")
                      (("tvar" "51")
                        ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))
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
                      ("std/core/types/Nil"
                        ("tapp" ("tcon" "std/core/types/list") ("tvar" "51")))
                      ()
                      ("singleton"
                        "std/core/types/list"
                        "as-list"
                        ("value-repr" "0" "0" "0")
                        "1")
                      ()
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
