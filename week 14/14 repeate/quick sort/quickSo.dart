import 'quickSort.dart';

void quickSort(List<int>list,int low, int high){
  if(low<high){
    int pivotIndex = partition(list, low, high);
    quickSort(list, low, pivotIndex-1);
    quickSort(list, pivotIndex+1, high);
  }
}

int prartion(List<int>list, int low ,int high){
  int pivot = list[high];
  int i = low-1;
  for(int j = low ; j< high ; j++){
    if(list[j]<pivot){
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
  List<int>list =[3,2,5,6,3,8,94,3,2];
  quickSort(list, 0, list.length-1);
  print(list);
}