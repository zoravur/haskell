import Control.Applicative
import Data.List

readUntil :: (String -> Bool) -> IO String -> IO [String]
readUntil p a = a >>= (\s -> if p s then return [] else (s:) <$> (readUntil p a))

main :: IO ()
main = (readUntil (=="eof") getLine) >>= putStrLn . concat . intersperse " "
