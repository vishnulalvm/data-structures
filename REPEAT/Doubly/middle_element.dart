class Node {
  int? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLL {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void displayNode() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  int? midileValue() {
    Node? fast = head;
    Node? slow = head;

    if (head == null) {
      return 0;
    }
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow!.data;
  }

  void removeDuplicates() {
    Node? temp = head;
    Node? next = temp;

    while (temp != null) {
      while (next!.next != null) {
        if (temp.data == next.data) {
          next.next = next.next!.next;
        }
      }
    }
    temp = temp!.next;
  }
}

void main() {
  DoublyLL list = DoublyLL();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.displayNode();
  print('midvalue');
  print(list.midileValue());
  list..removeDuplicates();
  print('duplicata');
  list.displayNode();
}
