class merge{
  List<int>mergeSort(List<int>list){
    if(list.length <=1){
      return list;
    }
    int mid = list.length~/2;
   List<int>left = mergeSort(list.sublist(0,mid));
  List<int>right =   mergeSort(list.sublist(mid));
    return sort(left,right);
  }

  List<int>sort (List<int>left, List<int>right){
    int i =0;
    int j =0;
    List<int> res =[];
    while(i<left.length&& j<right.length){
      if(left[i]<=right[j]){
        
      }
    }
    return res;
  }
}