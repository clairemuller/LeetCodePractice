# SOLVED

# Write a function that reverses a string. The input string is given as an array of characters char[].
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
# You may assume all the characters consist of printable ascii characters.
# Example 1:
# Input: ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
 
# Example 2:
# Input: ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]

# swap first and last elements using tmp variable
# move i and j towards middle
# repeat until i passes j
def reverse(arr)
    i = 0
    j = arr.length-1

    while i < j
		tmp = arr[i]
		arr[i] = arr[j]
		arr[j] = tmp
		i += 1
		j -= 1
    end
	arr
end

arr1 = ["H","a","n","n","a","h"]
arr2 = ["h","e","l","l","o"]
arr = ["w", "w", "e", "w"]

puts "arr is #{arr}"
reverse(arr)
puts "arr is #{arr}"
