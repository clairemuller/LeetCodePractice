# SOLVED

# Given a sorted array nums, remove the duplicates in-place such that each element appears only once and return the new length.
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Given nums = [1,1,2],
# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
# It doesn't matter what you leave beyond the returned length.

# Given nums = [0,0,1,1,1,2,2,3,3,4],
# Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.
# It doesn't matter what values are set beyond the returned length.

# use two pointers to compare numbers
# if the two numbers are the same, keep moving j forward until we find the next non-duplicate.
# once we've reached the end of the dupes, ie nums[i] != nums[j],
# move i forward once, and set it equal to j
def remove_duplicates_two(nums)
    return 0 if nums.empty?
    i = 0
    j = 1
    while j < nums.length
        if nums[i] != nums[j]
            i += 1
            nums[i] = nums[j]
        end
        j += 1
    end
    print nums
    i+1
end

nums = [-1,0,0,0,0,3,3]
puts remove_duplicates_one(nums)
