
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Red` constructor of the `:color` type.
pub fip fun is-red : (^ color : bootstrap/validation/example/fp-red-black-fp/color) -> bool
  = fn(color: bootstrap/validation/example/fp-red-black-fp/color){
    match (color) {
      (bootstrap/validation/example/fp-red-black-fp/Red() : bootstrap/validation/example/fp-red-black-fp/color )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-red-black-fp/Black() : bootstrap/validation/example/fp-red-black-fp/color )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Black` constructor of the `:color` type.
pub fip fun is-black : (^ color : bootstrap/validation/example/fp-red-black-fp/color) -> bool
  = fn(color: bootstrap/validation/example/fp-red-black-fp/color){
    match (color) {
      (bootstrap/validation/example/fp-red-black-fp/Black() : bootstrap/validation/example/fp-red-black-fp/color )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-red-black-fp/Red() : bootstrap/validation/example/fp-red-black-fp/color )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Node` constructor of the `:tree` type.
pub fip fun is-node : (^ tree : bootstrap/validation/example/fp-red-black-fp/tree) -> bool
  = fn(tree: bootstrap/validation/example/fp-red-black-fp/tree){
    match (tree) {
      (bootstrap/validation/example/fp-red-black-fp/Node(_, _, _, _, _) : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-red-black-fp/Leaf() : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:tree` type.
pub fip fun is-leaf : (^ tree : bootstrap/validation/example/fp-red-black-fp/tree) -> bool
  = fn(tree: bootstrap/validation/example/fp-red-black-fp/tree){
    match (tree) {
      (bootstrap/validation/example/fp-red-black-fp/Leaf() : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-red-black-fp/Node(_, _, _, _, _) : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/False;
    };
  };
pub fip fun tree/is-red : (^ t : bootstrap/validation/example/fp-red-black-fp/tree) -> bool
  = fn(t: bootstrap/validation/example/fp-red-black-fp/tree){
    match (t) {
      (bootstrap/validation/example/fp-red-black-fp/Node((bootstrap/validation/example/fp-red-black-fp/Red() : bootstrap/validation/example/fp-red-black-fp/color ), _, _, _, _) : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Done` constructor of the `:accum` type.
pub fip fun is-done : (^ accum : bootstrap/validation/example/fp-red-black-fp/accum) -> bool
  = fn(accum: bootstrap/validation/example/fp-red-black-fp/accum){
    match (accum) {
      (bootstrap/validation/example/fp-red-black-fp/Done() : bootstrap/validation/example/fp-red-black-fp/accum )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `NodeL` constructor of the `:accum` type.
pub fip fun is-nodeL : (^ accum : bootstrap/validation/example/fp-red-black-fp/accum) -> bool
  = fn(accum: bootstrap/validation/example/fp-red-black-fp/accum){
    match (accum) {
      (bootstrap/validation/example/fp-red-black-fp/NodeL(_, _, _, _, _) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `NodeR` constructor of the `:accum` type.
pub fip fun is-nodeR : (^ accum : bootstrap/validation/example/fp-red-black-fp/accum) -> bool
  = fn(accum: bootstrap/validation/example/fp-red-black-fp/accum){
    match (accum) {
      (bootstrap/validation/example/fp-red-black-fp/NodeR(_, _, _, _, _) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
pub fip fun set-black : (t : bootstrap/validation/example/fp-red-black-fp/tree) -> bootstrap/validation/example/fp-red-black-fp/tree
  = fn(t: bootstrap/validation/example/fp-red-black-fp/tree){
    match (t) {
      (bootstrap/validation/example/fp-red-black-fp/Node(_, (l: bootstrap/validation/example/fp-red-black-fp/tree), (k: int32), (v: bool), (r: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/tree )
         -> bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, l, k, v, r);
      ((@skip bootstrap/validation/example/fp-red-black-fp/Leaf() : bootstrap/validation/example/fp-red-black-fp/tree ) as t: bootstrap/validation/example/fp-red-black-fp/tree)
         -> t;
    };
  };
pub fip fun rebuild : (z : bootstrap/validation/example/fp-red-black-fp/accum, t : bootstrap/validation/example/fp-red-black-fp/tree) -> bootstrap/validation/example/fp-red-black-fp/tree
  = fn(z: bootstrap/validation/example/fp-red-black-fp/accum, t: bootstrap/validation/example/fp-red-black-fp/tree){
    match (z) {
      (bootstrap/validation/example/fp-red-black-fp/NodeR((c: bootstrap/validation/example/fp-red-black-fp/color), (l: bootstrap/validation/example/fp-red-black-fp/tree), (k: int32), (v: bool), (z1: bootstrap/validation/example/fp-red-black-fp/accum)) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> bootstrap/validation/example/fp-red-black-fp/rebuild(z1, (bootstrap/validation/example/fp-red-black-fp/Node(c, l, k, v, t)));
      (bootstrap/validation/example/fp-red-black-fp/NodeL((c: bootstrap/validation/example/fp-red-black-fp/color), (z1: bootstrap/validation/example/fp-red-black-fp/accum), (k: int32), (v: bool), (r: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> bootstrap/validation/example/fp-red-black-fp/rebuild(z1, (bootstrap/validation/example/fp-red-black-fp/Node(c, t, k, v, r)));
      (@skip bootstrap/validation/example/fp-red-black-fp/Done() : bootstrap/validation/example/fp-red-black-fp/accum )
         -> t;
    };
  };
pub fip fun balance : (z : bootstrap/validation/example/fp-red-black-fp/accum, t : bootstrap/validation/example/fp-red-black-fp/tree) -> exn bootstrap/validation/example/fp-red-black-fp/tree
  = fn<exn>(z: bootstrap/validation/example/fp-red-black-fp/accum, t: bootstrap/validation/example/fp-red-black-fp/tree){
    match (z) {
      (bootstrap/validation/example/fp-red-black-fp/NodeR((bootstrap/validation/example/fp-red-black-fp/Red() : bootstrap/validation/example/fp-red-black-fp/color ), (l1: bootstrap/validation/example/fp-red-black-fp/tree), (k1: int32), (v1: bool), (z1: bootstrap/validation/example/fp-red-black-fp/accum)) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> (match (z1) {
          (bootstrap/validation/example/fp-red-black-fp/NodeR(_, (l2: bootstrap/validation/example/fp-red-black-fp/tree), (k2: int32), (v2: bool), (z2: bootstrap/validation/example/fp-red-black-fp/accum)) : bootstrap/validation/example/fp-red-black-fp/accum )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/tree/is-red)(l2))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, (std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/set-black)(l2)), k2, v2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, l1, k1, v1, t)))));
              (@skip std/core/types/False() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/rebuild)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, l2, k2, v2, l1)), k1, v1, t)));
            });
          (bootstrap/validation/example/fp-red-black-fp/NodeL(_, (z2: bootstrap/validation/example/fp-red-black-fp/accum), (k2: int32), (v2: bool), (r2: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/accum )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/tree/is-red)(r2))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, l1, k1, v1, t)), k2, v2, (std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/set-black)(r2)))));
              (@skip std/core/types/False() : bool )
                 -> (match (t) {
                  (bootstrap/validation/example/fp-red-black-fp/Node(_, (l: bootstrap/validation/example/fp-red-black-fp/tree), (k: int32), (v: bool), (r: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/tree )
                     -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/rebuild)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, l1, k1, v1, l)), k, v, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, r, k2, v2, r2)))));
                  _
                     -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-red-black-fp(55,14)", "balance");
                });
            });
          (@skip bootstrap/validation/example/fp-red-black-fp/Done() : bootstrap/validation/example/fp-red-black-fp/accum )
             -> bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, l1, k1, v1, t);
        });
      (bootstrap/validation/example/fp-red-black-fp/NodeL((bootstrap/validation/example/fp-red-black-fp/Red() : bootstrap/validation/example/fp-red-black-fp/color ), (z1: bootstrap/validation/example/fp-red-black-fp/accum), (k1: int32), (v1: bool), (r1: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/accum )
         -> (match (z1) {
          (bootstrap/validation/example/fp-red-black-fp/NodeL(_, (z2: bootstrap/validation/example/fp-red-black-fp/accum), (k2: int32), (v2: bool), (r2: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/accum )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/tree/is-red)(r2))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, t, k1, v1, r1)), k2, v2, (std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/set-black)(r2)))));
              (@skip std/core/types/False() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/rebuild)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, t, k1, v1, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, r1, k2, v2, r2)))));
            });
          (bootstrap/validation/example/fp-red-black-fp/NodeR(_, (l2: bootstrap/validation/example/fp-red-black-fp/tree), (k2: int32), (v2: bool), (z2: bootstrap/validation/example/fp-red-black-fp/accum)) : bootstrap/validation/example/fp-red-black-fp/accum )
             -> (match ((std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/tree/is-red)(l2))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, (std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/set-black)(l2)), k2, v2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, t, k1, v1, r1)))));
              (@skip std/core/types/False() : bool )
                 -> (match (t) {
                  (bootstrap/validation/example/fp-red-black-fp/Node(_, (l: bootstrap/validation/example/fp-red-black-fp/tree), (k: int32), (v: bool), (r: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/tree )
                     -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/rebuild)(z2, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, l2, k2, v2, l)), k, v, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, r, k1, v1, r1)))));
                  _
                     -> std/core/types/@open(std/core/exn/error-pattern)("bootstrap/validation/example/fp-red-black-fp(66,14)", "balance");
                });
            });
          (@skip bootstrap/validation/example/fp-red-black-fp/Done() : bootstrap/validation/example/fp-red-black-fp/accum )
             -> bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Black, t, k1, v1, r1);
        });
      (z: bootstrap/validation/example/fp-red-black-fp/accum)
         -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/rebuild)(z, t);
    };
  };
pub fip(1) fun ins : (t : bootstrap/validation/example/fp-red-black-fp/tree, key : int32, v : bool, z : bootstrap/validation/example/fp-red-black-fp/accum) -> exn bootstrap/validation/example/fp-red-black-fp/tree
  = fn<exn>(t: bootstrap/validation/example/fp-red-black-fp/tree, key: int32, v: bool, z: bootstrap/validation/example/fp-red-black-fp/accum){
    match (t) {
      (bootstrap/validation/example/fp-red-black-fp/Node((c: bootstrap/validation/example/fp-red-black-fp/color), (l: bootstrap/validation/example/fp-red-black-fp/tree), (kx: int32), (vx: bool), (r: bootstrap/validation/example/fp-red-black-fp/tree)) : bootstrap/validation/example/fp-red-black-fp/tree )
         -> (match ((std/core/types/@open(std/num/int32/(<))(key, kx))) {
          (std/core/types/True() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/ins)(l, key, v, (bootstrap/validation/example/fp-red-black-fp/NodeL(c, z, kx, vx, r)));
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/num/int32/(>))(key, kx))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/ins)(r, key, v, (bootstrap/validation/example/fp-red-black-fp/NodeR(c, l, kx, vx, z)));
              (@skip std/core/types/False() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z, (bootstrap/validation/example/fp-red-black-fp/Node(c, l, key, v, r)));
            });
        });
      (@skip bootstrap/validation/example/fp-red-black-fp/Leaf() : bootstrap/validation/example/fp-red-black-fp/tree )
         -> std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/balance)(z, (bootstrap/validation/example/fp-red-black-fp/Node(bootstrap/validation/example/fp-red-black-fp/Red, bootstrap/validation/example/fp-red-black-fp/Leaf, key, v, bootstrap/validation/example/fp-red-black-fp/Leaf)));
    };
  };
pub fip(1) fun insert : (t : bootstrap/validation/example/fp-red-black-fp/tree, k : int32, v : bool) -> exn bootstrap/validation/example/fp-red-black-fp/tree
  = fn<exn>(t: bootstrap/validation/example/fp-red-black-fp/tree, k: int32, v: bool){
    std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/ins)(t, k, v, bootstrap/validation/example/fp-red-black-fp/Done);
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
    std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-red-black-fp/@main/@expr)();
  };

