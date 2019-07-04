// SOLVED

// Write a function that reverses a string. The input string is given as an array of characters char[].
// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
// You may assume all the characters consist of printable ascii characters.
// Input: ["h","e","l","l","o"]
// Output: ["o","l","l","e","h"]

// easy solution using reverse
var reverseString = function(s) {
  return s.reverse();
};

// solution not using reverse
var reverseString = function(s) {
  let i = 0;
  let j = s.length-1;
  while (i <= j) {
    let store = s[i];
    s[i] = s[j];
    s[j] = store;
    i++;
    j--;
  }
  return s;
};

let arr = ["h","e","l","l","o"];
reverseString(arr);
