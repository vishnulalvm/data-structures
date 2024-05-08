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

   int? Midvalue (){
    Node? slow= head;
    Node? fast = head;
    while(fast!.next != null){
      slow = slow!.next;
      fast = fast.next!.next;
      if(fast!.next ==null){
        return slow!.data;
      }
    }
    return 0;
   }
}

void main(){
  SingleLL list = SingleLL();

  list. addNode(2);
   list. addNode(3);
    list. addNode(2);
     list. addNode(5);
     list. addNode(6);
     print(list.Midvalue());

}