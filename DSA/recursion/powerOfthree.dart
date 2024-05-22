class Solution {
  bool isPowerOfThree(int n) {
    if(n<=0){
        return false;
    }
    if(n==1){
        return false;
        
    }
    if(n %3  != 0){
        return false;
    }

    return isPowerOfThree(n~/3);
    
  }
}

void main(){
  Solution list = Solution();
  print(list.isPowerOfThree(27));
}