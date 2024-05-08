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

   void addmidvalue(int data){
    Node? newNode = Node(data);
    Node? fast =head;
    Node? slow = head;
    Node? prev;
     
     if(fast == null && fast!.next == null ){
      return;
     }
     while(fast!.next != null && fast != null){
      prev = slow;
      slow =slow!.next;
      fast = fast.next!.next;
     }
     prev!.next =newNode;
     newNode.next= slow;

   }
   void deleteMidvalue(){
    Node? fast = head;
    Node? slow = head;
    Node? prev;

    while ( fast!.next != null){
      prev = slow;
      slow = slow!.next;
      fast = fast.next!.next;
    }
    prev!.next = slow!.next;
   }

   void printvalue(){
    Node? temp =head;
    while(temp != null){
      print(temp.data);
      
    }
    temp =temp!.next;
   }

}

void main(){
  SingleLL list = SingleLL();
  list.addNode(5);
  list.addNode(6);
  list.addNode(7);
  list.addNode(8);
  list.addNode(9);
  list.addmidvalue(9);
  // list.deleteMidvalue();
  list.printvalue();
}