
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Node` constructor of the `:tree` type.
pub fip fun is-node : (^ tree : bootstrap/validation/example/example-borrow/tree) -> bool
  = fn(tree: bootstrap/validation/example/example-borrow/tree){
    match (tree) {
      (bootstrap/validation/example/example-borrow/Node(_, _, _, _) : bootstrap/validation/example/example-borrow/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/example-borrow/Leaf() : bootstrap/validation/example/example-borrow/tree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:tree` type.
pub fip fun is-leaf : (^ tree : bootstrap/validation/example/example-borrow/tree) -> bool
  = fn(tree: bootstrap/validation/example/example-borrow/tree){
    match (tree) {
      (bootstrap/validation/example/example-borrow/Leaf() : bootstrap/validation/example/example-borrow/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/example-borrow/Node(_, _, _, _) : bootstrap/validation/example/example-borrow/tree )
         -> std/core/types/False;
    };
  };
pub fip fun is-level-one : (^ t : bootstrap/validation/example/example-borrow/tree) -> bool
  = fn(t: bootstrap/validation/example/example-borrow/tree){
    match (t) {
      (bootstrap/validation/example/example-borrow/Node((bootstrap/validation/example/example-borrow/Leaf() : bootstrap/validation/example/example-borrow/tree ), _, _, (bootstrap/validation/example/example-borrow/Leaf() : bootstrap/validation/example/example-borrow/tree )) : bootstrap/validation/example/example-borrow/tree )
         -> std/core/types/True;
      _
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
    std/core/types/@open(bootstrap/validation/example/example-borrow/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/example-borrow/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/example-borrow/@main/@expr)();
  };

