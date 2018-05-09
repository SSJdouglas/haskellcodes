-- CSCI 26, Spring 2018
-- Homework #11
-- Due Date: 5/9

-- Description:
--   Welcome to the wonderful world of Haskell! As a brief introduction to the
--   language, I have provided some exercises for you to try out below. To test
--   your answers, make sure to load your file into ghci, then either call your
--   function or call the variable name.

-- Submission:
--   Please submit your completed Haskell code to Canvas before the due date at
--   6:30pm. The submission link will automatically close as soon as the server
--   clock hits 6:30pm.

-- Student Name:
--   <Joshua Douglas>

-- Define a function, ranges, using if-then-else, that returns 3 on
-- numbers from 0 to 10, 5 on numbers from 11 to 20, 1 on numbers from
-- 21 to 30, and 0 on everything else
ranges :: Int -> Int
ranges n = 
    if n >= 0 && n <= 10 
      then 3 
    else if n >= 11 && n <= 20
      then 5
    else if n >= 21 && n <= 30
      then 1
    else 0

-- Define a function, palindrome, that takes a list and returns another list
-- that is the same forwards and backwards and starts with the given list.
-- For example, palidrome [5, 2, 7] = [5, 2, 7, 7, 2, 5]
palindrome :: [Int] -> [Int]
palindrome xs = xs ++ reverse xs

-- Define a function, middle, that takes a list and returns the "middle" of
-- the list, that is, all of its elements except the first and last.
-- For example, middle [1, 8, 3, 6, 2] = [8, 3, 6]
middle :: [Int] -> [Int]
middle xs = drop 1 (init xs)

-- Write expressions whose values are the sums of
-- (1) all even numbers between 100 and 200 (including 100 and 200)
-- (2) every third number from 100 to 199
sum1 = sum [x | x <- [100..200], x `mod` 2 == 0]
sum2 = sum [x | x <- [100, 103..199]]

-- How many numbers from the list [150, 151, 152, ...] must be added before the
-- sum becomes larger than 1,000,000?  Write an expression whose value is the
-- answer to this question.
ans = length $ takeWhile (\x -> sum[150..x] <= 1000000) [150..]

-- Write list comprehensions to generate the following lists:
-- (1) all numbers between 10 and 500 divisible by 3, 5, or 8
-- (2) the squares of the numbers from 30 to 50 ([30*30, 31*31, ..., 50*50])
-- (3) all possible products of three (not necessarily different) elements
--     from the list [11,16,21,27]
list1 = [x | x <- [100..200], x `mod` 3 /= 0, x `mod` 5 /= 0, x `mod` 7 /= 0]
list2 = [x*x | x <- [30..50]]
list3 = [x*y | x <- [11,16,21,27], y <- [11,16,21,27]] 
