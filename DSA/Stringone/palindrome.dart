bool isPalindrome(String value) {
  int j = value.length - 1;
  int k = 0;
  while (k < j) {
    if (value[k] != value[j]) {
      return false;
    }
    k++;
    j--;
  }
  return true;
}

void main() {
  print(isPalindrome('malayalam'));
}
