// NOT SOLVED

// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
// You must do this in-place without making a copy of the array.
// Minimize the total number of operations.

// Input: [0,1,0,3,12]
// Output: [1,3,12,0,0]

// first attempt
// save the original nums length, iterate over nums array
// if element is 0, splice it out
// then add zeroes until nums is original length

// splicing the zero and pushing it onto the array doesn't work
// concat doesn't work
// nums.push(nums.splice(i, 1))
// returns [1,3,12,[0],[0]]
var moveZeroes = function(nums) {
  let i = 0;
  let l = nums.length;

  while (i < nums.length) {
    if (nums[i] === 0) {
      nums.splice(i, 1);
    } else {
      i++;
    }
  }

  while (nums.length < l) {
    nums.push(0);
  }

  return nums;
};

// second attempt
// instead of checking for zeroes and moving them to the end
// check for non-zeroes and swap them with previously seen zeroes
var moveZeroes = function(nums) {
  let i = 0;
  let zeroI = 0;

  while (i < nums.length) {
    if (nums[i] != 0) {
      let tmp = nums[zeroI];
      nums[zeroI] = nums[i];
      nums[i] = tmp;
      zeroI++;
    }
    i++;
  }

  return nums;
};

// same using for loop
var moveZeroes = function(nums) {
  let zeroI = 0;

  for (let i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      let tmp = nums[zeroI];
      nums[zeroI] = nums[i];
      nums[i] = tmp;
      zeroI++;
    }
  }

  return nums;
};

let nums = [0,1,0,3,12];
moveZeroes(nums);
