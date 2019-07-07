// SOLVED

// Given an array, rotate the array to the right by k steps, where k is non-negative.
// Input: [1,2,3,4,5,6,7] and k = 3
// Output: [5,6,7,1,2,3,4]

var rotate = function(nums, k) {
  while (k > 0) {
    let num = nums.pop();
    nums.unshift(num)
    k--
  }
  return nums
};
