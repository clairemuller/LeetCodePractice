# SOLVED

# Given a linked list, remove the n-th node from the end of list and return its head.
# Given n will always be valid.
# Could you do this in one pass?

# Example:
# Given linked list: 1->2->3->4->5, and n = 2.
# After removing the second node from the end, the linked list becomes 1->2->3->5.

# Definition for singly-linked list.
class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end
end

def return_list(head)
    arr = []
    curr = head
    while curr.next != nil
        arr << curr.value
        curr = curr.next
    end
    arr << curr.value
    arr
    print "list: #{arr}\n"
end

# create a stick that is n nodes long, checking for nil node
# if we hit a nil node, then there's no solution, return -1
# once we have our stick, move it forward until we reach the end
def remove_nth_from_end(head, n)
    first, last = head, head

    # create stick with length of n by moving last forward n times
    # for i in 0...n
    n.times do |i|
        # if we're at the last node, check that we're at n-1 loop
        if last.next == nil
            if i == n-1
                # remove head
                return head.next
            else
                # out of bounds
                return head
            end
        end
        last = last.next
    end
    
    # move stick forward until we reach the last node
    while last.next != nil
        first = first.next
        last = last.next
    end

    # first is now pointing at the node to be deleted, overwrite it
    first.next = first.next.next
    head
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

return_list(node1)
node1 = remove_nth_from_end(node1, 6)
return_list(node1)
