module Game where

import Board
import Types

-- Conversion
strToInt :: String -> Move
strToInt s = read s

-- Input
promptUser :: IO String
promptUser = getLine

enterMove :: IO Move
enterMove = do
    putStrLn "Enter your move: "
    moveString <- promptUser
    let move = strToInt moveString
    return move

-- Game state
initialState :: State
initialState = replicate 9 0

-- Processing
process :: State -> Move -> State
process state move = sanitizeMove move `seq` initialState

sanitizeMove :: Move -> ()
sanitizeMove 0 = ()
sanitizeMove 1 = ()
sanitizeMove 2 = ()
sanitizeMove _ = error "Invalid move"

-- Output
printState :: State -> IO ()
printState state = displayBoard state

-- Game loop
evolve :: State -> IO State
evolve state = do
    move <- enterMove
    let newState = process state move
    printState newState
    evolve newState

-- Entry point
start :: IO State
start = evolve initialState
