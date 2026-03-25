// From FP2: Fully in-Place Functional Programming  Section 3

type tree<a>
  Bin( left: tree<a>, right: tree<a> )
  Tip( value: a )

type tzipper<a,b>
  Top
  BinL (up : tzipper<a,b>, right: tree<a>)
  BinR (left : tree<b>, up : tzipper<a,b>)

fip fun down( t : tree<a>, ^f : a -> b, ctxt : tzipper<a,b> ) : div tree<b>
  match t
    Bin(l,r) -> down( l, f, BinL(ctxt,r) ) // go down the left spine, remember to visit r later
    Tip(x) -> app( Tip(f(x)), f, ctxt) // start upwards along the zipper

fip fun app( t : tree<b>, ^f : a -> b, ctxt : tzipper<a,b> ) : div tree<b>
  match ctxt
    Top -> t
    BinR(l,up) -> app( Bin(l,t), f, up) // keep going up rebuilding the tree
    BinL(up,r) -> down( r, f, BinR(t,up) ) // go down a right side

fip fun tmap( t : tree<a>, ^f : a -> b ) : div tree<b>
  down(t,f,Top)

fun main()
  ()