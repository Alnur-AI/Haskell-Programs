main = do
    print "Your name?"
    name <- getLine
    print ("Hi " ++ name ++ "!")
