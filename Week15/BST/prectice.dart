import 'dart:html';

class Node {
  Node? left, right;
  int data;
  Node({required this.data});
}

class binaryST {
  Node? root;

  void insert(int data) {
    Node? current = root;
    Node? newNode = Node(data: data);
    if (current == null) {
      root = newNode;
      return;
    }

    while (true) {
      if (data < current!.data) {
        if (current.left == null) {
          current.left = newNode;
          break;
        }
      } else{
        if(data> current.data){
          current.right = newNode;
          break;
        }
        current = current.right;
      }
    }
  }

  bool contains(int data){
    Node? curNode = root;
    while(curNode !=null){
      if(data< curNode.data){
        curNode = curNode.left;
      }else if(data> curNode.data){
        curNode = curNode.right;
      }else{
        return true;
      }
    }
    return false;
  }
  // int closests (int target){
  //   Node? current = root;
  //   int closest current!.data;

  //   while(current != null){
  //     if((target - closest).abs() > (target - current.data).abs()){
  //       closest = current.data;
        
  //     }if(target < current.data){
  //       current = current.left;
  //     }else if ( target > current.data){
  //       current = current.right;
  //     }else{
  //       break;
  //     }
  //   }
  //   return closest;
  // }

  void inOrder(){
    inOrderHelper(root);

  }

  inOrderHelper(Node? root){
    if(root !=null){
      inOrderHelper(root.left);
      print(root.data);
      inOrderHelper(root.right);
    }

  }

  void preOrder(){

  }
  preOrderHelper(Node? root){
    if(root !=null){
      print(root.data);
      preOrderHelper(root.left);
      preOrderHelper(root.right);
    }
  }

  void postOrder(){
    postOrderHelper(root);

  }
  postOrderHelper(Node? root){
    if(root !=null){
          postOrderHelper(root.left);
    postOrderHelper(root.right);
    print(root.data);
    }


  }

}
