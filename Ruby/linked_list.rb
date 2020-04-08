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
end
