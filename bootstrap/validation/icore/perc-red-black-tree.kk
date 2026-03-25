
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Red` constructor of the `:color` type.
pub fip fun is-red : (^ color : bootstrap/validation/example/perc-red-black-tree/color) -> bool
  = fn(color: bootstrap/validation/example/perc-red-black-tree/color){
    match (color) {
      (bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/perc-red-black-tree/Black() : bootstrap/validation/example/perc-red-black-tree/color )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Black` constructor of the `:color` type.
pub fip fun is-black : (^ color : bootstrap/validation/example/perc-red-black-tree/color) -> bool
  = fn(color: bootstrap/validation/example/perc-red-black-tree/color){
    match (color) {
      (bootstrap/validation/example/perc-red-black-tree/Black() : bootstrap/validation/example/perc-red-black-tree/color )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:tree` type.
pub fip fun is-leaf : (^ tree : bootstrap/validation/example/perc-red-black-tree/tree) -> bool
  = fn(tree: bootstrap/validation/example/perc-red-black-tree/tree){
    match (tree) {
      (bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/perc-red-black-tree/Node(_, _, _, _, _) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Node` constructor of the `:tree` type.
pub fip fun is-node : (^ tree : bootstrap/validation/example/perc-red-black-tree/tree) -> bool
  = fn(tree: bootstrap/validation/example/perc-red-black-tree/tree){
    match (tree) {
      (bootstrap/validation/example/perc-red-black-tree/Node(_, _, _, _, _) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree )
         -> std/core/types/False;
    };
  };
pub fip fun tree/is-red : (^ t : bootstrap/validation/example/perc-red-black-tree/tree) -> bool
  = fn(t: bootstrap/validation/example/perc-red-black-tree/tree){
    match (t) {
      (bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), _, _, _, _) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
pub fbip fun bal-left : (l : bootstrap/validation/example/perc-red-black-tree/tree, k : int, v : bool, r : bootstrap/validation/example/perc-red-black-tree/tree) -> bootstrap/validation/example/perc-red-black-tree/tree
  = fn(l: bootstrap/validation/example/perc-red-black-tree/tree, k: int, v: bool, r: bootstrap/validation/example/perc-red-black-tree/tree){
    match (l) {
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (rx: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree ), (ky: int), (vy: bool), (ry: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, lx, kx, vx, rx)), ky, vy, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, ry, k, v, r)));
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (ly: bootstrap/validation/example/perc-red-black-tree/tree), (ky: int), (vy: bool), (bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (rx: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, ly, ky, vy, lx)), kx, vx, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, rx, k, v, r)));
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (rx: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, lx, kx, vx, rx)), k, v, r);
      (@skip bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Leaf;
    };
  };
pub fbip fun bal-right : (l : bootstrap/validation/example/perc-red-black-tree/tree, k : int, v : bool, r : bootstrap/validation/example/perc-red-black-tree/tree) -> bootstrap/validation/example/perc-red-black-tree/tree
  = fn(l: bootstrap/validation/example/perc-red-black-tree/tree, k: int, v: bool, r: bootstrap/validation/example/perc-red-black-tree/tree){
    match (r) {
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (rx: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree ), (ky: int), (vy: bool), (ry: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, k, v, lx)), kx, vx, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, rx, ky, vy, ry)));
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), (ly: bootstrap/validation/example/perc-red-black-tree/tree), (ky: int), (vy: bool), (ry: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, k, v, lx)), kx, vx, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, ly, ky, vy, ry)));
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (lx: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (rx: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, k, v, (bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, lx, kx, vx, rx)));
      (@skip bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Leaf;
    };
  };
