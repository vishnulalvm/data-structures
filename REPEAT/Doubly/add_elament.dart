class Node {
  int? data;
  Node? prev;
  Node? next;
  Node(this.data);
}

class doubleLL {
  Node? head;
  Node? tail;
  void addNde(int data, int target) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

//  this is the function for delete a target node

  void deleteNode(int target) {
    Node? temp = head;
    while (temp != null && temp.data != target) {
      temp = temp.next;
    }
    if (temp == tail) {
      temp!.prev!.next = null;
      tail = temp.prev;
    }
    if (temp!.data == target) {
      temp.next!.prev = temp.prev;
      temp.prev!.next = temp.next;
    }
  }

  void addNodeBegin(int data) {
    Node? newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      head!.prev = newNode;
      newNode.next = head;
      head = newNode;
    }
  }

  void addNodeEnd(int data) {
    Node? newNode = Node(data);
    tail!.next = newNode;
    newNode.prev = tail;
    tail = newNode;
  }

  // Remove Duplicates


}

// void main() {
//   doubleLL list = doubleLL();
//   list.addNde(data, target)
// }
