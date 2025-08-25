module Game where

import Board
import Types

import Text.Read (readMaybe)

strToInt :: String -> Move
strToInt s = read s

enterMove = do
    putStrLn "Enter your move: "
    moveString <- promptUser
    let move = strToInt moveString
    return move

promptUser :: IO String
promptUser = getLine

initialState :: State
initialState = replicate 9 0

start :: IO State
start = evolve initialState

process :: State -> Move -> State
process state move = sanitizeMove move `seq` initialState

sanitizeMove :: Move -> ()
sanitizeMove 0 = ()
sanitizeMove 1 = ()
sanitizeMove 2 = ()
sanitizeMove _ = error "Invalid move"


printState :: State -> IO ()
printState state = displayBoard state

evolve :: State -> IO State
evolve state = do
  move <- enterMove
  let newState = process state move
  printState newState
  evolve newState
