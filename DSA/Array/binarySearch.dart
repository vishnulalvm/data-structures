int binarySearch(List<int>sortedList, int target,int str, int end){
 while(str<end){
  int mid =str+(end-str)~/2;
  if(sortedList[mid]==target){
    return mid;
  }
  else if(sortedList[mid]>target){
    end =mid+1;

  }else if(sortedList[mid]<target){
    str =mid-1;
  }
 }
 return 0;
}


void main(){
   List<int>list =[1,2,3,4,5,6,7];
  print(binarySearch(list, 8, 0, list.length-1));
  print('object');

}