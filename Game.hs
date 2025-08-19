module Game where

import Board
  
showBoard :: IO ()
showBoard = printBoard emptyBoard

type Move = String

getMove :: IO Move
getMove = do
  putStrLn "Enter your move: "
  input <- getLine
  return input

play :: IO ()
play = do
  move <- getMove
  print move
  showBoard
