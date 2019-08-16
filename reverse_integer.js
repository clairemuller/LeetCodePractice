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
