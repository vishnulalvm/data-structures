class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class CircularLL {
  Node? head;
  Node? tail;
  void addNodes(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
    tail!.next = head;
  }

  bool checkCircular() {
    Node? fast = head;
    Node? slow = head;
    while (fast != null && fast.next != null) {
      if (fast == slow) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  CircularLL list = CircularLL();
  list.addNodes(10);
  list.addNodes(10);
  list.addNodes(20);
  list.addNodes(30);
  list.addNodes(40);
  print(list.checkCircular());
}
