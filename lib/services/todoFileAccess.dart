// ignore_for_file: file_names, avoid_print

import 'dart:io';

import 'package:MIHA_Learning/models/todoTask.dart';
import 'package:path_provider/path_provider.dart';


// Handle all Read Write related to todoList.txt
class ToDoFileAccess {
  
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    print("File Path: $path" );
    return File('$path/todoList.txt');
  }

  Future<List<ToDoTask>> readToDoList() async {
    try {
      final file = await _localFile;

      // Read the file
      String contents = await file.readAsString();
      print("Read Str:"+ contents);
      List<ToDoTask> todoList =  toDoTaskFromJson(contents);

      return todoList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<int> writeToDo( List<ToDoTask> todoList) async {   
    try {
      final file = await _localFile;
      String todoListStr=  toDoTaskToJson(todoList);
      print("Write Str:"+ todoListStr);

      // Write the file
      file.writeAsString(todoListStr);
      return 1;

    } catch (e) {
      print(e);
      return 0;
    }
  }
}