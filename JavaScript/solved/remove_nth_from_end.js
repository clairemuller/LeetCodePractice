// SOLVED

// Given a linked list, remove the n-th node from the end of list and return its head.
// example:
// Given linked list: 1->2->3->4->5, and n = 2.
// After removing the second node from the end, the linked list becomes 1->2->3->5.

class LinkedListNode {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}

const a = new LinkedListNode('a');
const b = new LinkedListNode('b');
const c = new LinkedListNode('c');
const d = new LinkedListNode('d');
const e = new LinkedListNode('e');

a.next = b;
b.next = c;
c.next = d;
d.next = e;

// initial solution
var removeNthFromEnd = function(head, n) {
  // if only one node, set it to null
  if (!head.next) {
    return head = null;
  }
  // create a stick that is n+1 nodes long
  let start = head;
  let end = head;

  while (n > 0) {
    end = end.next;
    n--;
  }

  if (!end) {
    // if end is null, head is the node to remove
    head = head.next;
  } else {
    // move down the list until reaching the end
    while (end.next != null) {
      start = start.next;
      end = end.next;
    }
    // start.next is the node to remove
    start.next = start.next.next;
  }

  return head;
};

removeNthFromEnd(a, 2)
