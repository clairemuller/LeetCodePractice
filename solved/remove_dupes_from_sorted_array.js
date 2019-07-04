// SOLVED

// Given a sorted array nums, remove the duplicates in-place such that each element appears only once and return the new length.
// Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

let arr = [0,0,1,1,1,2,2,3,3,4];

var removeDuplicates = function(nums) {
  for (let i = 1; i < nums.length; i++) {
    if (nums[i-1] === nums [i]) {
      nums.splice(i-1, 1);
      i -= 1;
    }
  }
  return nums.length;
};

removeDuplicates(arr);
