class Node {
  String? data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoubelList {
  Node? head;
  Node? tail;

  void addNode(String data) {
    Node? newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }

    tail = newNode;
  }

  String printRev(){
    Node? temp = tail;
    List? chars=[];
    while(temp != null){
      chars.add(temp.data);
      temp = tail!.prev;
    }
    return chars.join();
  }
}


void main(){
  String value = 'flutter';
DoubelList list = DoubelList();
  for(int i =0 ;i<value.length;i++){
    list.addNode(value[i]);
  }
  print(list.printRev());
  print('object');
}