int binarySearch(List<int>sortedList, int target, int str, int end){
  if(str>end){
    return -1;
  }
  int mid= str+(end-str)~/2;
  if(sortedList[mid]==target){
    return mid;
  }
  else if(sortedList[mid]>target){
    return binarySearch(sortedList, target, str, mid-1);
  }else if(sortedList[mid]< target){
    return binarySearch(sortedList, target, mid+1, end);
  }else{
    return 0;
  }
}

void main(){
  List<int>list =[1,2,3,4,5,6,7];
  print(binarySearch(list, 8, 0, list.length-1));
}