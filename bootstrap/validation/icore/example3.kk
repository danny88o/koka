
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Node` constructor of the `:tree` type.
pub fip fun is-node : (^ tree : bootstrap/validation/example/example3/tree) -> bool
  = fn(tree: bootstrap/validation/example/example3/tree){
    match (tree) {
      (bootstrap/validation/example/example3/Node(_, _, _, _) : bootstrap/validation/example/example3/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/example3/Leaf() : bootstrap/validation/example/example3/tree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:tree` type.
pub fip fun is-leaf : (^ tree : bootstrap/validation/example/example3/tree) -> bool
  = fn(tree: bootstrap/validation/example/example3/tree){
    match (tree) {
      (bootstrap/validation/example/example3/Leaf() : bootstrap/validation/example/example3/tree )
         -> std/core/types/True;
      (@skip bootstrap/validation/example/example3/Node(_, _, _, _) : bootstrap/validation/example/example3/tree )
         -> std/core/types/False;
    };
  };
pub fip fun replace : (t : bootstrap/validation/example/example3/tree, key : int, value : bool) -> bootstrap/validation/example/example3/tree
  = fn(t: bootstrap/validation/example/example3/tree, key: int, value: bool){
    match (t) {
      (bootstrap/validation/example/example3/Node((lchild: bootstrap/validation/example/example3/tree), (k: int), _, (rchild: bootstrap/validation/example/example3/tree)) : bootstrap/validation/example/example3/tree )
         -> (match ((std/core/types/@open(std/core/int/(==))(k, key))) {
          (std/core/types/True() : bool )
             -> bootstrap/validation/example/example3/Node(lchild, k, value, rchild);
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/core/int/(<))(k, key))) {
              (std/core/types/True() : bool )
                 -> bootstrap/validation/example/example3/Node(lchild, k, value, rchild);
              (@skip std/core/types/False() : bool )
                 -> bootstrap/validation/example/example3/Node(lchild, key, value, rchild);
            });
        });
      (@skip bootstrap/validation/example/example3/Leaf() : bootstrap/validation/example/example3/tree )
         -> bootstrap/validation/example/example3/Leaf;
    };
  };
pub fun show : (t : bootstrap/validation/example/example3/tree) -> string
  = fn(t: bootstrap/validation/example/example3/tree){
    match (t) {
      (bootstrap/validation/example/example3/Node((lchild: bootstrap/validation/example/example3/tree), (k: int), (v: bool), (rchild: bootstrap/validation/example/example3/tree)) : bootstrap/validation/example/example3/tree )
         -> std/core/types/@open(std/core/types/(++))("Node(", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(bootstrap/validation/example/example3/show)(lchild)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(std/core/int/show)(k)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(std/core/bool/show)(v)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(bootstrap/validation/example/example3/show)(rchild)), ")")))))))))))))));
      (@skip bootstrap/validation/example/example3/Leaf() : bootstrap/validation/example/example3/tree )
         -> "Leaf";
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
    std/core/types/@open(bootstrap/validation/example/example3/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> ()
  = fn(){
    std/core/types/@open(bootstrap/validation/example/example3/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/validation/example/example3/@main/@expr)();
  };

