
/* -----------------
initial
--------------- */
// Automatically generated. Retrieves the `a` constructor field of the `:reuse3` type.
pub fun reuse3/a : (^ reuse3 : bootstrap/validation/example/fp-finger-trees/reuse3) -> pad
  = fn(reuse3: bootstrap/validation/example/fp-finger-trees/reuse3){
    match (reuse3) {
      (@skip bootstrap/validation/example/fp-finger-trees/Reuse3(((@skip std/core/types/Pad() : pad ) as @x: pad), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/reuse3 )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `b` constructor field of the `:reuse3` type.
pub fun reuse3/b : (^ reuse3 : bootstrap/validation/example/fp-finger-trees/reuse3) -> pad
  = fn(reuse3: bootstrap/validation/example/fp-finger-trees/reuse3){
    match (reuse3) {
      (@skip bootstrap/validation/example/fp-finger-trees/Reuse3((@skip std/core/types/Pad() : pad ), ((@skip std/core/types/Pad() : pad ) as @x: pad), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/reuse3 )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `c` constructor field of the `:reuse3` type.
pub fun reuse3/c : (^ reuse3 : bootstrap/validation/example/fp-finger-trees/reuse3) -> pad
  = fn(reuse3: bootstrap/validation/example/fp-finger-trees/reuse3){
    match (reuse3) {
      (@skip bootstrap/validation/example/fp-finger-trees/Reuse3((@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad ), ((@skip std/core/types/Pad() : pad ) as @x: pad)) : bootstrap/validation/example/fp-finger-trees/reuse3 )
         -> @x;
    };
  };
pub fun reuse3/@copy : (@this : bootstrap/validation/example/fp-finger-trees/reuse3, a : ? pad, b : ? pad, c : ? pad) -> bootstrap/validation/example/fp-finger-trees/reuse3
  = fn(@this: bootstrap/validation/example/fp-finger-trees/reuse3, a: ? pad, b: ? pad, c: ? pad){
    val @uniq-a@136 : pad
      = match (a) {
        (std/core/types/@Optional((@uniq-a@137: pad)) : ? pad )
           -> @uniq-a@137;
        (@skip std/core/types/@None() : ? pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/reuse3/a)(@this);
      };
    val @uniq-b@144 : pad
      = match (b) {
        (std/core/types/@Optional((@uniq-b@145: pad)) : ? pad )
           -> @uniq-b@145;
        (@skip std/core/types/@None() : ? pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/reuse3/b)(@this);
      };
    val @uniq-c@152 : pad
      = match (c) {
        (std/core/types/@Optional((@uniq-c@153: pad)) : ? pad )
           -> @uniq-c@153;
        (@skip std/core/types/@None() : ? pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/reuse3/c)(@this);
      };
    bootstrap/validation/example/fp-finger-trees/Reuse3(@uniq-a@136, @uniq-b@144, @uniq-c@152);
  };
// Automatically generated. Retrieves the `a` constructor field of the `:afew` type.
pub fun afew/a : forall<a> (^ afew : bootstrap/validation/example/fp-finger-trees/afew<a>) -> a
  = forall<a> fn(afew: bootstrap/validation/example/fp-finger-trees/afew<a>){
    (match (afew) {
      (bootstrap/validation/example/fp-finger-trees/One((@x: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> @x;
      (bootstrap/validation/example/fp-finger-trees/Two((@x: a), _, (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> @x;
      (@skip bootstrap/validation/example/fp-finger-trees/Three((@x: a), _, _) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> @x;
    });
  };
// Automatically generated. Tests for the `One` constructor of the `:afew` type.
pub fip fun is-one : forall<a> (^ afew : bootstrap/validation/example/fp-finger-trees/afew<a>) -> bool
  = forall<a> fn(afew: bootstrap/validation/example/fp-finger-trees/afew<a>){
    (match (afew) {
      (bootstrap/validation/example/fp-finger-trees/One(_, (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Two` constructor of the `:afew` type.
pub fip fun is-two : forall<a> (^ afew : bootstrap/validation/example/fp-finger-trees/afew<a>) -> bool
  = forall<a> fn(afew: bootstrap/validation/example/fp-finger-trees/afew<a>){
    (match (afew) {
      (bootstrap/validation/example/fp-finger-trees/Two(_, _, (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Three` constructor of the `:afew` type.
pub fip fun is-three : forall<a> (^ afew : bootstrap/validation/example/fp-finger-trees/afew<a>) -> bool
  = forall<a> fn(afew: bootstrap/validation/example/fp-finger-trees/afew<a>){
    (match (afew) {
      (bootstrap/validation/example/fp-finger-trees/Three(_, _, _) : bootstrap/validation/example/fp-finger-trees/afew<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Retrieves the `a` constructor field of the `:tuple` type.
pub fun tuple/a : forall<a> (^ tuple : bootstrap/validation/example/fp-finger-trees/tuple<a>) -> a
  = forall<a> fn(tuple: bootstrap/validation/example/fp-finger-trees/tuple<a>){
    (match (tuple) {
      (bootstrap/validation/example/fp-finger-trees/Pair((@x: a), _, (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> @x;
      (@skip bootstrap/validation/example/fp-finger-trees/Triple((@x: a), _, _) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> @x;
    });
  };
// Automatically generated. Retrieves the `b` constructor field of the `:tuple` type.
pub fun tuple/b : forall<a> (^ tuple : bootstrap/validation/example/fp-finger-trees/tuple<a>) -> a
  = forall<a> fn(tuple: bootstrap/validation/example/fp-finger-trees/tuple<a>){
    (match (tuple) {
      (bootstrap/validation/example/fp-finger-trees/Pair(_, (@x: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> @x;
      (@skip bootstrap/validation/example/fp-finger-trees/Triple(_, (@x: a), _) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> @x;
    });
  };
// Automatically generated. Tests for the `Pair` constructor of the `:tuple` type.
pub fip fun is-pair : forall<a> (^ tuple : bootstrap/validation/example/fp-finger-trees/tuple<a>) -> bool
  = forall<a> fn(tuple: bootstrap/validation/example/fp-finger-trees/tuple<a>){
    (match (tuple) {
      (bootstrap/validation/example/fp-finger-trees/Pair(_, _, (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Triple` constructor of the `:tuple` type.
pub fip fun is-triple : forall<a> (^ tuple : bootstrap/validation/example/fp-finger-trees/tuple<a>) -> bool
  = forall<a> fn(tuple: bootstrap/validation/example/fp-finger-trees/tuple<a>){
    (match (tuple) {
      (bootstrap/validation/example/fp-finger-trees/Triple(_, _, _) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Empty` constructor of the `:seq` type.
pub fip fun is-empty : forall<a> (^ seq : bootstrap/validation/example/fp-finger-trees/seq<a>) -> bool
  = forall<a> fn(seq: bootstrap/validation/example/fp-finger-trees/seq<a>){
    (match (seq) {
      (bootstrap/validation/example/fp-finger-trees/Empty() : (bootstrap/validation/example/fp-finger-trees/seq<a>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Unit` constructor of the `:seq` type.
pub fip fun is-unit : forall<a> (^ seq : bootstrap/validation/example/fp-finger-trees/seq<a>) -> bool
  = forall<a> fn(seq: bootstrap/validation/example/fp-finger-trees/seq<a>){
    (match (seq) {
      (bootstrap/validation/example/fp-finger-trees/Unit(_, (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `More0` constructor of the `:seq` type.
pub fip fun is-more0 : forall<a> (^ seq : bootstrap/validation/example/fp-finger-trees/seq<a>) -> bool
  = forall<a> fn(seq: bootstrap/validation/example/fp-finger-trees/seq<a>){
    (match (seq) {
      (bootstrap/validation/example/fp-finger-trees/More0(_, _, _) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `More` constructor of the `:seq` type.
pub fip fun is-more : forall<a> (^ seq : bootstrap/validation/example/fp-finger-trees/seq<a>) -> bool
  = forall<a> fn(seq: bootstrap/validation/example/fp-finger-trees/seq<a>){
    (match (seq) {
      (bootstrap/validation/example/fp-finger-trees/More(_, _, _) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `BNil` constructor of the `:buffer` type.
pub fip fun is-bnil : (^ buffer : bootstrap/validation/example/fp-finger-trees/buffer) -> bool
  = fn(buffer: bootstrap/validation/example/fp-finger-trees/buffer){
    match (buffer) {
      (bootstrap/validation/example/fp-finger-trees/BNil() : bootstrap/validation/example/fp-finger-trees/buffer )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-finger-trees/BCons(_, _, _) : bootstrap/validation/example/fp-finger-trees/buffer )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `BCons` constructor of the `:buffer` type.
pub fip fun is-bcons : (^ buffer : bootstrap/validation/example/fp-finger-trees/buffer) -> bool
  = fn(buffer: bootstrap/validation/example/fp-finger-trees/buffer){
    match (buffer) {
      (bootstrap/validation/example/fp-finger-trees/BCons(_, (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-finger-trees/BNil() : bootstrap/validation/example/fp-finger-trees/buffer )
         -> std/core/types/False;
    };
  };
// Automatically generated. Retrieves the `q` constructor field of the `:bseq` type.
pub fun bseq/q : forall<a> (^ bseq : bootstrap/validation/example/fp-finger-trees/bseq<a>) -> bootstrap/validation/example/fp-finger-trees/buffer
  = forall<a> fn(bseq: bootstrap/validation/example/fp-finger-trees/bseq<a>){
    (match (bseq) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq(_, (@x: bootstrap/validation/example/fp-finger-trees/buffer)) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> @x;
    });
  };
// Automatically generated. Retrieves the `s` constructor field of the `:bseq` type.
pub fun bseq/s : forall<a> (^ bseq : bootstrap/validation/example/fp-finger-trees/bseq<a>) -> bootstrap/validation/example/fp-finger-trees/seq<a>
  = forall<a> fn(bseq: bootstrap/validation/example/fp-finger-trees/bseq<a>){
    (match (bseq) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq((@x: bootstrap/validation/example/fp-finger-trees/seq<a>), _) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> @x;
    });
  };
pub fun bseq/@copy : forall<a> (@this : bootstrap/validation/example/fp-finger-trees/bseq<a>, s : ? (bootstrap/validation/example/fp-finger-trees/seq<a>), q : ? bootstrap/validation/example/fp-finger-trees/buffer) -> bootstrap/validation/example/fp-finger-trees/bseq<a>
  = forall<a> fn(@this: bootstrap/validation/example/fp-finger-trees/bseq<a>, s: ? (bootstrap/validation/example/fp-finger-trees/seq<a>), q: ? bootstrap/validation/example/fp-finger-trees/buffer){
    val @uniq-s@474 : bootstrap/validation/example/fp-finger-trees/seq<a>
      = (match (s) {
        (std/core/types/@Optional((@uniq-s@475: bootstrap/validation/example/fp-finger-trees/seq<a>)) : ? (bootstrap/validation/example/fp-finger-trees/seq<a>) )
           -> @uniq-s@475;
        (@skip std/core/types/@None() : ? (bootstrap/validation/example/fp-finger-trees/seq<a>) )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/bseq/s)(@this);
      });
    val @uniq-q@485 : bootstrap/validation/example/fp-finger-trees/buffer
      = (match (q) {
        (std/core/types/@Optional((@uniq-q@486: bootstrap/validation/example/fp-finger-trees/buffer)) : ? bootstrap/validation/example/fp-finger-trees/buffer )
           -> @uniq-q@486;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-finger-trees/buffer )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/bseq/q)(@this);
      });
    bootstrap/validation/example/fp-finger-trees/BSeq(@uniq-s@474, @uniq-q@485);
  };
// Automatically generated. Retrieves the `field4` constructor field of the `:tuple4` type.
pub fun tuple4/field4 : forall<a,b,c,d> (^ tuple4 : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>) -> d
  = forall<a,b,c,d> fn(tuple4: bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>){
    (match (tuple4) {
      (@skip bootstrap/validation/example/fp-finger-trees/Tuple4(_, _, _, (@x: d)) : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d> )
         -> @x;
    });
  };
// Automatically generated. Retrieves the `fst` constructor field of the `:tuple4` type.
pub fun tuple4/fst : forall<a,b,c,d> (^ tuple4 : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>) -> a
  = forall<a,b,c,d> fn(tuple4: bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>){
    (match (tuple4) {
      (@skip bootstrap/validation/example/fp-finger-trees/Tuple4((@x: a), _, _, _) : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d> )
         -> @x;
    });
  };
// Automatically generated. Retrieves the `snd` constructor field of the `:tuple4` type.
pub fun tuple4/snd : forall<a,b,c,d> (^ tuple4 : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>) -> b
  = forall<a,b,c,d> fn(tuple4: bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>){
    (match (tuple4) {
      (@skip bootstrap/validation/example/fp-finger-trees/Tuple4(_, (@x: b), _, _) : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d> )
         -> @x;
    });
  };
// Automatically generated. Retrieves the `thd` constructor field of the `:tuple4` type.
pub fun tuple4/thd : forall<a,b,c,d> (^ tuple4 : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>) -> c
  = forall<a,b,c,d> fn(tuple4: bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>){
    (match (tuple4) {
      (@skip bootstrap/validation/example/fp-finger-trees/Tuple4(_, _, (@x: c), _) : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d> )
         -> @x;
    });
  };
pub fun tuple4/@copy : forall<a,b,c,d> (@this : bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>, fst : ? a, snd : ? b, thd : ? c, field4 : ? d) -> bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>
  = forall<a,b,c,d> fn(@this: bootstrap/validation/example/fp-finger-trees/tuple4<a,b,c,d>, fst: ? a, snd: ? b, thd: ? c, field4: ? d){
    val @uniq-fst@737 : a
      = (match (fst) {
        (std/core/types/@Optional((@uniq-fst@738: a)) : ? a )
           -> @uniq-fst@738;
        (@skip std/core/types/@None() : ? a )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/tuple4/fst)(@this);
      });
    val @uniq-snd@757 : b
      = (match (snd) {
        (std/core/types/@Optional((@uniq-snd@758: b)) : ? b )
           -> @uniq-snd@758;
        (@skip std/core/types/@None() : ? b )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/tuple4/snd)(@this);
      });
    val @uniq-thd@777 : c
      = (match (thd) {
        (std/core/types/@Optional((@uniq-thd@778: c)) : ? c )
           -> @uniq-thd@778;
        (@skip std/core/types/@None() : ? c )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/tuple4/thd)(@this);
      });
    val @uniq-field4@797 : d
      = (match (field4) {
        (std/core/types/@Optional((@uniq-field4@798: d)) : ? d )
           -> @uniq-field4@798;
        (@skip std/core/types/@None() : ? d )
           -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/tuple4/field4)(@this);
      });
    bootstrap/validation/example/fp-finger-trees/Tuple4(@uniq-fst@737, @uniq-snd@757, @uniq-thd@777, @uniq-field4@797);
  };
pub fun head : forall<a> (^ s : bootstrap/validation/example/fp-finger-trees/seq<a>) -> exn a
  = forall<a> fn<exn>(s: bootstrap/validation/example/fp-finger-trees/seq<a>){
    (match (s) {
      (bootstrap/validation/example/fp-finger-trees/Unit((x: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> x;
      (bootstrap/validation/example/fp-finger-trees/More0((x: a), _, _) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> x;
      (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair((x: a), _, (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), _, _) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> x;
      (bootstrap/validation/example/fp-finger-trees/More((@skip bootstrap/validation/example/fp-finger-trees/Triple((x: a), _, _) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), _, _) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> x;
      _
         -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(37, 3)", "head");
    });
  };
pub fun bhead : forall<a> (^ bs : bootstrap/validation/example/fp-finger-trees/bseq<a>) -> exn a
  = forall<a> fn<exn>(bs: bootstrap/validation/example/fp-finger-trees/bseq<a>){
    (match (bs) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq((s: bootstrap/validation/example/fp-finger-trees/seq<a>), _) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-finger-trees/head)(s);
    });
  };
pub fip fun cons : forall<a> (x : a, u3 : bootstrap/validation/example/fp-finger-trees/reuse3, s : bootstrap/validation/example/fp-finger-trees/seq<a>, b : bootstrap/validation/example/fp-finger-trees/buffer) -> exn (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer)
  = forall<a> fn<exn>(x: a, u3: bootstrap/validation/example/fp-finger-trees/reuse3, s: bootstrap/validation/example/fp-finger-trees/seq<a>, b: bootstrap/validation/example/fp-finger-trees/buffer){
    (match (s) {
      (bootstrap/validation/example/fp-finger-trees/Empty() : (bootstrap/validation/example/fp-finger-trees/seq<a>) )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/Unit(x, std/core/types/Pad, std/core/types/Pad)), b);
      (bootstrap/validation/example/fp-finger-trees/Unit((y: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(x, bootstrap/validation/example/fp-finger-trees/Empty, (bootstrap/validation/example/fp-finger-trees/One(y, std/core/types/Pad, std/core/types/Pad)))), b);
      (bootstrap/validation/example/fp-finger-trees/More0((y: a), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), q, u)), b);
      (@skip bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair((y: a), (z: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Triple(x, y, z)), q, u)), (bootstrap/validation/example/fp-finger-trees/BCons(b, std/core/types/Pad, std/core/types/Pad)));
      (@skip bootstrap/validation/example/fp-finger-trees/More((@skip bootstrap/validation/example/fp-finger-trees/Triple((y: a), (z: a), (w: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> (match (b) {
          (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/cons)((bootstrap/validation/example/fp-finger-trees/Pair(z, w, std/core/types/Pad)), u3, q, b'))) {
              (@skip std/core/types/Tuple2((q': bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (b'': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, bootstrap/validation/example/fp-finger-trees/buffer) )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), q', u)), b'');
            });
          _
             -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(56, 7)", "cons");
        });
    });
  };
pub fip fun bcons : forall<a> (x : a, u3 : bootstrap/validation/example/fp-finger-trees/reuse3, bs : bootstrap/validation/example/fp-finger-trees/bseq<a>) -> exn bootstrap/validation/example/fp-finger-trees/bseq<a>
  = forall<a> fn<exn>(x: a, u3: bootstrap/validation/example/fp-finger-trees/reuse3, bs: bootstrap/validation/example/fp-finger-trees/bseq<a>){
    (match (bs) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq((s: bootstrap/validation/example/fp-finger-trees/seq<a>), (b: bootstrap/validation/example/fp-finger-trees/buffer)) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/cons)(x, u3, s, b))) {
          (@skip std/core/types/Tuple2((s': bootstrap/validation/example/fp-finger-trees/seq<a>), (b': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer) )
             -> bootstrap/validation/example/fp-finger-trees/BSeq(s', b');
        });
    });
  };
pub fip fun more0 : forall<a> (q : bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, u : bootstrap/validation/example/fp-finger-trees/afew<a>, b : bootstrap/validation/example/fp-finger-trees/buffer) -> exn (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer)
  = forall<a> fn<exn>(q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, u: bootstrap/validation/example/fp-finger-trees/afew<a>, b: bootstrap/validation/example/fp-finger-trees/buffer){
    (match (q) {
      (bootstrap/validation/example/fp-finger-trees/Empty() : (bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>) )
         -> (match (u) {
          (bootstrap/validation/example/fp-finger-trees/One((x: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
             -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/Unit(x, std/core/types/Pad, std/core/types/Pad)), b);
          (bootstrap/validation/example/fp-finger-trees/Two((y: a), (z: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )
             -> (match (b) {
              (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(y, bootstrap/validation/example/fp-finger-trees/Empty, (bootstrap/validation/example/fp-finger-trees/One(z, std/core/types/Pad, std/core/types/Pad)))), b');
              _
                 -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(83,25)", "more0");
            });
          (@skip bootstrap/validation/example/fp-finger-trees/Three((y: a), (z: a), (w: a)) : bootstrap/validation/example/fp-finger-trees/afew<a> )
             -> (match (b) {
              (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(y, bootstrap/validation/example/fp-finger-trees/Empty, (bootstrap/validation/example/fp-finger-trees/Two(z, w, std/core/types/Pad)))), b');
              _
                 -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(85,27)", "more0");
            });
        });
      (bootstrap/validation/example/fp-finger-trees/Unit((p: bootstrap/validation/example/fp-finger-trees/tuple<a>), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>> )
         -> (match (p) {
          (bootstrap/validation/example/fp-finger-trees/Pair((x: a), (y: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), bootstrap/validation/example/fp-finger-trees/Empty, u)), b);
          (@skip bootstrap/validation/example/fp-finger-trees/Triple((x: a), (y: a), (z: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> (match (b) {
              (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(x, (bootstrap/validation/example/fp-finger-trees/Unit((bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad)), std/core/types/Pad, std/core/types/Pad)), u)), b');
              _
                 -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(91,11)", "more0");
            });
        });
      (bootstrap/validation/example/fp-finger-trees/More0((p: bootstrap/validation/example/fp-finger-trees/tuple<a>), (q1: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<bootstrap/validation/example/fp-finger-trees/tuple<a>>>), (u1: bootstrap/validation/example/fp-finger-trees/afew<bootstrap/validation/example/fp-finger-trees/tuple<a>>)) : bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>> )
         -> (match (p) {
          (bootstrap/validation/example/fp-finger-trees/Pair((x: a), (y: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/more0)(q1, u1, b))) {
              (@skip std/core/types/Tuple2((q1': bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (b': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, bootstrap/validation/example/fp-finger-trees/buffer) )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), q1', u)), b');
            });
          (@skip bootstrap/validation/example/fp-finger-trees/Triple((x: a), (y: a), (z: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> (match (b) {
              (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(x, (bootstrap/validation/example/fp-finger-trees/More0((bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad)), q1, u1)), u)), b');
              _
                 -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(99,11)", "more0");
            });
        });
      (@skip bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair((p: bootstrap/validation/example/fp-finger-trees/tuple<a>), (y1: bootstrap/validation/example/fp-finger-trees/tuple<a>), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<bootstrap/validation/example/fp-finger-trees/tuple<a>> ), (q1: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<bootstrap/validation/example/fp-finger-trees/tuple<a>>>), (u1: bootstrap/validation/example/fp-finger-trees/afew<bootstrap/validation/example/fp-finger-trees/tuple<a>>)) : bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>> )
         -> (match (p) {
          (bootstrap/validation/example/fp-finger-trees/Pair((x: a), (y: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), (bootstrap/validation/example/fp-finger-trees/More0(y1, q1, u1)), u)), b);
          (@skip bootstrap/validation/example/fp-finger-trees/Triple((x: a), (y: a), (z: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
             -> (match (b) {
              (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(x, (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair((bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad)), y1, std/core/types/Pad)), q1, u1)), u)), b');
              _
                 -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(105,11)", "more0");
            });
        });
      (@skip bootstrap/validation/example/fp-finger-trees/More((@skip bootstrap/validation/example/fp-finger-trees/Triple((p: bootstrap/validation/example/fp-finger-trees/tuple<a>), (y1: bootstrap/validation/example/fp-finger-trees/tuple<a>), (z1: bootstrap/validation/example/fp-finger-trees/tuple<a>)) : bootstrap/validation/example/fp-finger-trees/tuple<bootstrap/validation/example/fp-finger-trees/tuple<a>> ), (q1: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<bootstrap/validation/example/fp-finger-trees/tuple<a>>>), (u1: bootstrap/validation/example/fp-finger-trees/afew<bootstrap/validation/example/fp-finger-trees/tuple<a>>)) : bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>> )
         -> (match (b) {
          (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
             -> (match (p) {
              (bootstrap/validation/example/fp-finger-trees/Pair((x: a), (y: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(x, y, std/core/types/Pad)), (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(y1, z1, std/core/types/Pad)), q1, u1)), u)), b');
              (@skip bootstrap/validation/example/fp-finger-trees/Triple((x: a), (y: a), (z: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(x, (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Triple((bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad)), y1, z1)), q1, u1)), u)), b');
            });
          _
             -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(108, 7)", "more0");
        });
    });
  };
pub fip(1) fun uncons : forall<a> (s : bootstrap/validation/example/fp-finger-trees/seq<a>, b : bootstrap/validation/example/fp-finger-trees/buffer) -> exn bootstrap/validation/example/fp-finger-trees/tuple4<a,bootstrap/validation/example/fp-finger-trees/reuse3,bootstrap/validation/example/fp-finger-trees/seq<a>,bootstrap/validation/example/fp-finger-trees/buffer>
  = forall<a> fn<exn>(s: bootstrap/validation/example/fp-finger-trees/seq<a>, b: bootstrap/validation/example/fp-finger-trees/buffer){
    (match (s) {
      (bootstrap/validation/example/fp-finger-trees/Unit((x: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> bootstrap/validation/example/fp-finger-trees/Tuple4(x, (bootstrap/validation/example/fp-finger-trees/Reuse3(std/core/types/Pad, std/core/types/Pad, std/core/types/Pad)), bootstrap/validation/example/fp-finger-trees/Empty, b);
      (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Triple((x: a), (y: a), (z: a)) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> (match (b) {
          (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
             -> bootstrap/validation/example/fp-finger-trees/Tuple4(x, (bootstrap/validation/example/fp-finger-trees/Reuse3(std/core/types/Pad, std/core/types/Pad, std/core/types/Pad)), (bootstrap/validation/example/fp-finger-trees/More((bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad)), q, u)), b');
          _
             -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(71, 7)", "uncons");
        });
      (bootstrap/validation/example/fp-finger-trees/More((@skip bootstrap/validation/example/fp-finger-trees/Pair((x: a), (y: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/tuple<a> ), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> bootstrap/validation/example/fp-finger-trees/Tuple4(x, (bootstrap/validation/example/fp-finger-trees/Reuse3(std/core/types/Pad, std/core/types/Pad, std/core/types/Pad)), (bootstrap/validation/example/fp-finger-trees/More0(y, q, u)), b);
      (bootstrap/validation/example/fp-finger-trees/More0((x: a), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (u: bootstrap/validation/example/fp-finger-trees/afew<a>)) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/more0)(q, u, b))) {
          (@skip std/core/types/Tuple2((q': bootstrap/validation/example/fp-finger-trees/seq<a>), (b': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer) )
             -> bootstrap/validation/example/fp-finger-trees/Tuple4(x, (bootstrap/validation/example/fp-finger-trees/Reuse3(std/core/types/Pad, std/core/types/Pad, std/core/types/Pad)), q', b');
        });
      _
         -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(68, 3)", "uncons");
    });
  };
pub fip(1) fun buncons : forall<a> (bs : bootstrap/validation/example/fp-finger-trees/bseq<a>) -> exn (a, bootstrap/validation/example/fp-finger-trees/reuse3, bootstrap/validation/example/fp-finger-trees/bseq<a>)
  = forall<a> fn<exn>(bs: bootstrap/validation/example/fp-finger-trees/bseq<a>){
    (match (bs) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq((s: bootstrap/validation/example/fp-finger-trees/seq<a>), (b: bootstrap/validation/example/fp-finger-trees/buffer)) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/uncons)(s, b))) {
          (@skip bootstrap/validation/example/fp-finger-trees/Tuple4((x: a), ((@skip bootstrap/validation/example/fp-finger-trees/Reuse3(_, _, _) : bootstrap/validation/example/fp-finger-trees/reuse3 ) as u3: bootstrap/validation/example/fp-finger-trees/reuse3), (s': bootstrap/validation/example/fp-finger-trees/seq<a>), (b': bootstrap/validation/example/fp-finger-trees/buffer)) : bootstrap/validation/example/fp-finger-trees/tuple4<a,bootstrap/validation/example/fp-finger-trees/reuse3,bootstrap/validation/example/fp-finger-trees/seq<a>,bootstrap/validation/example/fp-finger-trees/buffer> )
             -> std/core/types/Tuple3(x, u3, (bootstrap/validation/example/fp-finger-trees/BSeq(s', b')));
        });
    });
  };
pub fip fun snoc : forall<a> (s : bootstrap/validation/example/fp-finger-trees/seq<a>, b : bootstrap/validation/example/fp-finger-trees/buffer, u3 : bootstrap/validation/example/fp-finger-trees/reuse3, x : a) -> exn (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer)
  = forall<a> fn<exn>(s: bootstrap/validation/example/fp-finger-trees/seq<a>, b: bootstrap/validation/example/fp-finger-trees/buffer, u3: bootstrap/validation/example/fp-finger-trees/reuse3, x: a){
    (match (s) {
      (bootstrap/validation/example/fp-finger-trees/Empty() : (bootstrap/validation/example/fp-finger-trees/seq<a>) )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/Unit(x, std/core/types/Pad, std/core/types/Pad)), b);
      (bootstrap/validation/example/fp-finger-trees/Unit((y: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(y, bootstrap/validation/example/fp-finger-trees/Empty, (bootstrap/validation/example/fp-finger-trees/One(x, std/core/types/Pad, std/core/types/Pad)))), b);
      (bootstrap/validation/example/fp-finger-trees/More0((u: a), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (bootstrap/validation/example/fp-finger-trees/One((y: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(u, q, (bootstrap/validation/example/fp-finger-trees/Two(y, x, std/core/types/Pad)))), (bootstrap/validation/example/fp-finger-trees/BCons(b, std/core/types/Pad, std/core/types/Pad)));
      (bootstrap/validation/example/fp-finger-trees/More0((u: a), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (bootstrap/validation/example/fp-finger-trees/Two((y: a), (z: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(u, q, (bootstrap/validation/example/fp-finger-trees/Three(y, z, x)))), (bootstrap/validation/example/fp-finger-trees/BCons(b, std/core/types/Pad, std/core/types/Pad)));
      (bootstrap/validation/example/fp-finger-trees/More0((u: a), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (@skip bootstrap/validation/example/fp-finger-trees/Three((y: a), (z: a), (w: a)) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> (match (b) {
          (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/snoc)(q, b', u3, (bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad))))) {
              (@skip std/core/types/Tuple2((q': bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (b'': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, bootstrap/validation/example/fp-finger-trees/buffer) )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More0(u, q', (bootstrap/validation/example/fp-finger-trees/Two(w, x, std/core/types/Pad)))), b'');
            });
          _
             -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(127, 7)", "snoc");
        });
      (@skip bootstrap/validation/example/fp-finger-trees/More((u: bootstrap/validation/example/fp-finger-trees/tuple<a>), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (bootstrap/validation/example/fp-finger-trees/One((y: a), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More(u, q, (bootstrap/validation/example/fp-finger-trees/Two(y, x, std/core/types/Pad)))), (bootstrap/validation/example/fp-finger-trees/BCons(b, std/core/types/Pad, std/core/types/Pad)));
      (@skip bootstrap/validation/example/fp-finger-trees/More((u: bootstrap/validation/example/fp-finger-trees/tuple<a>), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (bootstrap/validation/example/fp-finger-trees/Two((y: a), (z: a), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More(u, q, (bootstrap/validation/example/fp-finger-trees/Three(y, z, x)))), (bootstrap/validation/example/fp-finger-trees/BCons(b, std/core/types/Pad, std/core/types/Pad)));
      (@skip bootstrap/validation/example/fp-finger-trees/More((u: bootstrap/validation/example/fp-finger-trees/tuple<a>), (q: bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (@skip bootstrap/validation/example/fp-finger-trees/Three((y: a), (z: a), (w: a)) : bootstrap/validation/example/fp-finger-trees/afew<a> )) : bootstrap/validation/example/fp-finger-trees/seq<a> )
         -> (match (b) {
          (bootstrap/validation/example/fp-finger-trees/BCons((b': bootstrap/validation/example/fp-finger-trees/buffer), (@skip std/core/types/Pad() : pad ), (@skip std/core/types/Pad() : pad )) : bootstrap/validation/example/fp-finger-trees/buffer )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/snoc)(q, b', u3, (bootstrap/validation/example/fp-finger-trees/Pair(y, z, std/core/types/Pad))))) {
              (@skip std/core/types/Tuple2((q': bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>), (b'': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<bootstrap/validation/example/fp-finger-trees/tuple<a>>, bootstrap/validation/example/fp-finger-trees/buffer) )
                 -> std/core/types/Tuple2((bootstrap/validation/example/fp-finger-trees/More(u, q', (bootstrap/validation/example/fp-finger-trees/Two(w, x, std/core/types/Pad)))), b'');
            });
          _
             -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-finger-trees(134, 7)", "snoc");
        });
    });
  };
pub fip fun bsnoc : forall<a> (bs : bootstrap/validation/example/fp-finger-trees/bseq<a>, u3 : bootstrap/validation/example/fp-finger-trees/reuse3, x : a) -> exn bootstrap/validation/example/fp-finger-trees/bseq<a>
  = forall<a> fn<exn>(bs: bootstrap/validation/example/fp-finger-trees/bseq<a>, u3: bootstrap/validation/example/fp-finger-trees/reuse3, x: a){
    (match (bs) {
      (@skip bootstrap/validation/example/fp-finger-trees/BSeq((s: bootstrap/validation/example/fp-finger-trees/seq<a>), (b: bootstrap/validation/example/fp-finger-trees/buffer)) : bootstrap/validation/example/fp-finger-trees/bseq<a> )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-finger-trees/snoc)(s, b, u3, x))) {
          (@skip std/core/types/Tuple2((s': bootstrap/validation/example/fp-finger-trees/seq<a>), (b': bootstrap/validation/example/fp-finger-trees/buffer)) : (bootstrap/validation/example/fp-finger-trees/seq<a>, bootstrap/validation/example/fp-finger-trees/buffer) )
             -> bootstrap/validation/example/fp-finger-trees/BSeq(s', b');
        });
    });
  };
pub fun main : () -> ()
  = fn(){
    std/core/types/Unit;
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-finger-trees/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-finger-trees/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-finger-trees/@main/@expr)();
  };

bootstrap/validation/example/fp-finger-trees.kk(61,12): warning: fip fun buncons: the matched constructor Tuple4/32 is not reused

