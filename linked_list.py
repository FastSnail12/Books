class Node:
    def __init__(self, data, next=None):
        self.data = data
        self.next = next

    def get_data(self):
        return self.data

    def set_data(self, data):
        self.data = data

    def get_next_node(self):
        return self.next

    def set_next_node(self, node):
        self.next = node


class LinkedList:
    def __init__(self, head=None):
        self.head = head
        self.size = 0

    def get_size(self):
        return self.size

    def add_node(self, data):
        node = Node(data, self.head)
        self.head = node
        self.size += 1

    def remove_node(self, value):
        prev = None
        curr = self.head
        while curr:
            if curr.get_data() == value:
                if prev:
                    prev.setNextNode(curr.get_next_node())
                else:
                    self.head = curr.get_next_node()

            prev = curr
            curr = curr.get_next_node()

    def findNode(self, value):
        curr = self.head
        while curr:
            if curr.get_data() == value:
                return True
            else:
                curr = curr.get_next_node()
        return False

    def print_ll(self):
        curr = self.head
        while curr:
            print(curr.data)
            curr = curr.get_next_node()


if __name__ == "__main__":
    myList = LinkedList()
