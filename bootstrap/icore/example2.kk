
/* -----------------
initial
--------------- */
pub fip fun rev-acc : forall<a> (xs : list<a>, acc : list<a>) -> list<a>
  = forall<a> fn(xs: list<a>, acc: list<a>){
    (match (xs) {
      (std/core/types/Cons((x: a), (xx: list<a>)) : list<a> )
         -> std/core/types/@open(bootstrap/example/example2/rev-acc)(xx, (std/core/types/Cons(x, acc)));
      (@skip std/core/types/Nil() : (list<a>) )
         -> acc;
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
    std/core/types/@open(bootstrap/example/example2/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/example/example2/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/example/example2/@main/@expr)();
  };

[6n