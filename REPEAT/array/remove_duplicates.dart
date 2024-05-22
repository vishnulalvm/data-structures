List<int> removeDuplicate(List<int> list) {
  List<int> newList = list.toSet().toList();
  return newList;
}

void main() {
  List<int> list = [1, 2, 3, 2, 3, 4];
  print(removeDuplicate(list));
}
