# https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/530/week-3/3302/
# Day 17/30

# Given a 2d grid map of '1's (land) and '0's (water), count the number of islands.
# An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically.
# You may assume all four edges of the grid are all surrounded by water.

# Input:
# 11110
# 11010
# 11000
# 00000
# Output: 1

# Input:
# 11000
# 11000
# 00100
# 00011
# Output: 3

# need to visit every element - use nested loops
# if the element is a one, need to do DFS
# DFS helper function will mark adjacent ones as zeroes
def num_islands(grid)
    return 0 if grid.empty?

    islands, row, col = 0, 0, 0

    while row < grid.length
        while col < grid[row].length
            if grid[row][col] == "1"
                islands += 1
                dfs(grid, row, col)
            end
            col += 1
        end
        col = 0
        row += 1
    end

    islands
end

# use recursion to switch every adjacent one to a zero
def dfs(grid, row, col)
    # if we're out of bounds or the element is a zero, return
    if row < 0 || col < 0 || row >= grid.length || col >= grid[row].length || grid[row][col] == "0"
        return
    end

    grid[row][col] = "0"
    dfs(grid, row+1, col) # down
    dfs(grid, row-1, col) # up
    dfs(grid, row, col+1) # right
    dfs(grid, row, col-1) # left
end

grid = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
]

puts num_islands(grid)
