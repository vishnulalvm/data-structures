void quickSort(List<int> list, int high, int low) {
  if (low < high) {
    int pivotIndex = partision(list, high, low);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

int partision(List<int> list, int high, int low) {
  int pivot = list[low];
  int i = low;
  int j = high;

  while (i < j) {
    do {
      i++;
    } while (list[i] < pivot && i <= high);

    do {
      j--;
    } while (list[j] > pivot && j >= low);
  }
    if (i < j) {
      swap(list, i, j);
    }

  return j;
}

void swap(List<int> list, int j, int i) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

void main() {
  List<int> list = [2, 4, 6, 7, 3, 45, 6];

  print('Before sorting: $list');
  quickSort(list, 0, list.length - 1);
  print('After sorting: $list');
}
