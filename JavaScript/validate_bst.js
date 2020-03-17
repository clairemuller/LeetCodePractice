// NOT SOLVED

// Given a binary tree, determine if it is a valid binary search tree (BST).
//    5
//   / \
//  1   4
//     / \
//    3   6
// returns false

class TreeNode {
  constructor(val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }
}

let node4 = new TreeNode(4);
let node1 = new TreeNode(1);
let node11 = new TreeNode(1);
let node5 = new TreeNode(5);
// let node6 = new TreeNode(6);
node4.left = node1;
node4.right = node5;
node1.right = node11;
// node4.right = node6;

// first attempt
// if null node or leaf node, return true
// if node has left & right nodes,
// check if left is greater than or right is less than the current node, return false
// otherwise, recursively check both the left and right nodes
var isValidBST = function(root) {
  if (!root || (!root.left && !root.right)) {
    return true;
  }
  if (root.left && root.right) {
    if (root.left.val > root.val || root.right.val < root.val) {
      return false;
    } else {
      isValidBST(root.left);
      isValidBST(root.right);
    }
    return true;
  }
  return false;
};

var isValidBST = function(root) {
  if (!root || (!root.left && !root.right)) {
    return true;
  }
  if (root.left) {
    if (root.left.val >= root.val) {
      root.left = null;
    }
    isValidBST(root.left)
  }
  if (root.right) {
    if (root.right.val <= root.val) {
      root.right = null;
    }
    isValidBST(root.right)
  }
  return true;
};

isValidBST(node5)
