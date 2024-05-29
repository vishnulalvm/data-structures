void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(list, low, high);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

int partition(List<int> list, int low, int high) {
  int pivot = list[low];
  int i = low;
  int j = high;

  do {
    do {
      i++;
    } while (i <= high && list[i] < pivot);

    do {
      j--;
    } while (j >= low && list[j] > pivot);

    if (i < j) {
      swap(list, i, j);
    }
  } while (i < j);

  swap(list, low, j);

  return j;
}

void swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [2, 4, 6, 7, 3, 45, 6];
  print('Before sorting: $list');
  quickSort(list, 0, list.length-1);
  print('After sorting: $list');
}
