module Game where

import Board
import Types

type Move = String

getMove :: IO Move
getMove = do
  putStrLn "Enter your move: "
  getLine

state :: GameState
state = Nothing

play :: IO GameState
play = start

start :: IO GameState
start = evolve state

processMove :: GameState -> String -> GameState
processMove state move = Nothing

evolve :: GameState -> IO GameState
evolve state = do
  move <- getMove
  let newState = processMove state move
  showBoard newState
  evolve newState
