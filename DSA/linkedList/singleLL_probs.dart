class Node {
  int? data;
  Node? next;

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
      tail!.next == newNode;
    }
    tail = newNode;
  }

  void printNodes() {
    Node? temp = head;
    if (head == null) {
      print('Node empty');
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void addNodeBegin(int data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  void addNodeEnd(int data) {
    Node? newNode = Node(data);
    Node? temp = tail;

    temp!.next = newNode;
    tail = newNode;
  }

  int? middileNode() {
    Node? fast = head;
    Node? slow = head;
    Node? temp = head;
    while (temp != null) {
      slow = temp.next;
      fast = temp.next!.next;
    }
    return slow!.data;
  }

  void addNodeBefore(int data, int target) {
    Node? newNode = Node(data);
    Node? prev;
    Node? temp = head;
    if (head == null) {
      head = newNode;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev!.next = newNode;
    newNode.next = temp;
  }

  void deleteNode(int target) {
    Node? prev;
    Node? temp = head;
    if (temp!.data == target) {
      temp = temp.next;
      head = temp;
    }
    while (temp != null) {
      if (temp.data == target) {
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev!.next = temp!.next;
  }

  void findElement(int target) {
    Node? temp = head;
    int i = 0;
    while (temp != null) {
      if (temp.data == target) {
        print({i + 1});
      }
      i++;
      temp = temp.next;
    }
  }

  void printReverse() {
    Node? currentNode = head;
    Node? nextNode = head;
    Node? prev;

    while (head != null) {
      nextNode = currentNode!.next;
      prev = currentNode;
      currentNode = nextNode;
    }
    head = prev;
  }

  void removeDuplicate() {
    Node? temp = head;
    Node? prev;
    while (temp != null) {
      prev = temp;
      while (prev!.next != null) {
        if (temp.data == prev.next!.data) {
          prev.next = prev.next!.next;
        }
        prev = prev.next;
      }
      temp = temp.next;
    }
  }

  void printRev(Node? head) {
    if (head == null) {
      return;
    }
    printRev(head.next);
    print(head.data);
    
  }
  
}

void main() {
  SingleLL list = SingleLL();
  // List<int> array = [3, 5, 5, 7, 8, 5, 3, 2, 2];
  // for (int i = 0; i < array.length - 1; i++) {
  //   list.addNode(array[i]);
  // }
  list.addNode(10);
  list.addNode(40);
  list.addNode(20);
  list.addNode(30);
  // list.addNodeBefore(9, 8);
  // list.addNodeEnd(10);
  // list.deleteNode(5);
  // print(list.middileNode());
  list.printReverse();
  list.printNodes();
  
}
