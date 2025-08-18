module Board where

emptyBoard :: [Int]
emptyBoard = replicate 9 0

printBoard :: [Int] -> IO ()
printBoard board = do
  let row = "  |   |  "
      separator = "---------"
      boardStr = row ++ "\n" ++ separator ++ "\n" ++ row ++ "\n" ++ separator ++ "\n" ++ row
  putStrLn boardStr
