

import 'package:MIHA_Learning/models/todoTask.dart';
import 'package:MIHA_Learning/services/todoDAO.dart';
import 'package:get/get.dart';

class ToDoController extends GetxController{

  var todoList = <ToDoTask>[].obs; //ToDoTask List

  void insertToDo(String task)async{
    //? Create data model object
    ToDoTask todoTask = ToDoTask(isDone: false, task: task);
    
    //? Create DAO object
    ToDoDAO toDoDAO = ToDoDAO();


    int id = await toDoDAO.insertTODO(todoTask);
    todoTask.id = id;
    todoList.add(todoTask);
  }

  void readToDo()async{
    ToDoDAO toDoDAO = ToDoDAO();
    List<Map> todoL = await toDoDAO.readTODO();
    for(Map oneT in todoL){
      ToDoTask todoTask = ToDoTask(isDone: oneT["isDone"] == 0? false: true, task: oneT["task"], id: oneT["id"]);
      todoList.add(todoTask);
    }
  }

}