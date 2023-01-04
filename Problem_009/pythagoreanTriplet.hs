module ProjectEuler where

specialPythagorean :: Int
specialPythagorean = head [ a * b * c | 
 b <- [1..n], 
 a <- [1..b], 
 let c = n - a - b, 
 a^2 + b^2 == c^2] 
 where n = 1000

specialPythagorean' :: Int
specialPythagorean' = head [ a * b * c | 
 a <- [1..quot n 3],
 b <- [a..quot n 2],
 let c = n - a - b, 
 a^2 + b^2 == c^2] 
 where n = 1000