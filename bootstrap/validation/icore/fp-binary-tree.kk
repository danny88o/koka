
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Bin` constructor of the `:tree` type.
pub fip fun is-bin : forall<a> (^ tree : bootstrap/validation/example/fp-binary-tree/tree<a>) -> bool
  = forall<a> fn(tree: bootstrap/validation/example/fp-binary-tree/tree<a>){
    (match (tree) {
      (bootstrap/validation/example/fp-binary-tree/Bin(_, _) : bootstrap/validation/example/fp-binary-tree/tree<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Tip` constructor of the `:tree` type.
pub fip fun is-tip : forall<a> (^ tree : bootstrap/validation/example/fp-binary-tree/tree<a>) -> bool
  = forall<a> fn(tree: bootstrap/validation/example/fp-binary-tree/tree<a>){
    (match (tree) {
      (bootstrap/validation/example/fp-binary-tree/Tip(_) : bootstrap/validation/example/fp-binary-tree/tree<a> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `Top` constructor of the `:tzipper` type.
pub fip fun is-top : forall<a,b> (^ tzipper : bootstrap/validation/example/fp-binary-tree/tzipper<a,b>) -> bool
  = forall<a,b> fn(tzipper: bootstrap/validation/example/fp-binary-tree/tzipper<a,b>){
    (match (tzipper) {
      (bootstrap/validation/example/fp-binary-tree/Top() : (bootstrap/validation/example/fp-binary-tree/tzipper<a,b>) )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `BinL` constructor of the `:tzipper` type.
pub fip fun is-binL : forall<a,b> (^ tzipper : bootstrap/validation/example/fp-binary-tree/tzipper<a,b>) -> bool
  = forall<a,b> fn(tzipper: bootstrap/validation/example/fp-binary-tree/tzipper<a,b>){
    (match (tzipper) {
      (bootstrap/validation/example/fp-binary-tree/BinL(_, _) : bootstrap/validation/example/fp-binary-tree/tzipper<a,b> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
// Automatically generated. Tests for the `BinR` constructor of the `:tzipper` type.
pub fip fun is-binR : forall<a,b> (^ tzipper : bootstrap/validation/example/fp-binary-tree/tzipper<a,b>) -> bool
  = forall<a,b> fn(tzipper: bootstrap/validation/example/fp-binary-tree/tzipper<a,b>){
    (match (tzipper) {
      (bootstrap/validation/example/fp-binary-tree/BinR(_, _) : bootstrap/validation/example/fp-binary-tree/tzipper<a,b> )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    });
  };
pub fip fun app : forall<a,b> (t : bootstrap/validation/example/fp-binary-tree/tree<a>, ^ f : (b) -> a, ctxt : bootstrap/validation/example/fp-binary-tree/tzipper<b,a>) -> div bootstrap/validation/example/fp-binary-tree/tree<a>
  = forall<a,b> fn<div>(t: bootstrap/validation/example/fp-binary-tree/tree<a>, f: (b) -> a, ctxt: bootstrap/validation/example/fp-binary-tree/tzipper<b,a>){
    (match (ctxt) {
      (bootstrap/validation/example/fp-binary-tree/Top() : (bootstrap/validation/example/fp-binary-tree/tzipper<b,a>) )
         -> t;
      (bootstrap/validation/example/fp-binary-tree/BinR((l: bootstrap/validation/example/fp-binary-tree/tree<a>), (up: bootstrap/validation/example/fp-binary-tree/tzipper<b,a>)) : bootstrap/validation/example/fp-binary-tree/tzipper<b,a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-binary-tree/app)((bootstrap/validation/example/fp-binary-tree/Bin(l, t)), (std/core/types/@open(f)), up);
      (@skip bootstrap/validation/example/fp-binary-tree/BinL((up: bootstrap/validation/example/fp-binary-tree/tzipper<b,a>), (r: bootstrap/validation/example/fp-binary-tree/tree<b>)) : bootstrap/validation/example/fp-binary-tree/tzipper<b,a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-binary-tree/down)(r, (std/core/types/@open(f)), (bootstrap/validation/example/fp-binary-tree/BinR(t, up)));
    });
  };
pub fip fun down : forall<a,b> (t : bootstrap/validation/example/fp-binary-tree/tree<a>, ^ f : (a) -> b, ctxt : bootstrap/validation/example/fp-binary-tree/tzipper<a,b>) -> div bootstrap/validation/example/fp-binary-tree/tree<b>
  = forall<a,b> fn<div>(t: bootstrap/validation/example/fp-binary-tree/tree<a>, f: (a) -> b, ctxt: bootstrap/validation/example/fp-binary-tree/tzipper<a,b>){
    (match (t) {
      (bootstrap/validation/example/fp-binary-tree/Bin((l: bootstrap/validation/example/fp-binary-tree/tree<a>), (r: bootstrap/validation/example/fp-binary-tree/tree<a>)) : bootstrap/validation/example/fp-binary-tree/tree<a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-binary-tree/down)(l, (std/core/types/@open(f)), (bootstrap/validation/example/fp-binary-tree/BinL(ctxt, r)));
      (@skip bootstrap/validation/example/fp-binary-tree/Tip((x: a)) : bootstrap/validation/example/fp-binary-tree/tree<a> )
         -> std/core/types/@open(bootstrap/validation/example/fp-binary-tree/app)((bootstrap/validation/example/fp-binary-tree/Tip((std/core/types/@open(f)(x)))), (std/core/types/@open(f)), ctxt);
    });
  };
pub fip fun tmap : forall<a,b> (t : bootstrap/validation/example/fp-binary-tree/tree<a>, ^ f : (a) -> b) -> div bootstrap/validation/example/fp-binary-tree/tree<b>
  = forall<a,b> fn<div>(t: bootstrap/validation/example/fp-binary-tree/tree<a>, f: (a) -> b){
    std/core/types/@open(bootstrap/validation/example/fp-binary-tree/down)(t, (std/core/types/@open(f)), bootstrap/validation/example/fp-binary-tree/Top);
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
    std/core/types/@open(bootstrap/validation/example/fp-binary-tree/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-binary-tree/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-binary-tree/@main/@expr)();
  };

