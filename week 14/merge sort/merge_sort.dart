void mergeSort(List<int> list, int left, int right) {
  if (left < right) {
    int middle = (left + right) ~/ 2;

    // Recursively sort the first and second halves
    mergeSort(list, left, middle);
    mergeSort(list, middle + 1, right);

    // Merge the sorted halves
    merge(list, left, middle, right);
  }
}

void merge(List<int> list, int left, int middle, int right) {
  int n1 = middle - left + 1;
  int n2 = right - middle;

  // Create temporary arrays
  List<int> leftArray = List<int>.filled(n1, 0);
  List<int> rightArray = List<int>.filled(n2, 0);

  // Copy data to temporary arrays
  for (int i = 0; i < n1; i++) {
    leftArray[i] = list[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArray[j] = list[middle + 1 + j];
  }

  // Merge the temporary arrays back into the original list
  int i = 0, j = 0;
  int k = left;

  while (i < n1 && j < n2) {
    if (leftArray[i] <= rightArray[j]) {
      list[k] = leftArray[i];
      i++;
    } else {
      list[k] = rightArray[j];
      j++;
    }
    k++;
  }

  // Copy the remaining elements of leftArray, if any
  while (i < n1) {
    list[k] = leftArray[i];
    i++;
    k++;
  }

  // Copy the remaining elements of rightArray, if any
  while (j < n2) {
    list[k] = rightArray[j];
    j++;
    k++;
  }
}

void main() {
  List<int> list = [12, 11, 13, 5, 6, 7];
  print('Before sorting: $list');
  mergeSort(list, 0, list.length - 1);
  print('After sorting: $list');
}
