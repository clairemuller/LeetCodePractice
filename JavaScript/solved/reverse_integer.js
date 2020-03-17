// SOLVED

// Given a 32-bit signed integer, reverse digits of an integer.
// Input: 123
// Output: 321

var reverse = function(x) {
  let sign = x < 0;
  x = parseInt(x.toString().split('').reverse().join(''), 10);
  if (x > Math.pow(2, 31)) {
    return 0
  } else {
    if (sign) {
      return -x
    }
    return x;
  }
};

// same as above but more clear
// first check if x is negative, save to boolean
// convert x to string, split into array, reverse, convert to string
// convert to integer, set radix/base to 10 because math
// if new number is greater than 32-bits, return 0
// else return reversed, check isNegative
var reverse = function(x) {
  let isNegative = x < 0;
  let reversed = parseInt(x.toString().split('').reverse().join(''), 10);

  if (reversed > Math.pow(2, 31)) {
    return 0
  } else {
    return isNegative ? -reversed : reversed
  }
};
