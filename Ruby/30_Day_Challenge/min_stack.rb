# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3292/
# Day 10/30

# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()

class MinStack
    def initialize()
        @arr = []
        @min = nil
    end
    
    # could use @arr.min to get min
    # but faster to check if x < min
    def push(x)
        @arr.push(x)
        if !@min || x < @min
            @min = x
        end
        @arr
    end
    
    def pop()
        @arr.pop
        @min = @arr.min
        @arr
    end
    
    def top()
        @arr[-1]
    end
    
    def get_min()
        @min
    end
end
