
import 'package:MIHA_Learning/models/user.dart';
import 'package:get/get.dart';

class TestController2 extends GetxController{
  var name = "".obs;
  var age = 0.obs;
  var user = User().obs;
  var nameList = <String>[].obs; //Chat List

  void setName(String na){
    name.value = na;
  }

  void setAge(int a){
    age.value = a;
  }

  void addName(String na){
    nameList.add(na);
  }

  void setUser(User usr){
    user.value = usr;
  }

  void updateAge(int ageNew){
    age.value = ageNew;
  }
}