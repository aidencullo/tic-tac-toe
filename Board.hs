module Board where

printboard :: [Int] -> IO ()
printboard board = do
  let row = "  |   |  "
      separator = "---------"
      boardStr = row ++ "\n" ++ separator ++ "\n" ++ row ++ "\n" ++ separator ++ "\n" ++ row
  putStrLn boardStr
