import 'dart:collection';

void main(){


  HashMap<String, int> studentAges = HashMap<String,int>();

  studentAges['a']= 34;
  studentAges['c']=3;
  studentAges ['d']=9;

  print('hi${studentAges['c']}');
  print(studentAges.containsKey('c'));
}