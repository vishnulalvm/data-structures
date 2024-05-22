class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyLL {
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

  void printNode(Node? node) {
    if (node == null) {
      return;
    }
    printNode(node.next);
    print(node.data);
  }

  
}

void main() {
  SinglyLL list = SinglyLL();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.printNode(list.head);
}
