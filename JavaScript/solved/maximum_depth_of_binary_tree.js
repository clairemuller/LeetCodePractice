// SOLVED

// Given a binary tree, find its maximum depth.
// The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

//    3
//  /  \
// 9   20
//    /  \
//   15   7
// return its depth = 3;

class TreeNode {
  constructor(val) {
    this.val = val;
    this.left = null;
    this.right = null;
  }
}

let node3 = new TreeNode(3);
let node9 = new TreeNode(9);
let node20 = new TreeNode(20);
let node15 = new TreeNode(15);
let node7 = new TreeNode(7);
node3.left = node9;
node3.right = node20;
node20.left = node15;
node20.right = node7;

// recursion
var maxDepth = function(root) {
  if (!root) return 0;
  let depthLeft = maxDepth(root.left);
  let depthRight = maxDepth(root.right);
  return Math.max(depthLeft, depthRight) + 1;
};

maxDepth(node3);
