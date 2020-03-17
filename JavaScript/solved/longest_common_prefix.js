// SOLVED

// Write a function to find the longest common prefix string amongst an array of strings.
// If there is no common prefix, return an empty string "".
// All given inputs are in lowercase letters a-z.

// Input: ["flower","flow","flight"]
// Output: "fl"

// first attempt
// horizontal scanning
// set prefix equal to the first string
// start for loop at next string
// start comparing each letter of prefix with current string
// if letters are different, change prefix
// this solution goes through each string one by one
var longestCommonPrefix = function(strs) {
  if (!strs || !strs.length) {
    return "";
  }
  let prefix = strs[0];

  for (var i = 1; i < strs.length; i++) {
    let currStr = strs[i];
    for (let j = 0; j < prefix.length; j++) {
      if (prefix[j] != currStr[j]) {
        prefix = currStr.slice(0, j);
      }
    }
  }
  return prefix;
};

// second attempt
// vertical scanning
// save first string to variable, easier to read
// start looping through each letter of first string
// comparing it to each string's letter at index i
var longestCommonPrefix = function(strs) {
  let firstStr = strs[0] || "";

  for (let i = 0; i < firstStr.length; i++) {
    for (let j = 1; j < strs.length; j++) {
      let currStr = strs[j]
      if (firstStr[i] != currStr[i]) {
        return currStr.slice(0, i);
      }
    }
  }
  return firstStr;
}

// let strs = ["flower","flow","flight"];
// let strs = ["ca","a"]
let strs = ['a','a','aa']
longestCommonPrefix(strs);
