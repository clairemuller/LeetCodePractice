// SOLVED

// Given an array of integers, return indices of the two numbers such that they add up to a specific target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// Input: nums = [2, 7, 11, 15], target = 9
// Output: [0, 1]
// Because nums[0] + nums[1] = 2 + 7 = 9,

// initial solution
var twoSum = function(nums, target) {
  for (let i = 0; i < nums.length; i++) {
    for (let j = i+1; j < nums.length; j++) {
      if (nums[i] + nums[j] === target) {
        return [i, j];
      }
    }
  };
  return [];
};

let nums = [2, 7, 11, 15];
let target = 9;
twoSum(nums, target);
