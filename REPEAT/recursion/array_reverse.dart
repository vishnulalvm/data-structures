int recursiveSum(List<int> arr) {
  if (arr.isEmpty) {
    return 0;
  }
  int sum = arr[0];
  // int index = 0;
  return sum + recursiveSum(arr.sublist(1));
}

void main() {
  print(recursiveSum([10,3,5,2,5,5]));
}
