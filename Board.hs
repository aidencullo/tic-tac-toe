module Board where

printboard :: IO ()
printboard = do
  let row = "  |   |  "
      separator = "---------"
      board = row ++ "\n" ++ separator ++ "\n" ++ row ++ "\n" ++ separator ++ "\n" ++ row
  putStrLn board
