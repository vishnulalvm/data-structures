class Node{
  Node? next;
  int? data;
  Node(this.data);

}
class Stack{
  Node? top;
  void push(int? data){
    Node? newNode = Node(data);
    if(top == null){
     top =newNode;
    }else{
       newNode.next = top;
      top = newNode;
    }
  }

  void pop(){
    if(top == null){
      print("stack under flow");

    }else{
      top = top!.next;
    }
  }

  void midvalue(){
    Node? fast = top ;
    Node? slow = top;
    Node? prev = null;
    while(fast != null && fast.next !=null){
      fast = fast.next!.next;
      prev = slow;
      slow = slow!.next;
      if(fast!.next ==null){
        print(slow!.data);
        prev!.next =slow.next;
      }
    }
  }

  void remove (int targer){
    Node? temp = top;
    Node? prev =null;

    while(temp != null){
      if(temp.data == targer){
        prev!.next = temp.next;
      }
      prev = temp;
      temp = temp.next;
    }
  }
  void display(Node? node){
    if(node == null){
      return;
    }
    print(node.data);
    display(node.next);
  }
}

void main(){
  Stack ref = Stack();
  ref.push(10);
  ref.push(20);
  ref.push(30);
  ref.push(40);
  ref.push(50);
  ref.push(60);
  ref.pop();
  ref.display(ref.top);
  // ref.midvalue();
  print('mid');
  // ref.display(ref.top);
  ref.remove(20);
   ref.display(ref.top);
}