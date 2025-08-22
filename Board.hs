module Board where

import Types

printBoard :: State -> IO ()
printBoard state = do
  let boardStr = createBoard state
  putStrLn boardStr

createBoard state = createRow state

createRow [] = ""
createRow [x, y, z] = createCell [x, y, z]
createRow (x:y:z:xs) = createCell [x, y, z] ++ "\n--------\n" ++ createRow xs

createCell [] = ""
createCell [x] = show x
createCell (x:xs) = show x ++ "|" ++ createCell xs

