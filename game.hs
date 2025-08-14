board = "  |   |  \n---------\n  |   |  \n---------\n  |   |  "
printboard state = do
  putStrLn board
state = Nothing
main = printboard state
