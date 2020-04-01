# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/
# Day 1/30

# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

# Input: [2,2,1]
# Output: 1

# Input: [4,1,2,1,2]
# Output: 4

# initial solution using a hashmap
# O(n) time & space
def single_number(nums)
    hash = {}
    nums.each do |n|
        if !hash[n]
            hash[n] = 1
        else
            hash[n] += 1
        end
    end
    hash.each do |k, v|
        if v == 1
            return k
        end
    end
    return 0
end

# solution using bitwise XOR operator
# this only works if there is one unique number
# O(n) time, O(1) space
def single_number(nums)
    a = 0
    for i in nums
        a ^= i
    end
    a
end

# XOR returns 1 only if exactly one bit is set to 1 out of the two bits in comparison
# ie it returns 1 if the bits are different, 0 if they're the same
# 1^1 = 0
# 1^0 = 1
# 0^0 = 0
# this works for finding a unique number because duplicate numbers will cancel each other out