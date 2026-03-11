
/* -----------------
initial
--------------- */
// Automatically generated. Tests for the `Node` constructor of the `:tree` type.
pub fip fun is-node : (^ tree : bootstrap/example/example4/tree) -> bool
  = fn(tree: bootstrap/example/example4/tree){
    match (tree) {
      (bootstrap/example/example4/Node(_, _, _, _) : bootstrap/example/example4/tree )
         -> std/core/types/True;
      (@skip bootstrap/example/example4/Leaf() : bootstrap/example/example4/tree )
         -> std/core/types/False;
    };
  };
// Automatically generated. Tests for the `Leaf` constructor of the `:tree` type.
pub fip fun is-leaf : (^ tree : bootstrap/example/example4/tree) -> bool
  = fn(tree: bootstrap/example/example4/tree){
    match (tree) {
      (bootstrap/example/example4/Leaf() : bootstrap/example/example4/tree )
         -> std/core/types/True;
      (@skip bootstrap/example/example4/Node(_, _, _, _) : bootstrap/example/example4/tree )
         -> std/core/types/False;
    };
  };
pub fip fun replace : (t : bootstrap/example/example4/tree, key : int, value : bool) -> bootstrap/example/example4/tree
  = fn(t: bootstrap/example/example4/tree, key: int, value: bool){
    match (t) {
      (bootstrap/example/example4/Node((lchild: bootstrap/example/example4/tree), (k: int), _, (rchild: bootstrap/example/example4/tree)) : bootstrap/example/example4/tree )
         -> (match ((std/core/types/@open(std/core/int/(==))(k, key))) {
          (std/core/types/True() : bool )
             -> bootstrap/example/example4/Node(lchild, k, value, rchild);
          (@skip std/core/types/False() : bool )
             -> (match ((std/core/types/@open(std/core/int/(<))(k, key))) {
              (std/core/types/True() : bool )
                 -> bootstrap/example/example4/Node(lchild, k, value, rchild);
              (@skip std/core/types/False() : bool )
                 -> bootstrap/example/example4/Node(lchild, key, value, rchild);
            });
        });
      (@skip bootstrap/example/example4/Leaf() : bootstrap/example/example4/tree )
         -> bootstrap/example/example4/Leaf;
    };
  };
pub fun show : (t : bootstrap/example/example4/tree) -> string
  = fn(t: bootstrap/example/example4/tree){
    match (t) {
      (bootstrap/example/example4/Node((lchild: bootstrap/example/example4/tree), (k: int), (v: bool), (rchild: bootstrap/example/example4/tree)) : bootstrap/example/example4/tree )
         -> std/core/types/@open(std/core/types/(++))("Node(", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(bootstrap/example/example4/show)(lchild)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(std/core/int/show)(k)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(std/core/bool/show)(v)), (std/core/types/@open(std/core/types/(++))(", ", (std/core/types/@open(std/core/types/(++))((std/core/types/@open(bootstrap/example/example4/show)(rchild)), ")")))))))))))))));
      (@skip bootstrap/example/example4/Leaf() : bootstrap/example/example4/tree )
         -> "Leaf";
    };
  };
pub fun main : () -> console/console ()
  = fn<console/console>(){
    val t : bootstrap/example/example4/tree
      = bootstrap/example/example4/Node((bootstrap/example/example4/Node(bootstrap/example/example4/Leaf, 1, std/core/types/True, bootstrap/example/example4/Leaf)), 2, std/core/types/False, (bootstrap/example/example4/Node(bootstrap/example/example4/Leaf, 3, std/core/types/True, bootstrap/example/example4/Leaf)));
    val new_t : bootstrap/example/example4/tree
      = std/core/types/@open(bootstrap/example/example4/replace)(t, 2, std/core/types/True);
    std/core/types/@open(std/core/console/string/print)((std/core/types/@open(bootstrap/example/example4/show)(new_t)));
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> console/console ()
  = fn<console/console>(){
    std/core/types/@open(bootstrap/example/example4/main)();
  };


/* -----------------
initial
--------------- */
pub fun @expr : () -> console/console ()
  = fn<console/console>(){
    std/core/types/@open(bootstrap/example/example4/main)();
  };
pub fun @main : () -> <st<global>,console/console,div,fsys,ndet,net,ui> ()
  = fn<io-noexn>(){
    std/core/types/@open(bootstrap/example/example4/@main/@expr)();
  };

[6n