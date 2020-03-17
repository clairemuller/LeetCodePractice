// SOLVED

// Given an array of integers, find if the array contains any duplicates.
// Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

var containsDuplicate = function(nums) {
  let obj = {};
  for (let i = 0; i < nums.length; i++) {
    if (obj[nums[i]]) {
      return true;
    } else {
      obj[nums[i]] = true;
    }
  }
  return false;
};

var containsDuplicate = function(nums) {
  let obj = {};
  for (num of nums) {
    if (obj[num]) {
      return true;
    } else {
      obj[num] = true;
    }
  }
  return false;
};
