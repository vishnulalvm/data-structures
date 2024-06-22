class Selection{
  List<int>selections(List<int>list){
    for(int i =0;i<list.length;i++){
      int small = i;
      for(int j = i+1; j<list.length; j++){
        if(list[small]>list[j]){
          small = j;
        }
      }
      int temp = list[small];
      list[small] = list[i];
      list[i]= temp;
    }

    return list;
  }
}

void main(){
  List<int>list =[2,1,3,5,64,3,2,5];
  Selection ref = Selection();
  print(ref.selections(list));
}