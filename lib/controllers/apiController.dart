
import 'dart:math';

import 'package:MIHA_Learning/services/todoAPI.dart';

class APIController{
  
  Future fetchToDoByID(int id)async{
    if(id >=100){
      return "Error";
    }

    ToDoAPI toDoAPI = ToDoAPI();
    var output = await toDoAPI.getTodoByID(id);
    if(output == null){
      return "Error";
    }else{
      return output;
    }
  }

  Future sendUserData(String email, String pw)async{
    ToDoAPI toDoAPI = ToDoAPI();
    var output = await toDoAPI.sendUserData(email, pw);
    print(output);
  }
}