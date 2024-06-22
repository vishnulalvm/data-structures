class Sort{
  List<int>insertion(List<int>list){
    for(int i = 1; i<list.length;i++){
      int j = i -1;
      int current = list[i];
      while(j>=0 && list[j]>current){
        list[j+1]=list[j];
        j--;
      }
      list[j+1]= current;

    }

    return list;
  }
}

void main(){
  List<int>list =[2,4,2,1,5,6,3,9,5];
Sort ref = Sort();

  print(ref.insertion(list));
}