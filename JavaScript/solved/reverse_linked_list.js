// SOLVED

// Input: 1->2->3->4->5->NULL
// Output: 5->4->3->2->1->NULL

class LinkedListNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

let a = new LinkedListNode(1);
let b = new LinkedListNode(2);
let c = new LinkedListNode(3);
let d = new LinkedListNode(4);
let e = new LinkedListNode(5);

a.next = b;
b.next = c;
c.next = d;
d.next = e;

var reverseList = function(head) {
  if (head === null) {
    return head
  }
  let node = head;
  let previous, next;
  while (node) {
    // save node.next before overwriting it
    next = node.next;
    // overwrite node.next with previous node
    node.next = previous;
    // step forward in the list
    previous = node;
    node = next;
  }
  return previous;
}

reverseList(a)
