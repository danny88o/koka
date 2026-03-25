
/* -----------------
initial
--------------- */
pub fun pad/@copy : (@this : bootstrap/validation/example/fp-quick-sort/pad) -> bootstrap/validation/example/fp-quick-sort/pad
  = fn(@this: bootstrap/validation/example/fp-quick-sort/pad){
    bootstrap/validation/example/fp-quick-sort/Pad;
  };
// Automatically generated. Retrieves the `a` constructor field of the `:unit2` type.
pub fun unit2/a : (^ unit2 : bootstrap/validation/example/fp-quick-sort/unit2) -> bootstrap/validation/example/fp-quick-sort/pad
  = fn(unit2: bootstrap/validation/example/fp-quick-sort/unit2){
    match (unit2) {
      (@skip bootstrap/validation/example/fp-quick-sort/Unit2(((@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad ) as @x: bootstrap/validation/example/fp-quick-sort/pad), (@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad )) : bootstrap/validation/example/fp-quick-sort/unit2 )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `b` constructor field of the `:unit2` type.
pub fun unit2/b : (^ unit2 : bootstrap/validation/example/fp-quick-sort/unit2) -> bootstrap/validation/example/fp-quick-sort/pad
  = fn(unit2: bootstrap/validation/example/fp-quick-sort/unit2){
    match (unit2) {
      (@skip bootstrap/validation/example/fp-quick-sort/Unit2((@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad ), ((@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad ) as @x: bootstrap/validation/example/fp-quick-sort/pad)) : bootstrap/validation/example/fp-quick-sort/unit2 )
         -> @x;
    };
  };
pub fun unit2/@copy : (@this : bootstrap/validation/example/fp-quick-sort/unit2, a : ? bootstrap/validation/example/fp-quick-sort/pad, b : ? bootstrap/validation/example/fp-quick-sort/pad) -> bootstrap/validation/example/fp-quick-sort/unit2
  = fn(@this: bootstrap/validation/example/fp-quick-sort/unit2, a: ? bootstrap/validation/example/fp-quick-sort/pad, b: ? bootstrap/validation/example/fp-quick-sort/pad){
    val @uniq-a@118 : bootstrap/validation/example/fp-quick-sort/pad
      = match (a) {
        (std/core/types/@Optional((@uniq-a@119: bootstrap/validation/example/fp-quick-sort/pad)) : ? bootstrap/validation/example/fp-quick-sort/pad )
           -> @uniq-a@119;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-quick-sort/pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/unit2/a)(@this);
      };
    val @uniq-b@126 : bootstrap/validation/example/fp-quick-sort/pad
      = match (b) {
        (std/core/types/@Optional((@uniq-b@127: bootstrap/validation/example/fp-quick-sort/pad)) : ? bootstrap/validation/example/fp-quick-sort/pad )
           -> @uniq-b@127;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-quick-sort/pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/unit2/b)(@this);
      };
    bootstrap/validation/example/fp-quick-sort/Unit2(@uniq-a@118, @uniq-b@126);
  };
