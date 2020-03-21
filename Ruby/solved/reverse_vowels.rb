# SOLVED

# https://leetcode.com/problems/reverse-vowels-of-a-string/
# Write a function that takes a string as input and reverses only the vowels.
# Note: The vowels do not include the letter "y".

# Input: "hello"
# Output: "holle"

# Input: "leetcode"
# Output: "leotcede"

# initital solution
# create hash of vowels, upper and lower
# create two pointers, beginning and end of string
# until i passes j, move i to find a vowel, then move j to find a vowel
# ensure that i is less than j, then swap the vowels using a temporary variable
# finally, move i and j and continue
def reverse_vowels(s)
    return s if s.empty?

    vowels = {
        "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1, "A" => 1, "E" => 1, "I" => 1, "O" => 1, "U" => 1
    }
    i = 0
    j = s.length - 1

    while i < j
        while !vowels[s[i]] && i < j
            i += 1
        end
        while !vowels[s[j]] && i < j
            j -= 1
        end
        if i >= j
            return s
        end
        tmp = s[i]
        s[i] = s[j]
        s[j] = tmp
        i += 1
        j -= 1
    end
    s
end

s = "hello"
puts reverse_vowels(s)
