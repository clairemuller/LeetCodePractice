# https://leetcode.com/explore/learn/card/linked-list/209/singly-linked-list/1290/

class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end
end

class MyLinkedList
    def initialize()
        @head = Node.new(nil)
    end

    # add a node to the end of the list
    def add_at_tail(value)
        node = @head
        while node.next != nil
            node = node.next
        end
        node.next = Node.new(value)
    end

    # add a node to beginning of list
    def add_at_head(value)
        newNode = Node.new(value)
        if @head.value != nil
            newNode.next = @head
        end
        @head = newNode
    end

    # add a node of value val before the index-th node in the linked list
    # if index == length of linked list, the node will be appended to the end of linked list
    # if index > length, the node will not be inserted
    def add_at_index(index, value)
        if index == 0
            return add_at_head(value)
        end

        newNode = Node.new(value)
        prev = nil
        node = @head

        while index > 0
            # if we're on the last node and the index is greater than one
            # ie the index is greater than the length
            if !node.next && index > 1
                return
            end
            prev = node
            node = node.next
            index -= 1
        end

        newNode.next = node
        prev.next = newNode
    end

    # find and delete a node with given value from the list
    def delete(value)
        if @head.value == value
            @head = @head.next
        else
            node = @head
            while node.next.value != value && node.next != nil
                node = node.next
            end
            node.next = node.next.next
        end
        @head
    end

    # delete the index-th node in the linked list, if the index is valid
    def delete_at_index(index)
        if index == 0
            @head = @head.next
            return
        end

        node = @head
        prev = nil
        while index > 0
            # if the current node is the last, the index is invalid
            if !node.next
                return
            end
            prev = node
            node = node.next
            index -= 1
        end
        prev.next = node.next
    end

    # get the value of the index-th node in the linked list; if the index is invalid, return -1
    def get(index)
        # could do this but not the most efficient as we're going through the whole list:
        # self.return_list[index].value
        node = @head
        index.times do
            if !node.next
                return -1
            end
            node = node.next
        end
        node.value
    end

end
