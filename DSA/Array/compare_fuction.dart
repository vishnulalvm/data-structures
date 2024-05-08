int secoundEven(List<int>number){

  number.sort((a,b)=>b.compareTo(a));

  for(int num in number){
    if(
   num%2 ==0){
return num;  
   }
 

  }
return -1;
}

void main(){
List<int>number =[2,4,8,7,2,9,6];

int evenNum =secoundEven(number);

print(evenNum);



}