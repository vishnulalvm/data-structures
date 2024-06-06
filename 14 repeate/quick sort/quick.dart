void quickSort(List<int>list, int low ,int high){
  if(low< high){
    int pivotIndex =partition(list, low, high);
    quickSort(list, low, pivotIndex-1);
    quickSort(list, pivotIndex+1, high);

  }
}

int partition (List<int>list, int low ,int high){
  int i = low -1;
  int pivot = list[high];

  for(int j = low; j<high ;j++){
    if(list[j]<=pivot){
      i++;
      swap(list, i, j);
    }
  }
  swap(list, i+1, high);
  return i+1;
}

void swap(List<int>list, int i ,int j){
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}


void main(){
  List<int>list = [2,4,1,6,74,33,5];
  quickSort(list, 0, list.length-1);
  print(list);

}
