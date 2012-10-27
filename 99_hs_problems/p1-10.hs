
-- Problem 1
-- (*) Find the last element of a list.

myLast :: [a] -> a
myLast list = last list

-- Problem 2
-- (*) Find the last but one element of a list.

myButLast :: [a] -> a
myButLast x = x !! ( (length x) - 2 )

-- Problem 3
-- (*) Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt x i = x !! (i-1)

-- Problem 6
-- Find out whether a list is a palindrome. A palindrome can be read forward
-- or backward; e.g. (x a m a x).

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == (reverse x)

-- Problem 8
-- (**) Eliminate consecutive duplicates of list elements.

