-- These problems from projecteuler.net
--
-- Problem 7
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
-- we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

import Numbering

solution = (filter (is_prime) [1..]) !! (10001 - 1) -- indexing starts from 0
