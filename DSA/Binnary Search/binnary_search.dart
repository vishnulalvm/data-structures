int binnerySearch(int targe, int str, int end , List<int>list){
  while(str<=end){
    int mid = str+(end-str)~/2;
    if(list[mid]==targe){
      return mid;
    }else if(list[mid]<targe){
      str = mid +1;
    }else if(list[mid]>targe){
      end =mid-1;
    }
  }
  return 0;
}

void main(){
  List<int>list =[1,2,3,4,5,6,7,8];
  print(binnerySearch(5, 0, list.length-1, list));
}