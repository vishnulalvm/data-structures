class MergeSort{
  List<int>merge(List<int>list){
  if(list.length <=1){
    return list;
  }
  int mid = list.length ~/2;
 List<int>leftSide = merge(list.sublist(0,mid));
 List<int>rightSide = merge(list.sublist(mid));

 return sort(leftSide, rightSide);
}

List<int>sort(List<int>leftSide, List<int>rightSide){
  int i =0;
  int j =0;
  List<int>res=[];
  while(i<leftSide.length&&j<rightSide.length){
    if(leftSide[i]<rightSide[j]){
      res.add(leftSide[i]);
      i++;

    }else{
      res.add(rightSide[j]);
      j++;
    }
  }
  while(i<leftSide.length){
    res.add(leftSide[i]);
    i++;
  }
  while(j<rightSide.length){
    res.add(rightSide[j]);
    j++;
  }
  return res;

}

}

void main(){
  List<int>list =[3,2,5,4,7,4,6,7];
  MergeSort ref = MergeSort();
  print(ref.merge(list));
}