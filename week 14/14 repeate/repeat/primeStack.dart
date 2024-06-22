

class Node {
  Node? next;
  int? data;
  Node(this.data);
}

class Stack {
  Node? top;
  void push(int data) {
    Node? newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void pop() {
    if (top == null) {
      print('stack underflow');
    } else {
      top = top!.next;
    }
  }

  List<int> primenum() {
    Node? curret = top;
    List<int> prime = [];
    while (curret != null) {
      if (isprime(curret.data!)) {
        prime.add(curret.data!);
      }

      curret = curret.next;
    }
    return prime;
  }

  bool isprime(int data) {
    if(data <= 1){
      return false;
    }
     if(data<=1) return false;
    for(int i =2;i<data~/2;i++){
      if(data%i==0){
        return false;
      }
    }
    return true;
  }
}


void main(){
  Stack ref = Stack();
  ref.push(1);
  ref.push(2);
  ref.push(3);
  ref.push(4);
  ref.push(5);
  ref.push(7);
  ref.push(11);
  print(ref.primenum());
}
