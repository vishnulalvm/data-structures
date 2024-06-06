import 'dart:collection';

void main(){
  HashMap<String, int> studentAge = HashMap<String,int>();

  studentAge['a']=35;
  studentAge['b']=34;
  studentAge['c']=31;
  studentAge['3']=32;
  print(studentAge['a']);
  studentAge['a']=42;
  studentAge.forEach((key, value) {
    print('$key: $value');
  });
}