module ProjectEuler where

main :: IO ()
main = print $ sum $ filter sumOfDigits [10..50000]

factorial :: Int -> Int
factorial n = product [1..n]

digits :: Int -> [Int]
digits 0 = []
digits n = r : digits q where (q, r) = quotRem n 10

sumOfDigits :: Int -> Bool
sumOfDigits n = n == sum (map factorial (digits n))
