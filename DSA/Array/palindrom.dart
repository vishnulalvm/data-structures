bool ispalindrom(String value){
  int str = 0;
  int end = value.length-1;
  while(str< end){
    if(value[str]==value [end]){
      return true;
    }
    str++;
    end--;
  }
  return false;
}

void main(){
  print(ispalindrom('malayalam'));
}