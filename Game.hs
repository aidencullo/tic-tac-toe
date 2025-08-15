module Game where

import Board

emptyBoard :: [Int]
emptyBoard = replicate 9 0

play :: IO ()
play = showGameState

showGameState :: IO ()
showGameState = printBoard emptyBoard
