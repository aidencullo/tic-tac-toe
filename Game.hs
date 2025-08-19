module Game where

import Board
  
showGameState :: Maybe Int -> IO ()
showGameState state = printBoard emptyBoard

type Move = String

getMove :: IO Move
getMove = do
  putStrLn "Enter your move: "
  input <- getLine
  return input

state :: Maybe Int
state = Nothing

play :: IO ()
play = do
  start

start :: IO ()
start = do
  evolve state
  return ()

processMove :: Maybe Int -> String -> Maybe Int
processMove state move = Nothing

evolve :: Maybe Int -> IO (Maybe Int)
evolve state = do
  move <- getMove
  let newState = processMove state move
  showGameState newState
  evolve newState
