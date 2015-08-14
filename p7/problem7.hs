module Problem7 where

import Data.Numbers.Primes

main :: IO ()
main = print $ primeN 10001

primeN :: Int -> Int
primeN x = last $ take x primes
