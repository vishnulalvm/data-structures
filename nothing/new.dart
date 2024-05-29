class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SingleList {
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

  void reveseList(Node? n) {
    if (n == null) {
      return;
    }
    reveseList(n.next);
    print(n.data);
  }
}

void main() {
  SingleList list = SingleList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.reveseList(list.head);
}
