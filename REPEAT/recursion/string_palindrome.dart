// Suggested code may be subject to a license. Learn more: ~LicenseLog:3970396260.
bool isPalindrome(String str) {
  // checking vlaue is single or null
  if (str.length <= 1) {
    return true;
  }
  // checking the values are equal
  if (str[0] != str[str.length - 1]) {
    return false;
  }

// first case ALAYALA (CURRENT str value)
// second case LAYAL (CURRENT str value)
// trird case AYA (CURRENT str value)
// fourthe case Y (CURRENT str value)

//  THIS FUNCTION CROP THE FIRST AND LAST VALUES
  return isPalindrome(str.substring(1, str.length - 1));
}

void main() {
  String a = 'vishnulal';
  // print(a.substring(0, 3).toUpperCase());
  print("$a" + a.substring(0, 3).toUpperCase());
}
