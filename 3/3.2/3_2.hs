main = do
	
	putStrLn "enter value for a: "
	input1 <- getLine
	
	putStrLn "enter value for b: " 
	input2 <- getLine 
	
	putStrLn "enter value for c: "
	input3 <- getLine
	
	putStrLn "enter value for d: "
	input4 <- getLine


	let a = (read input1 :: Int)
	let b = (read input2 :: Int)
	let c = (read input3 :: Int)
	let d = (read input4 :: Int)

	let first = (a `div` d ) * (b `div` c)
	let second = (a `div` c ) * (b `div` d)
	
	if first >= second
		then print "Better when placed long side along the long side of the table"
	else
		print "Better when placing them long side along the short side of the table"

{-

	 redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.2$ ghc 3_2.hs
	[1 of 1] Compiling Main             ( 3_2.hs, 3_2.o )

	3_2.hs:2:1: warning: [-Wtabs]
	    Tab character found here, and in 24 further locations.
	    Please use spaces instead.
	  |
	2 |         
	  | ^^^^^^^^
	Linking 3_2 ...
	redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.2$ ./3_2
	enter value for a: 
	100
	enter value for b: 
	50
	enter value for c: 
	13
	enter value for d: 
	7
	"Better when placing them long side along the short side of the table"
	redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.2$ 

-}
