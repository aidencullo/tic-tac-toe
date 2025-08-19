module Game where

import Board
import Types

type Move = String

enterMove :: IO Move
enterMove = do
  putStrLn "Enter your move: "
  getLine

emptyState :: GameState
emptyState = Nothing

start :: IO GameState
start = evolve emptyState

processMove :: GameState -> String -> GameState
processMove state move = Nothing

evolve :: GameState -> IO GameState
evolve state = do
  move <- enterMove
  let newState = processMove state move
  showBoard newState
  evolve newState
