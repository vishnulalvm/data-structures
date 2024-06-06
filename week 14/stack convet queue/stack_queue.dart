class Node {
  int value;
  Node? next;

  Node(this.value, [this.next]);
}

class Stack {
  Node? head;

  void push(int value) {
    head = Node(value, head);
  }

  int pop() {
    if (head == null) {
      return -1;
    }
    int value = head!.value;
    head = head!.next;
    return value;
  }

  bool isEmpty() {
    return head == null;
  }
}

class Queue {
  Node? head;
  Node? tail;

  void enqueue(int value) {
    Node newNode = Node(value);
    if (tail != null) {
      tail!.next = newNode;
    }
    tail = newNode;
    if (head == null) {
      head = newNode;
    }
  }

  int dequeue() {
    if (head == null) {
      return -1;
    }
    int value = head!.value;
    head = head!.next;
    if (head == null) {
      tail = null;
    }
    return value;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
    print('');
  }
}

Queue convertToQueue(Stack stack) {
  Queue queue = Queue();
  Stack tempStack = Stack();

  while (!stack.isEmpty()) {
    tempStack.push(stack.pop());
  }

  while (!tempStack.isEmpty()) {
    queue.enqueue(tempStack.pop());
  }

  return queue;
}

void main() {
  Stack stack = Stack();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  Queue queue = convertToQueue(stack);
  queue.display();

  queue.dequeue();
  queue.display();
}
