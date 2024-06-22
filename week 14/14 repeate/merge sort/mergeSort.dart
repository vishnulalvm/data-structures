class Merge {
  List<int> mergeSort(List<int> list) {
    if (list.length <= 1) {
      return list;
    }
    int mid = list.length ~/ 2;
    List<int> left = mergeSort(list.sublist(0, mid));
    List<int> right = mergeSort(list.sublist(mid));
    return sort(left, right);
  }

  List<int> sort(List<int> left, List<int> right) {
    int i = 0;
    int j = 0;
    List<int> res = [];
    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        res.add(left[i]);
        i++;
      } else {
        res.add(right[j]);
        j++;
      }
    }
    while (i < left.length) {
      res.add(left[i]);
      i++;
    }
    while (j < right.length) {
      res.add(right[j]);
      j++;
    }
    return res;
  }
}

void main(){
  List<int>list =[3,5,1,6,7,4,5,9];
  Merge ref = Merge();
  
  print(ref.mergeSort(list)); 

}
