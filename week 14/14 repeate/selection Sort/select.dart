class selectionSort{
  List<int>list(List<int>list){
    for(int i =0; i<list.length;i++){
      int small = list[i];
      for(int j = i+1;j<list.length ;j++){
        if(list[small]<list[j]){
          small = j;
        }
      }
      int temp = list[small];
      list[small]= list[i];
      list[i] = temp;
    }
    return list;
  }
}