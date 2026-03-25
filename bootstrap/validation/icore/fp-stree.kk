
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Node` constructor of the `:stree` type.
pub fip fun is-node : (^ stree : bootstrap/validation/example/fp-stree/stree) -> bool
  = fn(stree: bootstrap/validation/example/fp-stree/stree){
    match (stree) {
      (bootstrap/validation/example/fp-stree/Node(_, _, _) : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:stree` type.
pub fip fun is-leaf : (^ stree : bootstrap/validation/example/fp-stree/stree) -> bool
  = fn(stree: bootstrap/validation/example/fp-stree/stree){
    match (stree) {
      (bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-stree/Node(_, _, _) : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Root` constructor of the `:szipper` type.
pub fip fun is-root : (^ szipper : bootstrap/validation/example/fp-stree/szipper) -> bool
  = fn(szipper: bootstrap/validation/example/fp-stree/szipper){
    match (szipper) {
      (bootstrap/validation/example/fp-stree/Root() : bootstrap/validation/example/fp-stree/szipper )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `NodeL` constructor of the `:szipper` type.
pub fip fun is-nodeL : (^ szipper : bootstrap/validation/example/fp-stree/szipper) -> bool
  = fn(szipper: bootstrap/validation/example/fp-stree/szipper){
    match (szipper) {
      (bootstrap/validation/example/fp-stree/NodeL(_, _, _) : bootstrap/validation/example/fp-stree/szipper )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `NodeR` constructor of the `:szipper` type.
pub fip fun is-nodeR : (^ szipper : bootstrap/validation/example/fp-stree/szipper) -> bool
  = fn(szipper: bootstrap/validation/example/fp-stree/szipper){
    match (szipper) {
      (bootstrap/validation/example/fp-stree/NodeR(_, _, _) : bootstrap/validation/example/fp-stree/szipper )
         -> std/core/types/True;
      _
         -> std/core/types/False;
    };
  };
// Automatically generated. Retrieves the `left` constructor field of the `:top` type.
pub fun top/left : (^ top : bootstrap/validation/example/fp-stree/top) -> bootstrap/validation/example/fp-stree/stree
  = fn(top: bootstrap/validation/example/fp-stree/top){
    match (top) {
      (@skip bootstrap/validation/example/fp-stree/Top((@x: bootstrap/validation/example/fp-stree/stree), _, _) : bootstrap/validation/example/fp-stree/top )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `right` constructor field of the `:top` type.
pub fun top/right : (^ top : bootstrap/validation/example/fp-stree/top) -> bootstrap/validation/example/fp-stree/stree
  = fn(top: bootstrap/validation/example/fp-stree/top){
    match (top) {
      (@skip bootstrap/validation/example/fp-stree/Top(_, _, (@x: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/top )
         -> @x;
    };
  };
// Automatically generated. Retrieves the `value` constructor field of the `:top` type.
pub fun top/value : (^ top : bootstrap/validation/example/fp-stree/top) -> int
  = fn(top: bootstrap/validation/example/fp-stree/top){
    match (top) {
      (@skip bootstrap/validation/example/fp-stree/Top(_, (@x: int), _) : bootstrap/validation/example/fp-stree/top )
         -> @x;
    };
  };
pub fun top/@copy : (@this : bootstrap/validation/example/fp-stree/top, left : ? bootstrap/validation/example/fp-stree/stree, value : ? int, right : ? bootstrap/validation/example/fp-stree/stree) -> bootstrap/validation/example/fp-stree/top
  = fn(@this: bootstrap/validation/example/fp-stree/top, left: ? bootstrap/validation/example/fp-stree/stree, value: ? int, right: ? bootstrap/validation/example/fp-stree/stree){
    val @uniq-left@118 : bootstrap/validation/example/fp-stree/stree
      = match (left) {
        (std/core/types/@Optional((@uniq-left@119: bootstrap/validation/example/fp-stree/stree)) : ? bootstrap/validation/example/fp-stree/stree )
           -> @uniq-left@119;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-stree/stree )
           -> std/core/types/@open(bootstrap/validation/example/fp-stree/top/left)(@this);
      };
    val @uniq-value@126 : int
      = match (value) {
        (std/core/types/@Optional((@uniq-value@127: int)) : ? int )
           -> @uniq-value@127;
        (@skip std/core/types/@None() : ? int )
           -> std/core/types/@open(bootstrap/validation/example/fp-stree/top/value)(@this);
      };
    val @uniq-right@134 : bootstrap/validation/example/fp-stree/stree
      = match (right) {
        (std/core/types/@Optional((@uniq-right@135: bootstrap/validation/example/fp-stree/stree)) : ? bootstrap/validation/example/fp-stree/stree )
           -> @uniq-right@135;
        (@skip std/core/types/@None() : ? bootstrap/validation/example/fp-stree/stree )
           -> std/core/types/@open(bootstrap/validation/example/fp-stree/top/right)(@this);
      };
    bootstrap/validation/example/fp-stree/Top(@uniq-left@118, @uniq-value@126, @uniq-right@134);
  };
pub fip fun left : (t : bootstrap/validation/example/fp-stree/stree, ctxt : bootstrap/validation/example/fp-stree/szipper) -> (bootstrap/validation/example/fp-stree/stree, bootstrap/validation/example/fp-stree/szipper)
  = fn(t: bootstrap/validation/example/fp-stree/stree, ctxt: bootstrap/validation/example/fp-stree/szipper){
    match (t) {
      (bootstrap/validation/example/fp-stree/Node((l: bootstrap/validation/example/fp-stree/stree), (x: int), (r: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/Tuple2(l, (bootstrap/validation/example/fp-stree/NodeL(ctxt, x, r)));
      (@skip bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/Tuple2(bootstrap/validation/example/fp-stree/Leaf, ctxt);
    };
  };
pub fip fun splay : (top : bootstrap/validation/example/fp-stree/top, ctxt : bootstrap/validation/example/fp-stree/szipper) -> bootstrap/validation/example/fp-stree/stree
  = fn(top: bootstrap/validation/example/fp-stree/top, ctxt: bootstrap/validation/example/fp-stree/szipper){
    match (top) {
      (@skip bootstrap/validation/example/fp-stree/Top((l: bootstrap/validation/example/fp-stree/stree), (x: int), (r: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/top )
         -> (match (ctxt) {
          (bootstrap/validation/example/fp-stree/Root() : bootstrap/validation/example/fp-stree/szipper )
             -> bootstrap/validation/example/fp-stree/Node(l, x, r);
          (bootstrap/validation/example/fp-stree/NodeL((bootstrap/validation/example/fp-stree/Root() : bootstrap/validation/example/fp-stree/szipper ), (y: int), (ry: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper )
             -> bootstrap/validation/example/fp-stree/Node(l, x, (bootstrap/validation/example/fp-stree/Node(r, y, ry)));
          (bootstrap/validation/example/fp-stree/NodeL((bootstrap/validation/example/fp-stree/NodeR((lz: bootstrap/validation/example/fp-stree/stree), (z: int), (up: bootstrap/validation/example/fp-stree/szipper)) : bootstrap/validation/example/fp-stree/szipper ), (y: int), (ry: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper )
             -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top((bootstrap/validation/example/fp-stree/Node(lz, z, l)), x, (bootstrap/validation/example/fp-stree/Node(r, y, ry)))), up);
          (bootstrap/validation/example/fp-stree/NodeL((@skip bootstrap/validation/example/fp-stree/NodeL((up: bootstrap/validation/example/fp-stree/szipper), (z: int), (rz: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper ), (y: int), (ry: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper )
             -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top(l, x, (bootstrap/validation/example/fp-stree/Node(r, y, (bootstrap/validation/example/fp-stree/Node(ry, z, rz)))))), up);
          (@skip bootstrap/validation/example/fp-stree/NodeR((ly: bootstrap/validation/example/fp-stree/stree), (y: int), (bootstrap/validation/example/fp-stree/Root() : bootstrap/validation/example/fp-stree/szipper )) : bootstrap/validation/example/fp-stree/szipper )
             -> bootstrap/validation/example/fp-stree/Node((bootstrap/validation/example/fp-stree/Node(ly, y, l)), x, r);
          (@skip bootstrap/validation/example/fp-stree/NodeR((ly: bootstrap/validation/example/fp-stree/stree), (y: int), (bootstrap/validation/example/fp-stree/NodeL((up: bootstrap/validation/example/fp-stree/szipper), (z: int), (rz: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper )) : bootstrap/validation/example/fp-stree/szipper )
             -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top((bootstrap/validation/example/fp-stree/Node(ly, y, l)), x, (bootstrap/validation/example/fp-stree/Node(r, z, rz)))), up);
          (@skip bootstrap/validation/example/fp-stree/NodeR((ly: bootstrap/validation/example/fp-stree/stree), (y: int), (@skip bootstrap/validation/example/fp-stree/NodeR((lz: bootstrap/validation/example/fp-stree/stree), (z: int), (up: bootstrap/validation/example/fp-stree/szipper)) : bootstrap/validation/example/fp-stree/szipper )) : bootstrap/validation/example/fp-stree/szipper )
             -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top((bootstrap/validation/example/fp-stree/Node((bootstrap/validation/example/fp-stree/Node(lz, z, ly)), y, l)), x, r)), up);
        });
    };
  };
pub fip fun splay-leaf : (ctxt : bootstrap/validation/example/fp-stree/szipper) -> bootstrap/validation/example/fp-stree/stree
  = fn(ctxt: bootstrap/validation/example/fp-stree/szipper){
    match (ctxt) {
      (bootstrap/validation/example/fp-stree/Root() : bootstrap/validation/example/fp-stree/szipper )
         -> bootstrap/validation/example/fp-stree/Leaf;
      (bootstrap/validation/example/fp-stree/NodeL((up: bootstrap/validation/example/fp-stree/szipper), (x: int), (r: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/szipper )
         -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top(bootstrap/validation/example/fp-stree/Leaf, x, r)), up);
      (@skip bootstrap/validation/example/fp-stree/NodeR((l: bootstrap/validation/example/fp-stree/stree), (x: int), (up: bootstrap/validation/example/fp-stree/szipper)) : bootstrap/validation/example/fp-stree/szipper )
         -> std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top(l, x, bootstrap/validation/example/fp-stree/Leaf)), up);
    };
  };
pub fip fun zlookup : (t : bootstrap/validation/example/fp-stree/stree, x : int, ctxt : bootstrap/validation/example/fp-stree/szipper) -> (bool, bootstrap/validation/example/fp-stree/stree)
  = fn(t: bootstrap/validation/example/fp-stree/stree, x: int, ctxt: bootstrap/validation/example/fp-stree/szipper){
    match (t) {
      (bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/Tuple2(std/core/types/False, (std/core/types/@open(bootstrap/validation/example/fp-stree/splay-leaf)(ctxt)));
      (@skip bootstrap/validation/example/fp-stree/Node((l: bootstrap/validation/example/fp-stree/stree), (y: int), (r: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/stree )
         -> (match ((std/core/types/@open(std/core/int/(<))(x, y))) {
          (std/core/types/True() : bool )
             -> std/core/types/@open(bootstrap/validation/example/fp-stree/zlookup)(l, x, (bootstrap/validation/example/fp-stree/NodeL(ctxt, y, r)));
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/core/int/(>))(x, y))) {
              (std/core/types/True() : bool )
                 -> std/core/types/@open(bootstrap/validation/example/fp-stree/zlookup)(r, x, (bootstrap/validation/example/fp-stree/NodeR(l, y, ctxt)));
              (@skip std/core/types/False() : bool )
                 -> std/core/types/Tuple2(std/core/types/True, (std/core/types/@open(bootstrap/validation/example/fp-stree/splay)((bootstrap/validation/example/fp-stree/Top(l, y, r)), ctxt)));
            });
        });
    };
  };
pub fip fun lookup : (t : bootstrap/validation/example/fp-stree/stree, x : int) -> (bool, bootstrap/validation/example/fp-stree/stree)
  = fn(t: bootstrap/validation/example/fp-stree/stree, x: int){
    std/core/types/@open(bootstrap/validation/example/fp-stree/zlookup)(t, x, bootstrap/validation/example/fp-stree/Root);
  };
pub fbip fun smap : (t : bootstrap/validation/example/fp-stree/stree, ^ f : (int) -> int) -> bootstrap/validation/example/fp-stree/stree
  = fn(t: bootstrap/validation/example/fp-stree/stree, f: (int) -> int){
    match (t) {
      (bootstrap/validation/example/fp-stree/Node((l: bootstrap/validation/example/fp-stree/stree), (v: int), (r: bootstrap/validation/example/fp-stree/stree)) : bootstrap/validation/example/fp-stree/stree )
         -> bootstrap/validation/example/fp-stree/Node((std/core/types/@open(bootstrap/validation/example/fp-stree/smap)(l, (std/core/types/@open(f)))), (std/core/types/@open(f)(v)), (std/core/types/@open(bootstrap/validation/example/fp-stree/smap)(r, (std/core/types/@open(f)))));
      (@skip bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> bootstrap/validation/example/fp-stree/Leaf;
    };
  };
pub fip fun fip/is-node : (^ t : bootstrap/validation/example/fp-stree/stree) -> bool
  = fn(t: bootstrap/validation/example/fp-stree/stree){
    match (t) {
      (bootstrap/validation/example/fp-stree/Node(_, _, _) : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/fp-stree/Leaf() : bootstrap/validation/example/fp-stree/stree )
         -> std/core/types/False;
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
    std/core/types/@open(bootstrap/validation/example/fp-stree/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/fp-stree/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/fp-stree/@main/@expr)();
  };

