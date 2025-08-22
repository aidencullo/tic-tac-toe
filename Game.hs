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

evolve :: State -> IO State
printState :: State -> IO ()
printState state = displayBoard state

evolve state = do
  move <- enterMove
  let newState = process state move
  printState newState
  evolve newState
