# https://leetcode.com/explore/learn/card/linked-list/219/classic-problems/1205/

# Reverse a singly linked list.

# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL

# A linked list can be reversed either iteratively or recursively. Could you implement both?

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def return_list_values(head)
    arr = []
    curr = head
    while curr.next != nil
        arr << curr.val
        curr = curr.next
    end
    arr << curr.val
end

# using the orginal head node, move every next node to the front
# save the newHead (node.next)
# overwrite it (node.next = node.next.next)
# now move the newHead to the beginning (newHead.next = head)
# and finish the loop by resetting the head (head = newHead)
# runtime O(n), space O(1)
def reverse_list(head)
    return nil if !head

    node = head

    # node is always pointing at the original head
    while node.next
        newHead = node.next
        node.next = node.next.next
        newHead.next = head
        head = newHead
    end

    head
end

# could also solve this problem with recursion
# runtime & space would be O(n)
