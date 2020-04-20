# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3303/
# Day 18/30

# Given a m x n grid filled with non-negative numbers, find a path from top left to
# bottom right which minimizes the sum of all numbers along its path.
# You can only move either down or right at any point in time.

# Input:
# [
#   [1,3,1],
#   [1,5,1],
#   [4,2,1]
# ]
# Output: 7
# Explanation: Because the path 1→3→1→1→1 minimizes the sum.

# use dynamic programming
# create a copy of the grid to find the minimum sum at each element
# the current element's min sum will be the current number + the sum from above or the sum from the left, whichever is smaller
def min_path_sum(grid)
    return 0 if grid.empty?
    row, col = 0, 0

    # create an empty copy of the grid
    dp = Array.new(grid.length) {Array.new(grid[0].length)}

    while row < dp.length
        while col < dp[row].length
            dp[row][col] = grid[row][col]

            # if we're not at a zero index, ie if there are elements above and to the left,
            # take the minimum of the two
            if row > 0 && col > 0
                dp[row][col] += [dp[row-1][col], dp[row][col-1]].min
            # if we're not on the first row, take the element above
            elsif row > 0
                dp[row][col] += dp[row-1][col]
            # if we're not on the first column, take the element to the left
            elsif col > 0
                dp[row][col] += dp[row][col-1]
            end

            col += 1
        end
        col = 0
        row += 1
    end

    # return the bottom right value
    dp[dp.length-1][dp[0].length-1]
    # rubyish way:
    # dp.last.last
end

# same as above but changing the grid in place instead of using a copy grid
def min_path_sum(grid)
    return 0 if grid.empty?
    row, col = 0, 0

    while row < grid.length
        while col < grid[row].length
            # if we're not at a zero index, ie if there are elements above and to the left
            # take the minimum of the two
            if row > 0 && col > 0
                grid[row][col] += [grid[row-1][col], grid[row][col-1]].min
            # if we're not on the first row, take the element above
            elsif row > 0
                grid[row][col] += grid[row-1][col]
            # if we're not on the first column, take the element to the left
            elsif col > 0
                grid[row][col] += grid[row][col-1]
            end

            col += 1
        end
        col = 0
        row += 1
    end

    # return the bottom right value
    grid.last.last
end

grid = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

puts min_path_sum(grid)
