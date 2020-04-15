# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3298/
# Day 13/30

# Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.
# The length of the given binary array will not exceed 50,000.

# Input: [0,1]
# Output: 2
# [0, 1] is the longest contiguous subarray with equal number of 0 and 1.

# Input: [0,1,0]
# Output: 2
# [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.

# iterate through array
# create count variable that decrements when we see a 0 and increments when we see a 1
# create a hash to keep track of each count seen, where hash[count] = index
# if we see the same count more than once, it means that the number of zeros and ones are equal
# between the index at hash[count] and the current index,
# so maxLen becomes the max of either: maxLen OR current index (i) minus previously seen index (hash[count])
# need to initialize the hash with 0=>-1 to account for having 'seen' count of zero
def find_max_length(nums)
    hash = {0=>-1}
    i = count = maxLen = 0

    while i < nums.length
        if nums[i] == 0
            count -= 1
        else
            count += 1
        end

        if !hash.key?(count)
            hash[count] = i
        else
            maxLen = [i - hash[count], maxLen].max
        end

        i += 1
    end

    maxLen
end
