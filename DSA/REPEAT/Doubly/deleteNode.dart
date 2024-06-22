class Node {
  int data;
  Node? prev;
  Node? next;

  Node(this.data);
}




class DoublyLinkedList {
  Node? head;

  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
      newNode.prev = current;
    }
  }

  void deleteNode(int targetValue) {
    if (head == null) return;

    Node? current = head;

    // Find the node with the target value
    while (current != null && current.data != targetValue) {
      current = current.next;
    }

    // If the node was not found, return
    if (current == null) return;

    // If the node to be deleted is the head node
    if (head == current) {
      head = current.next;
    }

    // If the node to be deleted is not the last node
    if (current.next != null) {
      current.next!.prev = current.prev;
    }

    // If the node to be deleted is not the first node
    if (current.prev != null) {
      current.prev!.next = current.next;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}
