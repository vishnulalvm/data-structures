int binerySearch(List<int> list, int str, int end, int target) {
  // target not found
  if (str > end) {
    return -1;
  }
  int mid = (str + end) ~/ 2;
  if (list[mid] == target) {
    return mid;
  }
  if (list[mid] <= target) {
    return binerySearch(list, mid + 1, end, target);
  }
  return binerySearch(list, str, mid - 1, target);
}

void main() {
  List<int> list = [1, 3, 4, 5, 6, 7, 8];
  print(binerySearch(list, 0, list.length - 1, 3));
}
