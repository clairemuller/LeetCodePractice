# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3288/
# Day 6/30

# Given an array of strings, group anagrams together.
# All inputs will be in lowercase.
# The order of your output does not matter.

# Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
# Output:
# [
#   ["ate","eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]

# iterate through strings, sorting each one and checking it against hash,
# where key = letters (sorted string) & value = array of strings containing the letters
# "aet" => ["ate", "eat"]
# time O(n k log k) where n = strs.length, k = max string length
# strs.each = O(n), sorting each string = O(k log k)
# space O(nk)
def group_anagrams(strs)
    hash = {}
    
    strs.each do |s|
        sorted = s.split('').sort().join()
        if !hash[sorted]
            hash[sorted] = [s]
        else
            hash[sorted].push(s)
        end
    end

    hash.values
end
