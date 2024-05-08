class Node{
  int? data;
  Node? next;
  Node(this.data);

}
class SingleLL{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node? newNode = head;
    if(head == null){
      head = newNode;
    }
    else{
      tail!.next =head;
    }
    tail =newNode;
  }

  int? findMid(){
    Node? slow = head;
    Node? fast = head;
    while (fast!.next !=null){
      slow =head!.next;
      fast = head!.next!.next;
      if(fast==null){
        return slow!.data;
      } 
    }
    return 0;
  }
}