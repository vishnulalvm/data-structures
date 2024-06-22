class Node{
  Node? next;
  int? data;
  Node(this.data);

}
class Stack{
  Node? top;
  void push(int data){
    Node? newNode = Node(data);
    if(top ==null){
      top = newNode;
    }else{
      newNode.next = top;
      top = newNode;
    }
  }

  int? minValue(){
    Node? current = top;
    int? value = top!.data;
    int? secondMin = null;
    while(current!.next !=null){
      if(current.data! < value!){
        secondMin = value;
        value = current.data;
      }
      current = current.next;

    }
    return value;

  }
}