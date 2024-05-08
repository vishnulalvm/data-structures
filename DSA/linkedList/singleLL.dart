class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class SingleLL{
  Node?head;
  Node? tail;

  void addNode(int data){
    Node? newNode = Node(data);

    if(head ==null){
      head =newNode;
    }
    else{
      tail!.next =newNode;
    }
    tail =newNode;
  }

  void printLL(){
    Node? temp =head;
    
    if(temp == null){
      print('empty');
    }
    while(temp !=null){
      print(temp.data);
      temp =temp.next;
    }
  }
  int sumOfList(Node? head){
    if(head==null){
      return 0;
    }
    int? currentValue = head.data;
    int? remioningSum =sumOfList(head.next);
    return currentValue! + remioningSum;
  }
  int printRev(int n)
  {
    if(n==1){
      return 0;
    }
    return 0;
  }

}

void main(){
  SingleLL list = SingleLL();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  list.addNode(50);
  list.printLL();
  print(list.sumOfList(list.head));

}