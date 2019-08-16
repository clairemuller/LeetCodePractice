// NOT SOLVED

// Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

// Input: 1->2->4, 1->3->4
// Output: 1->1->2->3->4->4

class LinkedListNode {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
}

let one1 = new LinkedListNode(1)
let one2 = new LinkedListNode(2)
let one3 = new LinkedListNode(4)
one1.next = one2;
one2.next = one3;
let two1 = new LinkedListNode(1)
let two3 = new LinkedListNode(3)
let two4 = new LinkedListNode(4)
two1.next = two3;
two3.next = two4;

var mergeTwoLists = function(l1, l2) {
  let l3 = new LinkedListNode(null);
  let curr = l3;

  while (l1 && l2) {
    if (l1.val <= l2.next) {
      curr = l1;
      l1 = l1.next;
    } else {
      curr = l2;
      l2 = l2.next;
    }
    l3 = curr;
    curr = curr.next;
  }

  return l3;
};

mergeTwoLists(one1, two1)
