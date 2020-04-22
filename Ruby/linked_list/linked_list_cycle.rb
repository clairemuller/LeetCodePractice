# https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1212/

# Given a linked list, determine if it has a cycle in it.
# To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed)
# in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# use two pointers to loop through list
# start both slow and fast pointers at head
# on each loop, slow moves forward once, fast moves forward twice
# if the list is not cyclic, fast will reach the end, ie become nil
# if it is cyclic, fast will eventually catch up to slow, ie they will be equal
# runtime O(n), space O(1)
def hasCycle(head)
    # check that we can actually create the fast pointer, ie no nil
    if !head || !head.next
        return false
    end

    slow, fast = head, head

    while slow && fast && fast.next
        slow = slow.next
        fast = fast.next.next
        if slow == fast
            return true
        end
    end

    return false
end
