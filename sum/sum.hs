import Control.Applicative
import Text.Read

--sum' :: (Num a) => (f (g a)) -> (f (g a)) -> (f (g a))
sum' = liftA2 $ liftA2 (+)

readNum :: IO (Maybe Integer)
readNum = liftA readMaybe getLine

main = sum' readNum readNum >>= print
