// NOT SOLVED

// Given a 32-bit signed integer, reverse digits of an integer.
// Input: 123
// Output: 321

var reverse = function(x) {
  x = parseInt(x.toString().split('').reverse().join(''));
  if (Math.abs(x) > 2e31) {
    return 0
  } else {
    return x
  }
};

let x = 128938498340988773884849328490840955484989780;
reverse(num);


x = x.toString().split('').reverse().join('');
