module Game where

import Board
import Types

type Move = String

enterMove :: IO Move
enterMove = do
  putStrLn "Enter your move: "
  getLine

state :: State
state = Nothing

start :: IO State
start = evolve state

process :: State -> String -> State
process state move = Nothing

evolve :: State -> IO State
evolve state = do
  move <- enterMove
  let newState = process state move
  displayBoard newState
  evolve newState
