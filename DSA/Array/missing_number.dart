int missingNum(List<int>array){
  for(int i=1; i<=array.length; i++){
    if(!array.contains(i)){
      return i;
    }

  }
  return 0;
}

void main(){
  print(missingNum([1,3,4,5,6,7]));
}