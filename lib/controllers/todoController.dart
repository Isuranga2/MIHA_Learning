

import 'package:MIHA_Learning/models/todoTask.dart';
import 'package:MIHA_Learning/services/todoDAO.dart';
import 'package:get/get.dart';

class ToDoController extends GetxController{

  void insertToDo(String task)async{
    ToDoTask todoTask = ToDoTask(isDone: false, task: task);
    ToDoDAO toDoDAO = ToDoDAO();
    await toDoDAO.insertTODO(todoTask);
  }

  void readToDo()async{
    ToDoDAO toDoDAO = ToDoDAO();
    toDoDAO.readTODO();
  }

}