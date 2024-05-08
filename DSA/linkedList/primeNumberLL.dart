import 'dart:math';

class Node{
  int? data;
  Node? next;
  Node(this.data);
}

class SingleLL{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node? newNode =Node(data);
    if(head == null){
      head = newNode;
    }
    else{ 
      tail!.next = newNode;

    }
    tail = newNode;

  }

  bool isPrimeNum(int? n){
    if(n! < 1){
      return false;
    }
    for(int i =2;i<= sqrt(n);i++){
      if(n%i==0){
        return false;
      }
    }
    return true;
  }

  void checkPrime(){
    Node? current = head;
    while(current !=null){
      if(isPrimeNum(current.data)
      ){
        print('prime');
      }else{
        print('not prime');
      }
      current = current.next;
    }
  }
}



void main(){
  SingleLL list = SingleLL();
  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(4);
  list.addNode(5);
  list.addNode(6);
  list.checkPrime();
}