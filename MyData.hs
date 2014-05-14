
data MyType = TStr
            | TInt
            | TFrac
            | TFunc (MyType, MyType)

data MyData = XStr String
            | XInt Int
            | XFrac (Int, Int)
            | XCall (XFunc, MyData)
            | XFunc (


instance Show MyType where
  show TStr = "String"
  show TInt = "Integer"
  show TFrac = "Fraction"
  show TFunc (x, y) = case x of
    (TFunc a) -> "(" ++ show x ++ ")" ++ " -> " ++ show y
    _         ->        show x ++        " -> " ++ show y



predefined_types =
  [("/",  XFunc (XInt, XFunc (XInt, XFrac))) -- int -> int -> frac
  ,("++", XFunc (XStr, XFunc (XStr, XStr)))  -- str -> str -> str
  ,("+",  XFunc (XInt, XFunc (XInt, XInt)))  -- int -> int -> int
  ,("-",  XFunc (XInt, XFunc (XInt, XInt)))  -- int -> int -> int
  ,("*",  XFunc (XInt, XFunc (XInt, XInt)))  -- int -> int -> int
  ,("s2i", XFunc (XStr, XInt))               -- str -> int
  ,("i2s", XFunc (XInt, XStr))               -- int -> str
  ,("f2i", XFunc (XFrac, XInt))              -- frac -> int
  ]


myfunc1 =


check_type val func_tbl =


acquire_type val func_tbl =
