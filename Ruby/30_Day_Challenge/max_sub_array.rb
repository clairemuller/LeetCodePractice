# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3285/
# Day 3/30

# Given an integer array nums, find the contiguous subarray (containing at least one number)
# which has the largest sum and return its sum.

# Input: [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.

# initial solution
# use nested loops where i is the left bound and j is the right
# keep track of the sum of current window, i to j, to avoid duplicate work
# O(n^2) time
def max_sub_array(nums)
    maxSum = nums[0]
    i = 0

    while i < nums.length
        windowSum = 0
        j = i
        while j < nums.length
            windowSum += nums[j]
            maxSum = [maxSum, windowSum].max
            j += 1
        end
        i += 1
    end

    maxSum
end

# kadane's algorithm
# "What is the Max Contiguous Subarray Sum we can achieve ending at index i?"
# maxEndingHere is the max between:
# the current number, ie, the subarray will begin here
# or the current number plus maxEndingHere, ie extend the previous subarray best whatever it was
# O(n) time
def max_sub_array(nums)
    globalMax = maxEndingHere = nums[0]
    i = 1

    while i < nums.length
        maxEndingHere = [nums[i], nums[i]+maxEndingHere].max
        globalMax = [globalMax, maxEndingHere].max
        i += 1
    end

    globalMax
end
