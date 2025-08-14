module Game where

import Board

play :: IO ()
play = printboard (replicate 9 0)
