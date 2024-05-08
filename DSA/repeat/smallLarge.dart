class Node { 
  int? data;
  Node? next;
  Node(this.data);
}

class SingleLL{
  Node? head;
  Node? tail;
   
   void addNode(int data){
    Node? newNode = Node(data);
    if(head ==null){
      head = newNode;
    }
    else {
      tail!.next = newNode;
    }
    tail =newNode;
   }
int smallest (){
  if(head == null){
    return -1;
  }
  Node? temp = head;
   while(temp != null){
    
   }
  return 0;
}
}