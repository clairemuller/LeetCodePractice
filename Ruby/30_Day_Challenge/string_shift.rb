# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3299/
# Day 14/30

# You are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [direction, amount]:
    # direction can be 0 (for left shift) or 1 (for right shift).
    # amount is the amount by which string s is to be shifted.
    # A left shift by 1 means remove the first character of s and append it to the end.
    # Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
# Return the final string after all operations.

# Input: s = "abc", shift = [[0,1],[1,2]]
# Output: "cab"
# [0,1] means shift to left by 1. "abc" -> "bca"
# [1,2] means shift to right by 2. "bca" -> "cab"

# Input: s = "abcdefg", shift = [[1,1],[1,1],[0,2],[1,3]]
# Output: "efgabcd"
# [1,1] means shift to right by 1. "abcdefg" -> "gabcdef"
# [1,1] means shift to right by 1. "gabcdef" -> "fgabcde"
# [0,2] means shift to left by 2. "fgabcde" -> "abcdefg"
# [1,3] means shift to right by 3. "abcdefg" -> "efgabcd"

# initial solution
# turn the string into an array
# iterate through each task in shift
# check if task[0] is 0 or 1
# move left/right task[1] times
# return array joined back into string
def string_shift(s, shift)
    arr = s.split('')

    shift.each do |task|
        if task[0] == 0
            # shift left
            task[1].times do
                arr.push(arr.shift)
            end
        else
            # shift right
            task[1].times do
                arr.unshift(arr.pop)
            end
        end
    end

    arr.join
end

# optimized solution
# instead of doing every shift, we can add up the number of total shifts,
# where positive = right, negative = left
# then do them all at once
def string_shift(s, shift)
    arr = s.split('')
    numShifts = sumShifts(shift)

    if numShifts > 0
        # shift right
        numShifts.times do
            arr.unshift(arr.pop)
        end
    else
        # shift left
        numShifts.abs.times do
            arr.push(arr.shift)
        end
    end

    arr.join
end

def sumShifts(shift)
    numShifts = 0

    shift.each do |task|
        if task[0] == 0
            # shift left
            numShifts -= task[1]
        else
            # shift right
            numShifts += task[1]
        end
    end

    numShifts
end
