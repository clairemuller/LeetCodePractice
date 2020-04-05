# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3286/
# Day 4/30

# Given an array nums, write a function to move all 0's to the end of it
# while maintaining the relative order of the non-zero elements.
# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]

# initial solution
# create helper function that returns the index of the first encountered zero (z)
# move through array using i
# if we encounter a non-zero number, swap it with the first zero by moving it to the index z
# and change the current number to 0
# then call helper function
def move_zeroes(nums)
    z = find_zero(nums, 0)
    i = z+1

    while i < nums.length
        if nums[i] != 0
            nums[z] = nums[i]
            nums[i] = 0
            z = find_zero(nums, z)
        end
        i += 1
    end

    nums
end

# make it more efficient by taking an index argument
def find_zero(nums, index)
    z = index
    while nums[z] != 0 && z < nums.length
        z += 1
    end
    z
end
