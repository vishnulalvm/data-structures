class Node{
  Node? next;
  int? data;
  Node(this.data);

}
class Queue{
  Node? rear;
  Node? front;
  void enqueue(int data){
    Node? newNode = Node(data);
    if(front == null){
      rear = front = newNode;
    }
    else{
      rear!.next = newNode;
      rear = newNode;
    }

  }

  void dequeue(){
    if(front == null){
      print('empty');
    }else{
     front = front!.next;
    }
  }

  void printQue(Node? node){
    if(node ==null){
      return;
    }
    print(node.data);
    printQue(node.next);
  }
}

void main(){
  Queue ref = Queue();
  ref.enqueue(10);
  ref.enqueue(20);
  ref.enqueue(30);
  ref.enqueue(40);
  ref.enqueue(50);
  ref.enqueue(60);
  ref.printQue(ref.front);
  ref.dequeue();
    ref.printQue(ref.front);

}