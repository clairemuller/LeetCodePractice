# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3291/
# Day 9/30

# initial solution
# use a helper function that splits each string into an array
# if we encounter a #, first check if we're at zero and overwrite the array
# otherwise, slice the array starting at the element before the #, removing 2 elements
# and decrease i by one
# return the joined array
def backspace_compare(s, t)
    format_str(s) == format_str(t)
end

def format_str(str)
    i = 0
    arr = str.split('')
    
    while i < arr.length
        if arr[i] == "#"
            if i == 0
                arr = arr[1..arr.length]
            else
                # starting at i-1, remove two elements
                arr.slice!(i-1, 2)
                i -= 1
            end
        else
            i += 1
        end
    end
    
    arr.join
end

str1 = "abh#c"
str2 = "abc"
backspace_compare(str1, str2)
