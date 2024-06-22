class Node {
  Node? next;
  int? data;
  Node(this.data);
}

class SingleLL {
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

  void printLL(Node? n) {
    if (n == null) {
      return;
    }
    print(n.data);
    printLL(n.next);
  }

  void removeDuplicate() {
    Node? temp = head;
    while (temp != null && temp.next != null) {
      if (temp.data == temp.next!.data) {
        temp.next = temp.next!.next;
      }
      temp = temp.next;
    }
  }

  void printduplicate(Node? n) {
    if (n == null) {
      return;
    }
    print(n.data);
    printLL(n.next);
  }
}

void main() {
  SingleLL list = SingleLL();
  list.addNode(1);
  list.addNode(2);
  list.addNode(2);
  list.addNode(1);
  list.addNode(4);
  list.addNode(1);
  list.printLL(list.head);
  list.removeDuplicate();
  print('rempved');
  list.printduplicate(list.head);
}
