class MergeSort {
  List<int>merge(List<int>list){
    if(list.length<=1){
      return list;
    }
    int mid = list.length~/2;
    List<int>leftSide = merge(list.sublist(0, mid));
    List<int>RightSide = merge(list.sublist(mid));
    return sort(leftSide, RightSide);
  }
  List<int>sort(List<int>leftSide, List<int>RightSide){
    List<int> res =[];
    int i =0;
    int j= 0;
    while(i<leftSide.length&&j<RightSide.length){
      if(leftSide[i]<RightSide[j]){
        res.add(leftSide[i]);
        i++;
      
      }else{
        res.add(RightSide[j]);
        j++;

      }
    }
    while(i<leftSide.length){
      res.add(leftSide[i]);
      i++;
    }
    while(j< RightSide.length){
      res.add(RightSide[j]);
      j++;
    }
    return res;
  }
}

void main(){
  List<int>list = [3,4,2,6,8,5,4,6];
  MergeSort ref = MergeSort();
  print(ref.merge(list));

}