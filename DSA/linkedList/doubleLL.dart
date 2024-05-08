class Node{
  int? data;
  Node?next;
  Node? prev;
  Node(this.data);
}

class DoubleLL{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node? newNode =Node(data);
    if(head ==null){
      head =newNode;
    }
    else{
      tail!.next =newNode;
      newNode.prev =tail;
    }
    tail =newNode;
  }
  void printDL(){
    Node? temp =head;

    if(temp ==null){
      print('empty');

    }while(temp != null){
      print(temp.data);
      temp =temp.next;
    }
  }
  void printRev (){
    Node? temp =tail;
    if(temp == null){
      print('empty');
    }
    while(temp != null){
      print(temp.data);
      temp =temp.prev;
    }
  }
}

void main(){
  DoubleLL list = DoubleLL();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.printDL();
  print('rev');
  list.printRev();
}