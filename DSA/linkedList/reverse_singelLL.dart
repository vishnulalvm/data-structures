class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class SingleLL{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node? newNode =Node(data);
    if(head == null){
      head = newNode;
    }
    else{ 
      tail!.next = newNode;

    }
    tail = newNode;

  }

  void reveseList(){
    if(head == null){
      return;
    }
    Node? prev;
    Node? current= head;
    Node? next;

    while(current !=null){
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;

    }
current = prev;
    while(current != null){
      print(current.data);
      current= current.next;
    }
  }

  void printReverse(Node? n){
    if(n==null){
      return;
    }
     
    printReverse(n.next);
     print(n.data);
  
    
  }

}

void main(){
  SingleLL list = SingleLL();
  list.addNode(10);
   list.addNode(20);
    list.addNode(30);
     list.addNode(40);
      list.addNode(50);
// list.reveseList();
list.printReverse(list.head);
}