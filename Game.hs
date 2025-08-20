module Game where

import Board
import Types

enterMove :: IO Move
enterMove = do
  putStrLn "Enter your move: "
  getLine

initialState :: State
initialState = Nothing

start :: IO State
start = evolve initialState

process :: State -> String -> State
process state move = Nothing

evolve :: State -> IO State
evolve state = do
  move <- enterMove
  let newState = process state move
  printBoard
  evolve newState
