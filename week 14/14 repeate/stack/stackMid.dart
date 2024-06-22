

class Node{
  Node? next;
  int? data;
  Node(this.data);

}
class Stack{
  Node? top;
  void push(int data){
    Node? newNode = Node(data);
    if(top == null){
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  }

  void findmid(){
    Node? fast = top;
    Node? slow = top;
    while(fast !=null && fast.next != null){
      fast = fast.next!.next;
      slow = slow!.next;

      print(slow!.data);

    }
  }
}