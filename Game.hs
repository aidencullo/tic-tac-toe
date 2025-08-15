module Game where

import Board

emptyBoard :: [Int]
emptyBoard = replicate 9 0

showGameState :: IO ()
showGameState = printBoard emptyBoard

play :: IO ()
play = do
  putStrLn "Enter your move: "
  input <- getLine
  showGameState
  play