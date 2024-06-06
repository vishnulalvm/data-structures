class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class Stacklink{
  Node? top;

  void push(int data){
    Node? newNode = Node(data);
    if(top == null){
      top = newNode;
    }else{newNode.next = top;
    top = newNode;
    }
  }
  void pop (){
    if(top == null){
      print('over');
    }else{
      top = top!.next;
    }
  }

  void prints(){
    Node? temp = top;
    while(temp !=null){
      print(temp.data);
      temp = temp.next;
    }
  }
  void delete(int target){
    Node? temp = top;
    Node? prev;
    if(temp == null){
      print('null');

    }
    while (temp !=null){
      if(temp.data == target){
        break;
      }
      prev = temp;
      temp = temp.next;
    }
    prev!.next = temp!.next;
  }
}