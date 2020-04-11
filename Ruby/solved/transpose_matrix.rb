# SOLVED
# https://leetcode.com/problems/transpose-matrix/

# Given a matrix A, return the transpose of A.
# The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.

# Input: [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[1,4,7],[2,5,8],[3,6,9]]

# Input: [[1,2,3],[4,5,6]]
# Output: [[1,4],[2,5],[3,6]]

# initial solution
# O(r*c) time and space, where r = # of rows, c = # of columns
def transpose(a)
    # get the number of rows and columns
    # create empty matrix where # of rows = # of columns, and vice versa
    rows = a.length
    cols = a[0].length
    newA = Array.new(cols) {Array.new(rows)}

    i = j = 0
    while i < rows
        while j < cols
            # swap them
            newA[j][i] = a[i][j]
            j += 1
        end
        i += 1
        # don't forget to reset j after every column
        j = 0
    end

    newA
end
