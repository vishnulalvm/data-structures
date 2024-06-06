class Node{
  Node? next;
  int? data;
  Node(this.data);
}

class queue{
  Node? front;
  Node? rear;
  void enqueue (int data){

    Node? newNode = Node(data);
    if(front == null){
      front = rear= newNode;
    }
  }
}