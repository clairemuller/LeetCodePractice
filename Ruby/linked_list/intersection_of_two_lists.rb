# https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1215/

# Write a program to find the node at which the intersection of two singly linked lists begins.
# If the two linked lists have no intersection at all, return null.
# The linked lists must retain their original structure after the function returns.
# You may assume there are no cycles anywhere in the entire linked structure.
# Your code should preferably run in O(n) time and use only O(1) memory.

# Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,0,1,8,4,5], skipA = 2, skipB = 3
# Output: Reference of the node with value = 8

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# go through one of the lists completely
# create a hash to keep track of nodes that we've seen
# then start going through other list,
# checking the hash for each node
# runtime O(n + m), space O(n), where n = listA.length, m = listB.length
def getIntersectionNode(headA, headB)
    return nil if !headA || !headB

    seen = {}

    pointer = headA

    while pointer
        seen[pointer] = true
        pointer = pointer.next
    end

    pointer = headB

    while pointer
        if seen[pointer]
            return pointer
        end
        pointer = pointer.next
    end

    return nil
end

# create two pointers for each list, moving each forward by one in a loop
# once a pointer reaches the end of the list,
# move it to point to the other list's head
# the two pointers will eventually meet
# also keep track of the last element,
# if the lists have different last elements, they don't meet
# runtime O(n + m), space O(1), where n = listA.length, m = listB.length
# it's not pretty but it's honest work
def getIntersectionNode(headA, headB)
    return nil if !headA || !headB

    pA = headA
    pB = headB
    last = ListNode.new(nil)

    loop do
        return pA if pA == pB

        # if we're at the end of listA
        if !pA.next
            if !last.val
                last = pA
            else
                # if last exists, then it's pointing to listB's tail, check that the two are the same
                return nil if last != pA
            end
            pA = headB
        else
            pA = pA.next
        end

        # if we're at the end of listB
        if !pB.next
            if !last.val
                last = pB
            else
                # if last exists, then it's pointing to listB's tail, check that the two are the same
                return nil if last != pB
            end
            pB = headA
        else
            pB = pB.next
        end
    end

end
