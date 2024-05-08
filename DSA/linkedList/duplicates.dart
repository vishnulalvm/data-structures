class Node {
  Node? next;
  int? data;
  Node(this.data);
}

class SingleLL{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node? newNode= Node(data);
    if(head ==null){
      head =newNode;

    }else{
      tail!.next =newNode;
    }
    tail =newNode;
  }
void removeDups(){
   Node? current =head;
   while(current!.next != null){
    if(current.data == current.next!.data){
      current.next = current.next!.next;
    }else{
    current = current.next;
   }
   }
}

void printList(){
  Node? temp = head;
  if(head == null){
    print('empty');
  }
  while(temp != null){
    print(temp.data);
    temp = temp.next;
  }
}
}

void main(){
  SingleLL list = SingleLL();
  list.addNode(1);
  list.addNode(1);
  list.addNode(1);
  list.addNode(3);
  list.addNode(4);

 
list.removeDups();
  list.printList();
}