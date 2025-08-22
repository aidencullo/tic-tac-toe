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

printBoard :: String -> IO ()
printBoard board = putStrLn board

createBoard :: State -> String
createBoard state = createRow state

createRow :: State -> String
createRow [] = ""
createRow [x, y, z] = createCell [x, y, z]
createRow (x:y:z:xs) = createCell [x, y, z] ++ "\n--------\n" ++ createRow xs

createCell :: [Int] -> String
createCell [] = ""
createCell [x] = show x
createCell (x:xs) = show x ++ "|" ++ createCell xs

