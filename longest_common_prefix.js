// NOT SOLVED

// Write a function to find the longest common prefix string amongst an array of strings.
// If there is no common prefix, return an empty string "".
// All given inputs are in lowercase letters a-z.

// Input: ["flower","flow","flight"]
// Output: "fl"

// first attempt
// set prefix equal to the first string
// start for loop at next string
// start comparing each letter
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

// let strs = ["flower","flow","flight"];
let strs = ["ca","a"]
longestCommonPrefix(strs);
