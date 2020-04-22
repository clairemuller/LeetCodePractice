# https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1214/

# Given a linked list, return the node where the cycle begins. If there is no cycle, return null.
# To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed)
# in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.
# Note: Do not modify the linked list.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# initial solution
# create a hash of nodes that we've seen, where node = true
# go through the list until we reach the end,
# checking each node we encounter against the nodes that we've seen
# if we have seen a node, we can simply return it
# otherwise, if we never encounter a node twice, the list is not cyclic, ie the loop will break
# runtime O(n), space O(n)
def detectCycle(head)
    if !head || !head.next
        return nil
    end

    node = head
    seen = {}

    until !node.next
        if seen[node]
            return node
        end
        seen[node] = true
        node = node.next
    end

    return nil
end

# optimized
# use slow and fast pointers
# first determine if there is a cycle
# slow moves once, fast moves twice, until they meet
# then, reset slow to head
# move slow and fast by one until they meet
# where they meet will be the start of the loop
def detectCycle(head)
    if !head || !head.next
        return nil
    end

    fast = helper(head)
    if !fast
        return nil
    end

    # if we've reached this point, we know that we have a loop,
    # where fast is at a node inside the loop.
    # the distance from head to start of loop
    # is equal to the distance from fast to start of loop
    # thus, moving slow and fast forward once
    # they will meet at the start of the loop
    
    slow = head
    
    while slow != fast
        slow = slow.next
        fast = fast.next
    end

    slow
end

# determine if there is a cycle
# if so, return the node where slow and fast meet
def helper(head)
    # both pointers have to start at head
    slow, fast = head, head
    
    while slow && fast && fast.next
        slow = slow.next
        fast = fast.next.next
        if slow == fast
            return fast
        end
    end

    return nil
end

node6 = ListNode.new(6)
node1 = ListNode.new(1)
node4 = ListNode.new(4)
node7 = ListNode.new(7)

node6.next = node1
node1.next = node4
node4.next = node7
node7.next = node1

detectCycle(node6)
