// SOLVED

// Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
// You may assume the string contains only lowercase letters.

// s = "leetcode"
// return 0.
//
// s = "loveleetcode",
// return 2.

// first attempt
// turn string into array, iterate through and count each letter
// iterate through again until we find the first letter with a count of 1
var firstUniqChar = function(s) {
  let count = {};
  let arr = s.split('');

  for (letter of arr) {
    count[letter] = (count[letter] || 0) + 1;
  }

  for (letter of arr) {
    if (count[letter] === 1) {
      return arr.indexOf(letter);
    }
  }

  return -1;
};

let s = "loveleetcode";
firstUniqChar(s);
