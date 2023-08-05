-- Equivalent Syntax for multiple actions chain with explicit bind (not "do" notation)
main :: IO ()
main = putStrLn "Hello, World!" >> 
    putStrLn "Another follow-up string."
--
-- Equivalent Syntax using do notation for implicit bind operator
-- beware of mixing tabs and spaces which allow parser to parse this
--main = do 
--  putStrLn "Hello, everybody!"
--  putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))
--
---- Equivalent Syntax uing do notation with scope similar to imperative programming
--main = do {
--  putStrLn "Hello, World!" ;
--  return () -- returns the empty/neutral IO monad
--}
--
