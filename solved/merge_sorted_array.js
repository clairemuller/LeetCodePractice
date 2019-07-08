// SOLVED

// Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
// The number of elements initialized in nums1 and nums2 are m and n respectively.
// You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.

// Input:
// nums1 = [1,2,3,0,0,0], m = 3
// nums2 = [2,5,6],       n = 3
// Output: [1,2,2,3,5,6]

// initial solution
var merge = function(nums1, m, nums2, n) {
  let index = 0;
  // until we reach the end of nums2
  while (n-1 >= index) {
    // add each num from nums2 to nums1
    nums1[m] = nums2[index];
    // move forward in both arrays
    index++;
    m++;
  }
  nums1.sort((a,b) => a-b)
};

let nums1 = [1,2,3,0,0,0];
let m = 3;
let nums2 = [2,5,6]
let n = 3;

merge(nums1, m, nums2, n)
