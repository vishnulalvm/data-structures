void quickSort(List<int>list, int low ,int high){
  if(low < high){
    int pivotIndex = partition(list, low, high);
    partition(list, low, pivotIndex -1);
    partition(list, pivotIndex+1, high);

  }
}

int partition(List<int>list,int low , int high){
  int pivot = list[low];
  int i = low;
   int j = high;

   do{
    do{
      i++;
      
    }while(i<=high && list[i]< pivot);
    do{
      j--;
    }while(j>=high && list[j]>pivot);
    if(i<j){
      swap(list, i, j);
    }
   }while(j<i);
   swap(list, i, j);
  
  return j;

}

void swap(List<int>list, int i ,int j){
  int temp = list[i];
  list[i]= list[j];
  list[j]= temp;
}


void main(){
  List<int>list =[ 2,4,63,4,3,6,7];
  int low =0;
  int high = list.length-1;
  quickSort(list, low, high);
  print(list);
}