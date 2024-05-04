int average(List<int>arr){
  int sum =0;
  for(int n in arr){
    sum+=n;
  }
  int average =sum~/arr.length;
  return  average;
}

void main(){
  print(average([2,4,5,6,3,1]));
}