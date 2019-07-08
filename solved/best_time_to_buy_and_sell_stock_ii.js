// SOLVED

// Say you have an array for which the ith element is the price of a given stock on day i.
// Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

let arr = [2,1,2,0,1];

var maxProfit = function(prices) {
  if (prices.length <= 1) {
    return 0
  }

  let profit = 0;
  let i = 0;

  while (i < prices.length - 1) {
    let minimum = null;
    let maximum = null;
    while (i < prices.length - 1 && minimum === null) {
      if (prices[i] < prices[i+1]) {
        minimum = prices[i];
      } else {
        i++
      }
    }
    i++
    while (i <= prices.length - 1 && maximum === null && minimum >= 0) {
      if (i === prices.length - 1) {
        maximum = prices[i];
      }
      else if (prices[i] > prices[i+1]) {
        maximum = prices[i];
      } else {
        i++
      }
    }
    i++
    profit -= minimum;
    profit += maximum;
  }

  return profit
};

maxProfit(arr)
