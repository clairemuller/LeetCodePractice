# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3284/
# Day 2/30

# Write an algorithm to determine if a number is "happy".
# A happy number is a number defined by the following process:
# Starting with any positive integer, replace the number by the sum of the squares of its digits,
# and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle
# which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Input: 19
# Output: true
# 19 --> 1^2 + 9^2 = 82
# 82 --> 8^2 + 2^2 = 68
# 68 --> 6^2 + 8^2 = 100
# 100 --> 1^2 + 0^2 + 0^2 = 1

# initial solution
# create hash to keep track of all seen numbers
# if we've seen the number, we're in a loop, return false
# convert number to string, then split into an array to get individual digits
# square each digit, summing it
# new sum becomes next number to check, repeat
def is_happy(n)
    return false if n < 1
    
    hash = {}

    while n != 1
        if !hash[n]
            hash[n] = 1
        else
            return false
        end

        arr = n.to_s.split('')
        sqSum = 0

        arr.each do |num|
            sqSum += num.to_i * num.to_i
        end

        n = sqSum
    end

    return true
end

# refactored
# instead of checking if hash[n] exists, can use hash.key?(n)
# instead of turning the integer into a string and splitting it into an array,
# can use .digits on it to get an array of digits ie 19.digits --> [1,9]
# instead of n*n, can use the power of operator **
# use .sum on digits array
def is_happy(n)
    return false if n < 1
    hash = {}
    loop do
        return false if hash.key?(n)
        return true if n == 1
        hash[n] = 1
        n = n.digits.sum { |dig| dig**2 }
    end
end
