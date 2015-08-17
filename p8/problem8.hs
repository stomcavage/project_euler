module Problem8 where

import Data.Char
import Data.String.Utils

main :: IO ()
main = do
  xs <- getNumbers
  let ys = getSequences xs
  print $ maximum ys

getNumbers :: IO [Int]
getNumbers = do
  xs <- readFile "num.txt"
  return $ map digitToInt $ rstrip xs

getSequences :: [Int] -> [Int]
getSequences []     = []
getSequences (x:xs) = product sublist : getSequences xs
  where sublist = x : take 12 xs
