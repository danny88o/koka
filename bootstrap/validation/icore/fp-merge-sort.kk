
/* -----------------
initial
--------------- */
pub fun pad/@copy : (@this : bootstrap/validation/example/fp-merge-sort/pad) -> bootstrap/validation/example/fp-merge-sort/pad
  = fn(@this: bootstrap/validation/example/fp-merge-sort/pad){
    bootstrap/validation/example/fp-merge-sort/Pad;
  };
// Automatically generated. Retrieves the `a` constructor field of the `:unit2` type.
pub fun unit2/a : (^ unit2 : bootstrap/validation/example/fp-merge-sort/unit2) -> bootstrap/validation/example/fp-merge-sort/pad
  = fn(unit2: bootstrap/validation/example/fp-merge-sort/unit2){
    match (unit2) {
      (@skip bootstrap/validation/example/fp-merge-sort/Unit2(((@skip bootstrap/validation/example/fp-merge-sort/Pad() : bootstrap/validation/example/fp-merge-sort/pad ) as @x: bootstrap/validation/example/fp-merge-sort/pad), (@skip bootstrap/validation/example/fp-merge-sort/Pad() : bootstrap/validation/example/fp-merge-sort/pad )) : bootstrap/validation/example/fp-merge-sort/unit2 )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `b` constructor field of the `:unit2` type.
pub fun unit2/b : (^ unit2 : bootstrap/validation/example/fp-merge-sort/unit2) -> bootstrap/validation/example/fp-merge-sort/pad
  = fn(unit2: bootstrap/validation/example/fp-merge-sort/unit2){
    match (unit2) {
      (@skip bootstrap/validation/example/fp-merge-sort/Unit2((@skip bootstrap/validation/example/fp-merge-sort/Pad() : bootstrap/validation/example/fp-merge-sort/pad ), ((@skip bootstrap/validation/example/fp-merge-sort/Pad() : bootstrap/validation/example/fp-merge-sort/pad ) as @x: bootstrap/validation/example/fp-merge-sort/pad)) : bootstrap/validation/example/fp-merge-sort/unit2 )
         -> @x;
    };
  };
pub fun unit2/@copy : (@this : bootstrap/validation/example/fp-merge-sort/unit2, a : ? bootstrap/validation/example/fp-merge-sort/pad, b : ? bootstrap/validation/example/fp-merge-sort/pad) -> bootstrap/validation/example/fp-merge-sort/unit2
  = fn(@this: bootstrap/validation/example/fp-merge-sort/unit2, a: ? bootstrap/validation/example/fp-merge-sort/pad, b: ? bootstrap/validation/example/fp-merge-sort/pad){
    val @uniq-a@81 : bootstrap/validation/example/fp-merge-sort/pad
      = match (a) {
        (std/core/types/@Optional((@uniq-a@82: bootstrap/validation/example/fp-merge-sort/pad)) : ? bootstrap/validation/example/fp-merge-sort/pad )
           -> @uniq-a@82;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-merge-sort/pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/unit2/a)(@this);
      };
    val @uniq-b@89 : bootstrap/validation/example/fp-merge-sort/pad
      = match (b) {
        (std/core/types/@Optional((@uniq-b@90: bootstrap/validation/example/fp-merge-sort/pad)) : ? bootstrap/validation/example/fp-merge-sort/pad )
           -> @uniq-b@90;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-merge-sort/pad )
           -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/unit2/b)(@this);
      };
    bootstrap/validation/example/fp-merge-sort/Unit2(@uniq-a@81, @uniq-b@89);
  };
// Automatically generated. Retrieves the `a` constructor field of the `:sublist` type.
pub fun sublist/a : forall<a> (^ sublist : bootstrap/validation/example/fp-merge-sort/sublist<a>) -> a
  = forall<a> fn(sublist: bootstrap/validation/example/fp-merge-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-merge-sort/SCons((@x: a), _) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> @x;
      (@skip bootstrap/validation/example/fp-merge-sort/STuple((@x: a), _) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> @x;
    });
  };
