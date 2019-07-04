// SOLVED

// Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
// Input: "A man, a plan, a canal: Panama"
// Output: true

// initial solution, slow runtime
// shift and pop are expensive, has to update index every time
var isPalindrome = function(s) {
  let arr = s.toLowerCase().replace(/\W/g, '').split('');

  while (arr.length > 1) {
    if (arr.shift() != arr.pop()) {
      return false;
    };
  };

  return true;
};

// use for loop to compare
var isPalindrome = function(s) {
  let arr = s.toLowerCase().replace(/\W/g, '').split('');

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] != arr[arr.length-i-1]) {
      return false;
    }
  }

  return true;
};
