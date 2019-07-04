// SOLVED

// Given two strings s and t , write a function to determine if t is an anagram of s.
// Input: s = "anagram", t = "nagaram"
// Output: true

let s = 'string';
let t = 'rtigns';

// original solution
var isAnagram = function(s, t) {
  // can't be anagrams if lengths aren't equal
  if (s.length != t.length) {
    return false;
  };
  // turn each string into an array and sort it
  s = s.split('').sort();
  t = t.split('').sort();
  // check that each value is the same
  // this can be avoided by turning sorted arrays back into strings
  for (let i = 0; i < s.length; i++) {
    if (s[i] != t[i]) {
      return false;
    }
  }
  return true;
};

// one line solution
// turning sorted arrays back into strings allows comparison
var isAnagram = function(s, t) {
  return s.split('').sort().join('') == t.split('').sort().join('')
};

// sort is expensive, solution using hashmap
var isAnagram = function(s, t) {
  if (s.length != t.length) {
    return false;
  };
  // create empty object
  let count = {};
  // iterate through one string, counting letters
  for (let i = 0; i < s.length; i++) {
    count[s[i]] = (count[s[i]] || 0) + 1
  };
  // iterate through other string, checking the object has letter key
  for (let i = 0; i < t.length; i++) {
    if (!count[t[i]]) {
      return false
    } else {
      // if letter is in object, subtract count
      count[t[i]] -= 1
    }
  }
  return true
};

// same as above but using for of syntax
var isAnagram = function(s, t) {
  if (s.length != t.length) {
    return false;
  };
  let count = {};
  for (ll of s) {
    count[ll] = (count[ll] || 0) + 1
  }
  for (ll of t) {
    if (!count[ll]) {
      return false
    } else {
      count[ll] -= 1
    }
  }
  return true
};
