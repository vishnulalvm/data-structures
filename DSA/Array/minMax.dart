List<int> minMax(List<int>arr){
  int min = arr[0];
  int max = arr[0];
  for(int n in arr){
    if(n<min){
      min =n;
    }
    if(n>max){
      max=n;
    }
  }
  return[min, max];
}

void main(){
  print(minMax([3,5,6,3,2,3,4,8,5]));
}