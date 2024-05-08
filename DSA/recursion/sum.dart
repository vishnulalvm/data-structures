int somOfList(List<int>nums, int index){
  if(index>=nums.length){
    return 0;
  }
  return nums[index]+ somOfList(nums, index+1);
}

void main(){
  List<int>nums =[2,3,5,6,7,4,3];
  print(somOfList(nums, 0));
}