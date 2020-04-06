# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/528/week-1/3287/
# Day 5/30

# Say you have an array for which the ith element is the price of a given stock on day i.
# Design an algorithm to find the maximum profit.
# You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

# Input: [7,1,5,3,6,4]
# Output: 7
# Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
# Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.

# Input: [1,2,3,4,5]
# Output: 4
# Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
# Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
# engaging multiple transactions at the same time. You must sell before buying again.

# Input: [7,6,4,3,1]
# Output: 0
# In this case, no transaction is done, i.e. max profit = 0.

def max_profit(prices)
    return 0 if prices.length < 2
    profit = 0
    i = 1

    # if the current price is greater than the one before it,
    # find the difference between them, and add it to profit
    while i < prices.length
        if prices[i] > prices[i-1]
            profit += prices[i] - prices[i-1]
        end
        i += 1
    end

    profit
end

# All you really need to do is make a profit anytime the next share price is higher than the current share price.
# You don't need to reach the maximum price point on a run of shares that keep increasing,
# you can just calculate each step along the way, put them together, and that's the same as calculating
# the difference between the lowest point and the highest point.
# If the share prices are [1, 3, 9], 9 - 1 = 8. However, (3-1)+(9-3) = 8 as well.
# So just add profit for every little sub peak, and there you have it.
