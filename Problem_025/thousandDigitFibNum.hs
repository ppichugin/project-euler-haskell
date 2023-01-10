module ProjectEuler where

main :: IO ()
main = do
    let nDigit = 1000
    let x = findIdxFstTermNDigitsNum nDigit -- take 0.59 sec to find
    putStr ("The index of first term that contains " 
            ++ show nDigit 
            ++ "-digits of Fibonacci seq. is: " ++ show x)

findIdxFstTermNDigitsNum :: Num t => Int -> t
findIdxFstTermNDigitsNum y = let
        helper n f1 f2
          | length (show f1) == y = n
          | otherwise = helper (n + 1) f2 (f2 + f1)
       in helper 0 0 1
