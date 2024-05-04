int sumOfArry(List<int>list){
  int sum=0;
  for(int n in list){
    sum+=n;
  }
  return sum;

}

void main(){
  print(sumOfArry([5,4,5,6,7,32]));
}