# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/529/week-2/3297
# Day 12/30

# We have a collection of stones, each stone has a positive integer weight.
# Each turn, we choose the two heaviest stones and smash them together.
# Suppose the stones have weights x and y with x <= y.  The result of this smash is:
# If x == y, both stones are totally destroyed;
# If x != y, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
# At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.)

# Input: [2,7,4,1,8,1]
# Output: 1
# We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
# we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
# we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
# we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.

# initial solution
# create a loop, sort the array each time
# then compare the last two elements (the 2 biggest)
# if they're equal, pop them both from the array.
# otherwise, the last element is bigger: x<y
# so overwrite the 2nd to last with the difference: x = y-x
# and pop the last element.
# finally, if we have two elements left, return their difference,
# otherwise we only have one element, so return it
def last_stone_weight(stones)
    while stones.length > 2
        stones.sort!
        if stones[-2] == stones[-1]
            stones.pop
        else
            stones[-2] = stones[-1] - stones[-2]
        end
        stones.pop
    end

    if stones.length == 2
        return stones.max - stones.min
    else
        return stones[0]
    end
end

# refactored
# create loop, sorting array each time
# pop off the last two elements, x & y
# if their difference (y-x) is not zero,
# push that difference back onto the array
# now we either have an empty array, meaning we should return 0,
# or one element left to return
def last_stone_weight(stones)
    while stones.length > 1
        stones.sort!
        y = stones.pop
        x = stones.pop
        stones.push(y-x) if y-x != 0
    end
    stones.empty? ? 0 : stones[0]
end

# both solution's space complexity - O(1)
# ruby's array.sort uses quicksort
# avg runtime O(n log n), worst case O(n**2) - if array is already sorted