// Automatically generated. Tests for the `SCons` constructor of the `:sublist` type.
pub fip fun is-scons : forall<a> (^ sublist : bootstrap/validation/example/fp-merge-sort/sublist<a>) -> bool
  = forall<a> fn(sublist: bootstrap/validation/example/fp-merge-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-merge-sort/SCons(_, _) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `STuple` constructor of the `:sublist` type.
pub fip fun is-stuple : forall<a> (^ sublist : bootstrap/validation/example/fp-merge-sort/sublist<a>) -> bool
  = forall<a> fn(sublist: bootstrap/validation/example/fp-merge-sort/sublist<a>){
    (match (sublist) {
      (bootstrap/validation/example/fp-merge-sort/STuple(_, _) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Singleton` constructor of the `:partition` type.
pub fip fun is-singleton : forall<a> (^ partition : bootstrap/validation/example/fp-merge-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-merge-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-merge-sort/Singleton(_, _) : bootstrap/validation/example/fp-merge-sort/partition<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Sublist` constructor of the `:partition` type.
pub fip fun is-sublist : forall<a> (^ partition : bootstrap/validation/example/fp-merge-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-merge-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-merge-sort/Sublist(_, _) : bootstrap/validation/example/fp-merge-sort/partition<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `End` constructor of the `:partition` type.
pub fip fun is-end : forall<a> (^ partition : bootstrap/validation/example/fp-merge-sort/partition<a>) -> bool
  = forall<a> fn(partition: bootstrap/validation/example/fp-merge-sort/partition<a>){
    (match (partition) {
      (bootstrap/validation/example/fp-merge-sort/End() : (bootstrap/validation/example/fp-merge-sort/partition<a>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
pub fip fun reverse-go : forall<a> (c : bootstrap/validation/example/fp-merge-sort/sublist<a>, acc : bootstrap/validation/example/fp-merge-sort/sublist<a>, u : bootstrap/validation/example/fp-merge-sort/unit2) -> bootstrap/validation/example/fp-merge-sort/sublist<a>
  = forall<a> fn(c: bootstrap/validation/example/fp-merge-sort/sublist<a>, acc: bootstrap/validation/example/fp-merge-sort/sublist<a>, u: bootstrap/validation/example/fp-merge-sort/unit2){
    (match (c) {
      (bootstrap/validation/example/fp-merge-sort/SCons((a: a), (cs: bootstrap/validation/example/fp-merge-sort/sublist<a>)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/reverse-go)(cs, (bootstrap/validation/example/fp-merge-sort/SCons(a, acc)), u);
      (@skip bootstrap/validation/example/fp-merge-sort/STuple((a: a), (b: a)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> bootstrap/validation/example/fp-merge-sort/SCons(b, (bootstrap/validation/example/fp-merge-sort/SCons(a, acc)));
    });
  };
pub fip fun reverse-sublist : forall<a> (c : bootstrap/validation/example/fp-merge-sort/sublist<a>) -> bootstrap/validation/example/fp-merge-sort/sublist<a>
  = forall<a> fn(c: bootstrap/validation/example/fp-merge-sort/sublist<a>){
    (match (c) {
      (bootstrap/validation/example/fp-merge-sort/SCons((a: a), (bootstrap/validation/example/fp-merge-sort/SCons((b: a), (c: bootstrap/validation/example/fp-merge-sort/sublist<a>)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/reverse-go)(c, (bootstrap/validation/example/fp-merge-sort/STuple(b, a)), (bootstrap/validation/example/fp-merge-sort/Unit2(bootstrap/validation/example/fp-merge-sort/Pad, bootstrap/validation/example/fp-merge-sort/Pad)));
      (bootstrap/validation/example/fp-merge-sort/SCons((a: a), (@skip bootstrap/validation/example/fp-merge-sort/STuple((b: a), (c: a)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> bootstrap/validation/example/fp-merge-sort/SCons(c, (bootstrap/validation/example/fp-merge-sort/STuple(b, a)));
      (@skip bootstrap/validation/example/fp-merge-sort/STuple((a: a), (b: a)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> bootstrap/validation/example/fp-merge-sort/STuple(b, a);
    });
  };
pub fip fun to-list : forall<a> (c : bootstrap/validation/example/fp-merge-sort/sublist<a>, u : bootstrap/validation/example/fp-merge-sort/unit2) -> list<a>
  = forall<a> fn(c: bootstrap/validation/example/fp-merge-sort/sublist<a>, u: bootstrap/validation/example/fp-merge-sort/unit2){
    (match (c) {
      (bootstrap/validation/example/fp-merge-sort/SCons((a: a), (cs: bootstrap/validation/example/fp-merge-sort/sublist<a>)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/Cons(a, (std/core/types/@open(bootstrap/validation/example/fp-merge-sort/to-list)(cs, u)));
      (@skip bootstrap/validation/example/fp-merge-sort/STuple((a: a), (b: a)) : bootstrap/validation/example/fp-merge-sort/sublist<a> )
         -> std/core/types/Cons(a, (std/core/types/Cons(b, std/core/types/Nil)));
    });
  };
pub fip fun ascending : (a : bootstrap/validation/example/fp-merge-sort/elem, sublist : bootstrap/validation/example/fp-merge-sort/sublist<bootstrap/validation/example/fp-merge-sort/elem>, bs : list<bootstrap/validation/example/fp-merge-sort/elem>, u : bootstrap/validation/example/fp-merge-sort/unit2) -> div bootstrap/validation/example/fp-merge-sort/partition<bootstrap/validation/example/fp-merge-sort/elem>
  = fn<div>(a: bootstrap/validation/example/fp-merge-sort/elem, sublist: bootstrap/validation/example/fp-merge-sort/sublist<bootstrap/validation/example/fp-merge-sort/elem>, bs: list<bootstrap/validation/example/fp-merge-sort/elem>, u: bootstrap/validation/example/fp-merge-sort/unit2){
    match (bs) {
      (std/core/types/Cons((b: (bootstrap/validation/example/fp-merge-sort/elem == 1 int32)), (bs1: list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>)) : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )
         | std/core/types/@open(std/num/int32/(<=))(a, b) -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/ascending)(b, (bootstrap/validation/example/fp-merge-sort/SCons(b, sublist)), bs1, u);
      (bs: (list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>))
         -> bootstrap/validation/example/fp-merge-sort/Singleton((std/core/types/@open(bootstrap/validation/example/fp-merge-sort/reverse-sublist)(sublist)), (std/core/types/@open(bootstrap/validation/example/fp-merge-sort/sequences)(bs)));
    };
  };
pub fip fun sequences : (xs : list<bootstrap/validation/example/fp-merge-sort/elem>) -> div bootstrap/validation/example/fp-merge-sort/partition<bootstrap/validation/example/fp-merge-sort/elem>
  = fn<div>(xs: list<bootstrap/validation/example/fp-merge-sort/elem>){
    match (xs) {
      (std/core/types/Cons((a: (bootstrap/validation/example/fp-merge-sort/elem == 1 int32)), (std/core/types/Cons((b: (bootstrap/validation/example/fp-merge-sort/elem == 1 int32)), (xs1: list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>)) : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )) : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )
         -> (match ((std/core/types/@open(std/num/int32/(>))(a, b))) {
          (std/core/types/True() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/descending)(b, (bootstrap/validation/example/fp-merge-sort/STuple(b, a)), xs1, (bootstrap/validation/example/fp-merge-sort/Unit2(bootstrap/validation/example/fp-merge-sort/Pad, bootstrap/validation/example/fp-merge-sort/Pad)));
          (@skip std/core/types/False() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/ascending)(b, (bootstrap/validation/example/fp-merge-sort/STuple(b, a)), xs1, (bootstrap/validation/example/fp-merge-sort/Unit2(bootstrap/validation/example/fp-merge-sort/Pad, bootstrap/validation/example/fp-merge-sort/Pad)));
        });
      (std/core/types/Cons((a: (bootstrap/validation/example/fp-merge-sort/elem == 1 int32)), (@skip std/core/types/Nil() : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )) : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )
         -> bootstrap/validation/example/fp-merge-sort/Sublist(a, bootstrap/validation/example/fp-merge-sort/End);
      (@skip std/core/types/Nil() : (list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>) )
         -> bootstrap/validation/example/fp-merge-sort/End;
    };
  };
pub fip fun descending : (a : bootstrap/validation/example/fp-merge-sort/elem, sublist : bootstrap/validation/example/fp-merge-sort/sublist<bootstrap/validation/example/fp-merge-sort/elem>, bs : list<bootstrap/validation/example/fp-merge-sort/elem>, u : bootstrap/validation/example/fp-merge-sort/unit2) -> div bootstrap/validation/example/fp-merge-sort/partition<bootstrap/validation/example/fp-merge-sort/elem>
  = fn<div>(a: bootstrap/validation/example/fp-merge-sort/elem, sublist: bootstrap/validation/example/fp-merge-sort/sublist<bootstrap/validation/example/fp-merge-sort/elem>, bs: list<bootstrap/validation/example/fp-merge-sort/elem>, u: bootstrap/validation/example/fp-merge-sort/unit2){
    match (bs) {
      (std/core/types/Cons((b: (bootstrap/validation/example/fp-merge-sort/elem == 1 int32)), (bs1: list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>)) : list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)> )
         | std/core/types/@open(std/num/int32/(>))(a, b) -> std/core/types/@open(bootstrap/validation/example/fp-merge-sort/descending)(b, (bootstrap/validation/example/fp-merge-sort/SCons(b, sublist)), bs1, u);
      (bs: (list<(bootstrap/validation/example/fp-merge-sort/elem == 1 int32)>))
         -> bootstrap/validation/example/fp-merge-sort/Singleton(sublist, (std/core/types/@open(bootstrap/validation/example/fp-merge-sort/sequences)(bs)));
    };
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
    std/core/types/@open(bootstrap/validation/example/fp-merge-sort/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-merge-sort/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-merge-sort/@main/@expr)();
  };

