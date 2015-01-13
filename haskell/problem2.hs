module Problem2 where

{-
 - Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
 -
 - 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
 -
 - By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
 -}

main :: IO ()
main = print sumFib

fibs :: [Int]
fibs = 1:1:zipWith (+) fibs (tail fibs)

sumFib :: Int
sumFib = sum $ filter even $ takeWhile (<4000000) fibs

