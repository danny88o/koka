module bootstrap/data/ratio

pub struct ratio
  numerator : int
  denominator : int

pub fun ratio(n:int)
  Ratio(n, 1)

pub fun ratio/(+) (r1: ratio, r2: ratio) : ratio
  val n = r1.numerator * r2.denominator + r2.numerator * r1.denominator
  val d = r1.denominator * r2.denominator
  Ratio(n, d)

pub fun ratio/(==) (r1: ratio, r2: ratio) : bool
  r1.numerator * r2.denominator == r2.numerator * r1.denominator

pub fun ratio/(!=) (r1: ratio, r2: ratio) : bool
  r1.numerator * r2.denominator != r2.numerator * r1.denominator


pub fun (/)(r1: ratio, n: int) : ratio
  r1(denominator = r1.denominator * n)