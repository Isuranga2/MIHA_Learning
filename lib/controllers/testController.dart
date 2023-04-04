// ignore_for_file: file_names


class TestController{
  
  //Reduction function
  int reduction(int num1, int num2){
    int result = num1 - num2;
    if(result < 0){
      return 0;
    }
    return result;
  }
}