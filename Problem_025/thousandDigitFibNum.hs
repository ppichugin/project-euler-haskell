module ProjectEuler where

main :: IO ()
main = do 
    let x = find1000digitFibonacci
    print x

find1000digitFibonacci :: [(Integer, Integer)]
find1000digitFibonacci = take 1 [(y,n) | n <- [1..], let y = fibonacci n, length (show y) == 1000]

fibonacci :: Integer -> Integer
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | n == (-1) = 1
  | n == (-2) = -1
  | otherwise = helper n 0 1

helper :: Integer -> Integer -> Integer -> Integer
helper 0 f1 _ = f1
helper n f1 f2 
 | n == 0 = f1
 | n > 0 = helper (n - 1) f2 (f2 + f1)
 | n < 0 = helper (n + 1) f2 (f1 - f2)