// Automatically generated. Tests for the `Nothing2` constructor of the `:maybe2` type.
pub fip fun is-nothing2 : forall<a> (^ maybe2 : bootstrap/validation/example/fp-quick-sort/maybe2<a>) -> bool
  = forall<a> fn(maybe2: bootstrap/validation/example/fp-quick-sort/maybe2<a>){
    (match (maybe2) {
      (bootstrap/validation/example/fp-quick-sort/Nothing2() : (bootstrap/validation/example/fp-quick-sort/maybe2<a>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Just2` constructor of the `:maybe2` type.
pub fip fun is-just2 : forall<a> (^ maybe2 : bootstrap/validation/example/fp-quick-sort/maybe2<a>) -> bool
  = forall<a> fn(maybe2: bootstrap/validation/example/fp-quick-sort/maybe2<a>){
    (match (maybe2) {
      (bootstrap/validation/example/fp-quick-sort/Just2(_, (@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad )) : bootstrap/validation/example/fp-quick-sort/maybe2<a> )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-quick-sort/Nothing2() : (bootstrap/validation/example/fp-quick-sort/maybe2<a>) )
         -> std/core/types/False;
    });
  };
// Automatically generated. Retrieves the `a` constructor field of the `:sublist` type.
pub fun sublist/a : forall<a> (^ sublist : bootstrap/validation/example/fp-quick-sort/sublist<a>) -> a
  = forall<a> fn(sublist: bootstrap/validation/example/fp-quick-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-quick-sort/SCons((@x: a), _) : bootstrap/validation/example/fp-quick-sort/sublist<a> )
         -> @x;
      (@skip bootstrap/validation/example/fp-quick-sort/STuple((@x: a), _) : bootstrap/validation/example/fp-quick-sort/sublist<a> )
         -> @x;
    });
  };
// Automatically generated. Tests for the `SCons` constructor of the `:sublist` type.
pub fip fun is-scons : forall<a> (^ sublist : bootstrap/validation/example/fp-quick-sort/sublist<a>) -> bool
  = forall<a> fn(sublist: bootstrap/validation/example/fp-quick-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-quick-sort/SCons(_, _) : bootstrap/validation/example/fp-quick-sort/sublist<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `STuple` constructor of the `:sublist` type.
pub fip fun is-stuple : forall<a> (^ sublist : bootstrap/validation/example/fp-quick-sort/sublist<a>) -> bool
  = forall<a> fn(sublist: bootstrap/validation/example/fp-quick-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-quick-sort/STuple(_, _) : bootstrap/validation/example/fp-quick-sort/sublist<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Sublist` constructor of the `:partition` type.
pub fip fun is-sublist : forall<a> (^ partition : bootstrap/validation/example/fp-quick-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-quick-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-quick-sort/Sublist(_, _) : bootstrap/validation/example/fp-quick-sort/partition<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Singleton` constructor of the `:partition` type.
pub fip fun is-singleton : forall<a> (^ partition : bootstrap/validation/example/fp-quick-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-quick-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-quick-sort/Singleton(_, _) : bootstrap/validation/example/fp-quick-sort/partition<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `End` constructor of the `:partition` type.
pub fip fun is-end : forall<a> (^ partition : bootstrap/validation/example/fp-quick-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-quick-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-quick-sort/End() : (bootstrap/validation/example/fp-quick-sort/partition<a>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `MkLo` constructor of the `:accum` type.
pub fip fun is-mkLo : forall<a> (^ accum : bootstrap/validation/example/fp-quick-sort/accum<a>) -> bool
  = forall<a> fn(accum: bootstrap/validation/example/fp-quick-sort/accum<a>){
    (match (accum) {
      (bootstrap/validation/example/fp-quick-sort/MkLo(_, _) : bootstrap/validation/example/fp-quick-sort/accum<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `MkHi` constructor of the `:accum` type.
pub fip fun is-mkHi : forall<a> (^ accum : bootstrap/validation/example/fp-quick-sort/accum<a>) -> bool
  = forall<a> fn(accum: bootstrap/validation/example/fp-quick-sort/accum<a>){
    (match (accum) {
      (bootstrap/validation/example/fp-quick-sort/MkHi(_, _) : bootstrap/validation/example/fp-quick-sort/accum<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Done` constructor of the `:accum` type.
pub fip fun is-done : forall<a> (^ accum : bootstrap/validation/example/fp-quick-sort/accum<a>) -> bool
  = forall<a> fn(accum: bootstrap/validation/example/fp-quick-sort/accum<a>){
    (match (accum) {
      (bootstrap/validation/example/fp-quick-sort/Done() : (bootstrap/validation/example/fp-quick-sort/accum<a>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
pub fip fun split-app2 : (k : bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, lo : list<bootstrap/validation/example/fp-quick-sort/elem>, hi : bootstrap/validation/example/fp-quick-sort/sublist<bootstrap/validation/example/fp-quick-sort/elem>, b : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u : bootstrap/validation/example/fp-quick-sort/unit2) -> (list<bootstrap/validation/example/fp-quick-sort/elem>, bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>)
  = fn(k: bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, lo: list<bootstrap/validation/example/fp-quick-sort/elem>, hi: bootstrap/validation/example/fp-quick-sort/sublist<bootstrap/validation/example/fp-quick-sort/elem>, b: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u: bootstrap/validation/example/fp-quick-sort/unit2){
    match (k) {
      (bootstrap/validation/example/fp-quick-sort/MkLo((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (k: bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app2)(k, (std/core/types/Cons(x, lo)), hi, b, u);
      (bootstrap/validation/example/fp-quick-sort/MkHi((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (k: bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app2)(k, lo, (bootstrap/validation/example/fp-quick-sort/SCons(x, hi)), b, u);
      (@skip bootstrap/validation/example/fp-quick-sort/Done() : (bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
         -> std/core/types/Tuple2(lo, (bootstrap/validation/example/fp-quick-sort/Sublist(hi, b)));
    };
  };
pub fip fun split-app1 : (k : bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, lo : list<bootstrap/validation/example/fp-quick-sort/elem>, hi : bootstrap/validation/example/fp-quick-sort/maybe2<bootstrap/validation/example/fp-quick-sort/elem>, b : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>) -> div (list<bootstrap/validation/example/fp-quick-sort/elem>, bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>)
  = fn<div>(k: bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, lo: list<bootstrap/validation/example/fp-quick-sort/elem>, hi: bootstrap/validation/example/fp-quick-sort/maybe2<bootstrap/validation/example/fp-quick-sort/elem>, b: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>){
    match (k) {
      (bootstrap/validation/example/fp-quick-sort/MkLo((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (k: bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app1)(k, (std/core/types/Cons(x, lo)), hi, b);
      (bootstrap/validation/example/fp-quick-sort/MkHi((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (k: bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> (match (hi) {
          (bootstrap/validation/example/fp-quick-sort/Nothing2() : (bootstrap/validation/example/fp-quick-sort/maybe2<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app1)(k, lo, (bootstrap/validation/example/fp-quick-sort/Just2(x, bootstrap/validation/example/fp-quick-sort/Pad)), b);
          (@skip bootstrap/validation/example/fp-quick-sort/Just2((y: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad )) : bootstrap/validation/example/fp-quick-sort/maybe2<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app2)(k, lo, (bootstrap/validation/example/fp-quick-sort/STuple(y, x)), b, (bootstrap/validation/example/fp-quick-sort/Unit2(bootstrap/validation/example/fp-quick-sort/Pad, bootstrap/validation/example/fp-quick-sort/Pad)));
        });
      (@skip bootstrap/validation/example/fp-quick-sort/Done() : (bootstrap/validation/example/fp-quick-sort/accum<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
         -> (match (hi) {
          (bootstrap/validation/example/fp-quick-sort/Just2((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (@skip bootstrap/validation/example/fp-quick-sort/Pad() : bootstrap/validation/example/fp-quick-sort/pad )) : bootstrap/validation/example/fp-quick-sort/maybe2<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
             -> std/core/types/Tuple2(lo, (bootstrap/validation/example/fp-quick-sort/Singleton(x, b)));
          (@skip bootstrap/validation/example/fp-quick-sort/Nothing2() : (bootstrap/validation/example/fp-quick-sort/maybe2<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
             -> std/core/types/Tuple2(lo, b);
        });
    };
  };
pub fip fun split-list : (p : bootstrap/validation/example/fp-quick-sort/elem, xs : list<bootstrap/validation/example/fp-quick-sort/elem>, k : bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, b : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u : bootstrap/validation/example/fp-quick-sort/unit2) -> div (list<bootstrap/validation/example/fp-quick-sort/elem>, bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>)
  = fn<div>(p: bootstrap/validation/example/fp-quick-sort/elem, xs: list<bootstrap/validation/example/fp-quick-sort/elem>, k: bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, b: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u: bootstrap/validation/example/fp-quick-sort/unit2){
    match (xs) {
      (std/core/types/Cons((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (xx: list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> (match ((std/core/types/@open(std/num/int32/(<))(x, p))) {
          (std/core/types/True() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-list)(p, xx, (bootstrap/validation/example/fp-quick-sort/MkLo(x, k)), b, u);
          (@skip std/core/types/False() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-list)(p, xx, (bootstrap/validation/example/fp-quick-sort/MkHi(x, k)), b, u);
        });
      (@skip std/core/types/Nil() : (list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-app1)(k, std/core/types/Nil, bootstrap/validation/example/fp-quick-sort/Nothing2, b))) {
          (@skip std/core/types/Tuple2((lo: list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>), (hi: bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : (list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>, bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
             -> std/core/types/Tuple2(lo, (bootstrap/validation/example/fp-quick-sort/Singleton(p, hi)));
        });
    };
  };
pub fip fun split-sublist : (p : bootstrap/validation/example/fp-quick-sort/elem, xs : bootstrap/validation/example/fp-quick-sort/sublist<bootstrap/validation/example/fp-quick-sort/elem>, k : bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, b : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u : bootstrap/validation/example/fp-quick-sort/unit2, u1 : bootstrap/validation/example/fp-quick-sort/unit2) -> div (list<bootstrap/validation/example/fp-quick-sort/elem>, bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>)
  = fn<div>(p: bootstrap/validation/example/fp-quick-sort/elem, xs: bootstrap/validation/example/fp-quick-sort/sublist<bootstrap/validation/example/fp-quick-sort/elem>, k: bootstrap/validation/example/fp-quick-sort/accum<bootstrap/validation/example/fp-quick-sort/elem>, b: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>, u: bootstrap/validation/example/fp-quick-sort/unit2, u1: bootstrap/validation/example/fp-quick-sort/unit2){
    match (xs) {
      (bootstrap/validation/example/fp-quick-sort/SCons((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (xx: bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> (match ((std/core/types/@open(std/num/int32/(<))(x, p))) {
          (std/core/types/True() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-sublist)(p, xx, (bootstrap/validation/example/fp-quick-sort/MkLo(x, k)), b, u, u1);
          (@skip std/core/types/False() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-sublist)(p, xx, (bootstrap/validation/example/fp-quick-sort/MkHi(x, k)), b, u, u1);
        });
      (@skip bootstrap/validation/example/fp-quick-sort/STuple((x: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (y: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32))) : bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-list)(p, (std/core/types/Cons(x, (std/core/types/Cons(y, std/core/types/Nil)))), k, b, u);
    };
  };
pub fip fun quicksort-app : (bdl : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>) -> div list<bootstrap/validation/example/fp-quick-sort/elem>
  = fn<div>(bdl: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>){
    match (bdl) {
      (bootstrap/validation/example/fp-quick-sort/Singleton((p: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (b: bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> std/core/types/Cons(p, (std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-app)(b)));
      (bootstrap/validation/example/fp-quick-sort/Sublist((xs: bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>), (bdl': bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> (match (xs) {
          (bootstrap/validation/example/fp-quick-sort/SCons((p: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (xx: bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-sublist)(p, xx, bootstrap/validation/example/fp-quick-sort/Done, bdl', (bootstrap/validation/example/fp-quick-sort/Unit2(bootstrap/validation/example/fp-quick-sort/Pad, bootstrap/validation/example/fp-quick-sort/Pad)), (bootstrap/validation/example/fp-quick-sort/Unit2(bootstrap/validation/example/fp-quick-sort/Pad, bootstrap/validation/example/fp-quick-sort/Pad))))) {
              (@skip std/core/types/Tuple2((lo: list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>), (hi: bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : (list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>, bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
                 -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-go)(lo, hi);
            });
          (@skip bootstrap/validation/example/fp-quick-sort/STuple((a: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (b: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32))) : bootstrap/validation/example/fp-quick-sort/sublist<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
             -> (match ((std/core/types/@open(std/num/int32/(<=))(a, b))) {
              (std/core/types/True() : bool )
                 -> std/core/types/Cons(a, (std/core/types/Cons(b, (std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-app)(bdl')))));
              (@skip std/core/types/False() : bool )
                 -> std/core/types/Cons(b, (std/core/types/Cons(a, (std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-app)(bdl')))));
            });
        });
      (@skip bootstrap/validation/example/fp-quick-sort/End() : (bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
         -> std/core/types/Nil;
    };
  };
pub fip fun quicksort-go : (xs : list<bootstrap/validation/example/fp-quick-sort/elem>, b : bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>) -> div list<bootstrap/validation/example/fp-quick-sort/elem>
  = fn<div>(xs: list<bootstrap/validation/example/fp-quick-sort/elem>, b: bootstrap/validation/example/fp-quick-sort/partition<bootstrap/validation/example/fp-quick-sort/elem>){
    match (xs) {
      (std/core/types/Cons((p: (bootstrap/validation/example/fp-quick-sort/elem == 1 int32)), (xx: list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)> )
         -> (match ((std/core/types/@open(bootstrap/validation/example/fp-quick-sort/split-list)(p, xx, bootstrap/validation/example/fp-quick-sort/Done, b, (bootstrap/validation/example/fp-quick-sort/Unit2(bootstrap/validation/example/fp-quick-sort/Pad, bootstrap/validation/example/fp-quick-sort/Pad))))) {
          (@skip std/core/types/Tuple2((lo: list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>), (hi: bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>)) : (list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>, bootstrap/validation/example/fp-quick-sort/partition<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
             -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-go)(lo, hi);
        });
      (@skip std/core/types/Nil() : (list<(bootstrap/validation/example/fp-quick-sort/elem == 1 int32)>) )
         -> std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-app)(b);
    };
  };
pub fip fun quicksort : (xs : list<bootstrap/validation/example/fp-quick-sort/elem>) -> div list<bootstrap/validation/example/fp-quick-sort/elem>
  = fn<div>(xs: list<bootstrap/validation/example/fp-quick-sort/elem>){
    std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort-go)(xs, bootstrap/validation/example/fp-quick-sort/End);
  };
pub fun rand-list : (n : int32, seed : int32) -> div list<int32>
  = fn<div>(n: int32, seed: int32){
    val a : int32
      = std/core/types/@open(std/num/int32/int32)(22695477);
    val c : int32
      = std/core/types/@open(std/num/int32/int32)(1);
    val next : int32
      = std/core/types/@open(std/num/int32/(+))((std/core/types/@open(std/num/int32/(*))(a, seed)), c);
    match ((std/core/types/@open(std/num/int32/(>=))(n, (std/core/types/@open(std/num/int32/int32)(0))))) {
      (std/core/types/True() : bool )
         -> std/core/types/Cons(next, (std/core/types/@open(bootstrap/validation/example/fp-quick-sort/rand-list)((std/core/types/@open(std/num/int32/(-))(n, (std/core/types/@open(std/num/int32/int32)(1)))), next)));
      (@skip std/core/types/False() : bool )
         -> std/core/types/Nil;
    };
  };
pub fun test : (n : int32) -> <console/console,div> ()
  = fn<<console/console,div>>(n: int32){
    val xs : list<int32>
      = std/core/types/@open(bootstrap/validation/example/fp-quick-sort/rand-list)(n, (std/core/types/@open(std/num/int32/int32)(13)));
    val x : int32
      = std/num/int32/fold-int32((std/core/types/@open(std/num/int32/(/))((std/core/types/@open(std/num/int32/int32)(10000000)), (std/core/types/@open(std/num/int32/max)(n, (std/core/types/@open(std/num/int32/int32)(1)))))), (std/core/types/@open(std/num/int32/int32)(0)), (fn<<div,console/console>>(i: int32, acc: int32){
          val ys : (list<bootstrap/validation/example/fp-quick-sort/elem>)
                = (std/core/types/@open(bootstrap/validation/example/fp-quick-sort/quicksort)(xs));
          (std/core/types/@open(std/num/int32/(+))(acc, (std/core/types/@open(std/core/maybe/default)((std/core/types/@open(std/core/list/last)(ys)), (std/core/types/@open(std/num/int32/int32)(0))))));
        }));
    std/core/types/@open(std/core/console/string/println)((std/core/types/@open(std/core/types/(++))("total: ", (std/core/types/@open(std/num/int32/show)(x)))));
  };
pub fun main : () -> <console/console,div,ndet> ()
  = fn<<console/console,div,ndet>>(){
    val n : int32
          = std/core/types/@open(std/num/int32/int32)((std/core/types/@open(std/core/maybe/default)((std/core/types/@open(std/core/int/parse-int)((std/core/types/@open(std/core/list/head)((std/core/types/@open(std/os/env/get-args)()), "")), std/core/types/@None)), 100)));
    std/core/types/@open(bootstrap/validation/example/fp-quick-sort/test)(n);
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> <console/console,div,ndet> ()
  = fn<<console/console,div,ndet>>(){
    std/core/types/@open(bootstrap/validation/example/fp-quick-sort/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> <console/console,div,ndet> ()
  = fn<<console/console,div,ndet>>(){
    std/core/types/@open(bootstrap/validation/example/fp-quick-sort/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-quick-sort/@main/@expr)();
  };

