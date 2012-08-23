-- These problems from projecteuler.net
--
-- Problem 1
-- A palindromic number reads the same both ways. The largest palindrome made
-- from the product of two 2-digit numbers is 9009 = 91 * 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.

is_palindrome :: (Num a, Show a) => a -> Bool
is_palindrome x = ( reverse $ show x ) == ( show x )

palindromes_in_range :: (Num a, Show a) => [a] -> [a]
palindromes_in_range r = [ x*y | x <- r, y <- r, is_palindrome (x*y) ]

solution = maximum $ palindromes_in_range [100..999]
