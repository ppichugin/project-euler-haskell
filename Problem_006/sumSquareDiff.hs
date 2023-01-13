module ProjectEuler where

sumSquareDiff10 :: Int
sumSquareDiff10 = sum [1 .. 10] ^ 2 - sum [ n ^ 2 | n <- [1 .. 10] ]

sumSquareDiff100 :: Int
sumSquareDiff100 = sum [1 .. 100] ^ 2 - sum [ n ^ 2 | n <- [1 .. 100] ]
