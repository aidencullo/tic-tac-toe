module Board where

printBoard :: [Int] -> IO ()
printBoard board = do
  let row = "  |   |  "
      separator = "---------"
      boardStr = row ++ "\n" ++ separator ++ "\n" ++ row ++ "\n" ++ separator ++ "\n" ++ row
  putStrLn boardStr
