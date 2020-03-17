// SOLVED

// Given a non-empty array of digits representing a non-negative integer, plus one to the integer.
// The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.
// You may assume the integer does not contain any leading zero, except the number 0 itself.
// Input: [1,2,3]
// Output: [1,2,4]
// Explanation: The array represents the integer 123.

var plusOne = function(digits) {
  let last = digits.length - 1;
  digits[last] += 1;

  if (digits[last] === 10) {
    digits[last] = 0;
    if (digits.length === 1) {
      digits.unshift(1);
    } else {
      let store = digits[last]
      digits = plusOne(digits.slice(0,-1))
      digits.push(store)
    }
  }
  return digits
};
