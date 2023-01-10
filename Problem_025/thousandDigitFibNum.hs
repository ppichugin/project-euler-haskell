module ProjectEuler where

main :: IO ()
main = do
    let x = findIdxFstTermNDigitsNum 1000 -- take 0.59 sec to find
    print x

findIdxFstTermNDigitsNum :: Num t => Int -> t
findIdxFstTermNDigitsNum y = let
        helper n f1 f2
          | length (show f1) == y = n
          | otherwise = helper (n + 1) f2 (f2 + f1)
       in helper 0 0 1
