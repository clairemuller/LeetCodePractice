// SOLVED

// Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.
// The linked list will have at least two elements.
// All of the nodes' values will be unique.
// The given node will not be the tail and it will always be a valid node of the linked list.
// Do not return anything from your function.

// Input: head = [4,5,1,9], node = 5
// Output: [4,1,9]

class LinkedListNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

let a = new LinkedListNode(4);
let b = new LinkedListNode(5);
let c = new LinkedListNode(1);
let d = new LinkedListNode(9);
let e = new LinkedListNode(7);

a.next = b;
b.next = c;
c.next = d;
d.next = e;

// my solution
var deleteNode = function(node) {
  // until we reach the last node
  while (node.next != null) {
    // change current node's value to the next node's value
    node.val = node.next.val;
    if (node.next.next === null) {
      // if we're on the second to last node remove the last node
      node.next = null
    } else {
      // otherwise, go to next node
      node = node.next;
    }
  };
};

// other solution, works but leaves a node floating
var deleteNode = function(node) {
  node.val = node.next.val;
  node.next = node.next.next;
};

deleteNode(b)
