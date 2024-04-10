-- Основная функция, которая принимает ввод и печатает число палиндром или нет, используя функцию palindrome для проверки
main :: IO ()
main = do
    print "Enter a number: "
    inputStr <- getLine 
    let input = read inputStr :: Integer
    if palindrome input then
        print $ show input <> " is a palindrome number"
    else
        print $ show input <> " is not palindrome number"


-- функция palindrome проверяет, является ли число палиндромом, сравнивая с обратным числом
palindrome :: Integer -> Bool
palindrome x = reversal x == x


-- функция reversal используется для вычисления обратного числа
reversal :: Integral a => a -> a
reversal = go 0
  where go a 0 = a
        go a b = let (q,r) = b `quotRem` 10 in go (a*10 + r) q
        
        
        
{-
redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.1 (number)$ ghc 3_1.hs
[1 of 1] Compiling Main             ( 3_1.hs, 3_1.o )
Linking 3_1 ...
redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.1 (number)$ ./3_1
"Enter a number: "
155541
"155541 is not palindrome number"
redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.1 (number)$ ./3_1
"Enter a number: "
131
"131 is a palindrome number"
redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.1 (number)$ ./3_1
"Enter a number: "
1331
"1331 is a palindrome number"
redragon@redragon-TUF-Gaming-FX505DT-FX505DT:~/Haskell/3/3.1 (number)$ 

-}
