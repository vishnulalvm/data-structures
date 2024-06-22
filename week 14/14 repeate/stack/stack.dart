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
      top =newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  }
  void pop(){
    if(top ==null){
      print('stack underflow');
    }else{
      top = top!.next;
    }
  }


  void display(){
    Node? temp = top;
    if(temp == null){
      print('empty');

    }
    while(temp != null){
      print(temp.data);
      temp = temp.next;
    }
  }

  int? mid(){
    Node? fast = top;
    Node? slow = top;
    while(fast!.next != null){
   
      slow = slow!.next;
      fast = fast.next!.next;
         if(fast == null){
        return slow!.data;
      }

    }
    return 0;
  }

  void removeMid(){
    Node? fast = top;
    Node? slow = top;
    Node? prev = null;

    while(fast != null&&fast.next != null  ){
      prev = slow;
      slow = slow!.next;
      fast = fast.next!.next;
      if(prev !=null){
        prev.next = slow!.next;
      }

    }
  }
  void peek(){
    Node? top = this.top;
    if(top != null){
      print("top ${top.data}");
    }
  }

  void printRev(Node? node){
    if(node == null){
      return;
    }
  
    printRev(node.next);
      print(node.data);
  }
}


void main(){
  Stack ref = Stack();
  ref.push(10);
    ref.push(20);
      ref.push(30);
        ref.push(40);
          ref.push(50);

          ref.display();
          ref.pop();
          print('object');
          ref.printRev(ref.top);
          // ref.display();
        //   print(ref.mid());
        //   print('new');
        //  ref.removeMid();
        //       ref.display();
}