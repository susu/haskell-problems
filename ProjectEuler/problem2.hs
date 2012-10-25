-- These problems from projecteuler.net
--
-- Problem 2
-- Each new term in the Fibonacci sequence is generated by adding the previous two terms.
-- By starting with 1 and 2, the first 10 terms will be:
--        1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose values do not exceed
-- four million, find the sum of the even-valued terms.

fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo f = fibo(f-1) + fibo(f-2)

-- memoized version of fibo
mFib :: Int -> Int
mFib = (map fib [0 ..] !!)
  where fib 0 = 0
        fib 1 = 1
        fib n = mFib (n-2) + mFib (n-1)

even_fibos = filter (even) (takeWhile (<4000000) (map (mFib) [2..]))

solution = sum (even_fibos)
