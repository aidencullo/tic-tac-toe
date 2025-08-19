module Game where

import Board

type Move = String

getMove :: IO Move
getMove = do
  putStrLn "Enter your move: "
  getLine

state :: Maybe Int
state = Nothing

play :: IO (Maybe Int)
play = start

start :: IO (Maybe Int)
start = evolve state

processMove :: Maybe Int -> String -> Maybe Int
processMove state move = Nothing

evolve :: Maybe Int -> IO (Maybe Int)
evolve state = do
  move <- getMove
  let newState = processMove state move
  showBoard newState
  evolve newState
