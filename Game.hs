module Game where

import Board
import Types

enterMove :: IO Move
enterMove = do
  putStrLn "Enter your move: "
  getLine

initialState :: State
initialState = replicate 9 0

start :: IO State
start = evolve initialState

process :: State -> String -> State
process state move = initialState


printState :: State -> IO ()
printState state = displayBoard state

evolve :: State -> IO State
evolve state = do
  move <- enterMove
  let newState = process state move
  printState newState
  evolve newState
