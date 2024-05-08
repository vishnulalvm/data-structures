int fibonnaci (int n){
  if(n<=0){
    return 0;
  }else if(n==1){
    return 1;
  }else{
    return fibonnaci(n-1)+fibonnaci(n-2);
  }

}


void main(){
int n =8;
  for(int i =0; i<=n; i++){
  print(fibonnaci(i));
  }
}