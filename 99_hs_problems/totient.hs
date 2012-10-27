
import Coprime

totient :: (Integral a) => a -> [a]
totient x = filter (coprime x) [1..x]
