class SelectionSort{
  List<int>sort(List<int>list){
    for(int i =0;i<list.length;i++){
      int small =i;
      for(int j =i+1;j<list.length;j++){
        if(list[small]>list[j]){
          small = j;
        }
      }
      int temp = list[small];
      list[small]= list[i];
      list[i]= temp;
    }
    return list;
  }
}

void main(){
  List<int>list=[3,2,5,4,7,4,2,9];
  SelectionSort ref = SelectionSort();
  print(ref.sort(list));
}