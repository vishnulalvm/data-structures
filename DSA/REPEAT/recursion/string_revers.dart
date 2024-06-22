
String reverseString(String value) {
  if (value.length <= 1) {
    return value;
  }
  return reverseString(value.substring
(1)) + value[0];
}

void main() {
  String s = reverseString("Hello");
  print("Reversed string: $s");
}
