# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3289/
# Day 7/30

# Given an integer array arr, count element x such that x + 1 is also in arr.
# If there're duplicates in arr, count them seperately.

# Input: arr = [1,2,3]
# Output: 2
# Explanation: 1 and 2 are counted cause 2 and 3 are in arr.

# Input: arr = [1,1,3,3,5,5,7,7]
# Output: 0
# Explanation: No numbers are counted, cause there's no 2, 4, 6, or 8 in arr.

# Input: arr = [1,3,2,3,5,0]
# Output: 3
# Explanation: 0, 1 and 2 are counted cause 1, 2 and 3 are in arr.

# Input: arr = [1,1,2,2]
# Output: 2
# Explanation: Two 1s are counted cause 2 is in arr.

# initial solution
# create hash to get each unique number
# then check each num+1 in hash
def count_elements(arr)
    hash = {}
    count = 0

    arr.each do |x|
        if !hash.key?(x)
            hash[x] = true
        end
    end

    arr.each do |x|
        if hash.key?(x+1)
            count += 1
        end
    end

    count
end

# slower runtime but uses less space
def count_elements(arr)
    count = 0

    arr.each do |x|
        if arr.include?(x+1)
            count += 1
        end
    end
    
    count
end
