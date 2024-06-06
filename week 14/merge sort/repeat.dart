class sortMerge {
  List<int>merges (List<int>list ,int right , int left){
    if(list.length <=1){
      return list;
     
      
    }
     int midd = (left+right)~/2;
      List<int> leftSide = merges(list, midd, left);
      List<int>rightSide = merges(list, right, midd+1);
      return sort(leftSide, rightSide);
  
  }
  List<int>sort (List<int>leftSide, List<int>rightSide){
    List<int>res=[];
    int i =0;
    int j =0;
    while(i<leftSide.length&& j< rightSide.length){
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