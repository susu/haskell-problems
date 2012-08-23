--
-- Problem 3
-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?
--
import Numbering

theNumber = 600851475143

to = sqrt (600851475143)

divisors = filter (dividable theNumber) [1..(floor to)]

is_prime :: Int -> Bool
is_prime 1 = False
is_prime x = length dividers == 0
    where dividers = (filter (dividable x) [2..floor (sqrt (fromIntegral x))])

solution = maximum $ filter (is_prime) divisors
