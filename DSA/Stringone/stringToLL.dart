class Node {
  String? data;
  Node? next;
  Node(this.data);
}

class SingleStringLL {
  Node? head;
  Node? tail;

  void addNodes(String data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
    }
    tail = newNode;
  }

  void displayNode(Node? node) {
    if (node == null) {
      return;
    }
    print(node.data);
    displayNode(node.next);
  }
}

void main() {
  SingleStringLL list = SingleStringLL();
  String name = 'vishnulal';
  for (int i = 0; i <= name.length - 1; i++) {
    list.addNodes(name[i]);
  }
  list.displayNode(list.head);
}
