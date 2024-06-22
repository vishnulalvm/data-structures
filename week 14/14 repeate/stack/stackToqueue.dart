class Node{
  Node? next;
  int? data;
  Node(this.data);
}
class Stack{
  Node? top;
  void push(int? data){
    Node? newNode =Node(data);
      newNode.next = top;
      top = newNode;
    
  }
  int? pop(){
    if(top ==null){
      return -1;
    }
    int? value = top!.data;
    top =top!.next;
    return value;

  }

  void display(){
    Node? temp = top;
    while(temp !=null){
      print(temp.data);
      temp = temp.next;
    }
  }
}

class Queue{
  Node? front;
  Node? rear;

  void enque(int? data){
    Node? newNode = Node(data);
    if(front ==null){
      front = rear = newNode;
    }else{
      rear!.next =newNode;
      rear = newNode;
    }
  }
  int? dequeue(){
    if(front == null){
      return null;
    }
    int? value =front!.data;
    front = front!.next;
    return value;
  }
}

Stack convertoQueue (Queue queue){
  Stack stack = Stack();


 return stack;

}

void main(){
  Queue ref = Queue();
  ref.enque(10);
  ref.enque(20);
  ref.enque(30);
  ref.enque(40);
  ref.enque(50);
  // Stack stack =convertoQueue(ref);
  // stack.display();

}