----------------------------------------------------
--                    LeetCode                    --
--            3110. Score of a String             --
--            Solution by Lorin Lange             --
----------------------------------------------------

import Data.Char (ord)
import Data.List.HT (mapAdjacent)
import Data.Composition ((.:))

scoreOfAString :: String -> Int
scoreOfAString = sum . mapAdjacent (abs .: (-)) . map ord

main :: IO()
main = print $ scoreOfAString "hello" -- 13
