// SOLVED

// Given an array of integers, return indices of the two numbers such that they add up to a specific sum.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// Input: nums = [2, 7, 11, 15], sum = 9
// Output: [0, 1]
// Because nums[0] + nums[1] = 2 + 7 = 9

// initial solution, nested for loops, O(n2)
var twoSum = function(nums, sum) {
  for (let i = 0; i < nums.length; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] === sum) {
        return [i, j];
      }
    }
  };
  return [];
};

// solution using hash map
var twoSum = function(nums, sum) {
  let obj = {};

  for (let i = 0; i < nums.length; i++) {
    // save target number to variable, easier to read
    let target = sum - nums[i];

    // if the object has a key of the target number
    // return it's index (the value) and current index of nums
    if (obj.hasOwnProperty(target)) {
      return [obj[target], i];
    }

    // otherwise, create key value pair of the current number and its index
    obj[nums[i]] = i;
  }
  return [];
};

let nums = [2, 7, 11, 15];
let sum = 9;
twoSum(nums, sum);
