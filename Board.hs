module Board where

import Types

printBuffer :: IO ()
printBuffer = do
  putStrLn ""
  putStrLn ""

displayBoard :: State -> IO ()
displayBoard state = do
  let boardStr = createBoard state
  printBuffer
  putStrLn boardStr
  printBuffer

createBoard state = createRow state

createRow [] = ""
createRow [x, y, z] = createCell [x, y, z]
createRow (x:y:z:xs) = createCell [x, y, z] ++ "\n--------\n" ++ createRow xs

createCell [] = ""
createCell [x] = show x
createCell (x:xs) = show x ++ "|" ++ createCell xs

