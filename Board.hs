module Board where

import Types

printBoard :: State -> IO ()
printBoard state = do
  let row = "  |   |  "
      separator = "---------"
      boardStr = row ++ "\n" ++ separator ++ "\n" ++ row ++ "\n" ++ separator ++ "\n" ++ row
  putStrLn boardStr