pub fbip fun ins : (t : bootstrap/validation/example/perc-red-black-tree/tree, k : int, v : bool) -> bootstrap/validation/example/perc-red-black-tree/tree
  = fn(t: bootstrap/validation/example/perc-red-black-tree/tree, k: int, v: bool){
    match (t) {
      (bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, bootstrap/validation/example/perc-red-black-tree/Leaf, k, v, bootstrap/validation/example/perc-red-black-tree/Leaf);
      (@skip bootstrap/validation/example/perc-red-black-tree/Node((bootstrap/validation/example/perc-red-black-tree/Red() : bootstrap/validation/example/perc-red-black-tree/color ), (l: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (r: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> (match ((std/core/types/@open(std/core/int/(<))(k, kx))) {
          (std/core/types/True() : bool )
             -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, (std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(l, k, v)), kx, vx, r);
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/core/int/(==))(k, kx))) {
              (std/core/types/True() : bool )
                 -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, l, k, v, r);
              (@skip std/core/types/False() : bool )
                 -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Red, l, kx, vx, (std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(r, k, v)));
            });
        });
      (@skip bootstrap/validation/example/perc-red-black-tree/Node((@skip bootstrap/validation/example/perc-red-black-tree/Black() : bootstrap/validation/example/perc-red-black-tree/color ), (l: bootstrap/validation/example/perc-red-black-tree/tree), (kx: int), (vx: bool), (r: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> (match ((std/core/types/@open(std/core/int/(<))(k, kx))) {
          (std/core/types/True() : bool )
             -> (match ((std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/tree/is-red)(l))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/bal-left)((std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(l, k, v)), kx, vx, r);
              (@skip std/core/types/False() : bool )
                 -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, (std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(l, k, v)), kx, vx, r);
            });
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/core/int/(==))(k, kx))) {
              (std/core/types/True() : bool )
                 -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, k, v, r);
              (@skip std/core/types/False() : bool )
                 -> (match ((std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/tree/is-red)(r))) {
                  (std/core/types/True() : bool )
                     -> std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/bal-right)(l, kx, vx, (std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(r, k, v)));
                  (@skip std/core/types/False() : bool )
                     -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, kx, vx, (std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(r, k, v)));
                });
            });
        });
    };
  };
pub fbip fun set-black : (t : bootstrap/validation/example/perc-red-black-tree/tree) -> bootstrap/validation/example/perc-red-black-tree/tree
  = fn(t: bootstrap/validation/example/perc-red-black-tree/tree){
    match (t) {
      (bootstrap/validation/example/perc-red-black-tree/Node(_, (l: bootstrap/validation/example/perc-red-black-tree/tree), (k: int), (v: bool), (r: bootstrap/validation/example/perc-red-black-tree/tree)) : bootstrap/validation/example/perc-red-black-tree/tree )
         -> bootstrap/validation/example/perc-red-black-tree/Node(bootstrap/validation/example/perc-red-black-tree/Black, l, k, v, r);
      ((@skip bootstrap/validation/example/perc-red-black-tree/Leaf() : bootstrap/validation/example/perc-red-black-tree/tree ) as t: bootstrap/validation/example/perc-red-black-tree/tree)
         -> t;
    };
  };
pub fbip fun insert : (t : bootstrap/validation/example/perc-red-black-tree/tree, k : int, v : bool) -> bootstrap/validation/example/perc-red-black-tree/tree
  = fn(t: bootstrap/validation/example/perc-red-black-tree/tree, k: int, v: bool){
    match ((std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/tree/is-red)(t))) {
      (std/core/types/True() : bool )
         -> std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/set-black)((std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(t, k, v)));
      (@skip std/core/types/False() : bool )
         -> std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/ins)(t, k, v);
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
    std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/perc-red-black-tree/@main/@expr)();
  };

bootstrap/validation/example/perc-red-black-tree.kk(19,10): warning: fip fun bal-left: function allocates at most 1 but was declared as allocating nothing

bootstrap/validation/example/perc-red-black-tree.kk(30,10): warning: fip fun bal-right: function allocates at most 1 but was declared as allocating nothing

bootstrap/validation/example/perc-red-black-tree.kk(41,10): warning: fip fun ins: function allocates at most 1 but was declared as allocating nothing

