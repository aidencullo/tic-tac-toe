myCompare :: (Ord i) => i -> i -> Bool
myCompare x y
  | x < y = LT
  | x > y = GT
  | otherwise = EQ
