// SOLVED

// Given a non-empty array of integers, every element appears twice except for one. Find that single one.
// Input: [4,1,2,1,2]
// Output: 4

var singleNumber = function(nums) {
  let obj = {};
  for (let i = 0; i < nums.length; i++) {
    if (obj[nums[i]]) {
      obj[nums[i]] += 1
    } else {
      obj[nums[i]] = 1
    }
  }
  return parseInt(Object.keys(obj).find(key => obj[key] === 1))
};
