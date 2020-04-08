require_relative "../linked_list.rb"

# https://leetcode.com/explore/featured/card/30-day-leetcoding-challenge/529/week-2/3290/
# Day 8/30

# Given a non-empty, singly linked list with head node head, return a middle node of linked list.
# If there are two middle nodes, return the second middle node.
# The number of nodes in the given list will be between 1 and 100.

# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.

# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.

# initial solution
# traverse list to get the total length, len
# traverse again to the node at len/2, return it
def middle_node1(head)
    len = 0
    curr = head

    # find the total length of the list
    while curr != nil
        len += 1
        curr = curr.next
    end

    curr = head
    (len/2).times do
        curr = curr.next
    end

    curr
end

# using two pointers
def middle_node2(head)
    slow = fast = head

    while fast != nil && fast.next != nil
        slow = slow.next
        fast = fast.next.next
    end

    slow
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6

print "#{return_list(node1)}\n"
middle = middle_node2(node1)
puts middle.value
