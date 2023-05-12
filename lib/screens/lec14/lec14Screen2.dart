// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testC.dart';
import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:MIHA_Learning/controllers/todoController.dart';
import 'package:MIHA_Learning/controllers/userController.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec13/lec13Screen2.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec14Screen2 extends StatefulWidget {
  const Lec14Screen2({super.key});

  @override
  State<Lec14Screen2> createState() => _Lec14Screen2State();
}

class _Lec14Screen2State extends State<Lec14Screen2> {

  TextEditingController todoTaskNoteCtrl = TextEditingController();
  ToDoController toDoController = Get.find<ToDoController>();

  void addTODO(){
    toDoController.insertToDo(todoTaskNoteCtrl.text);
  }

  void readTODO(){
    toDoController.readToDo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 14 Screen 2: TODO")),
      body: Center(
        child: Column(
          children: [           
            // Input field
            Container(
              width: 300,
              child: TextField(
                controller: todoTaskNoteCtrl,
              ),
            ),
            // Add button
             ElevatedButton(
                onPressed: () {
                  addTODO();                  
                },
                child: const Text(
                  "Add TODO",
                )),
              ElevatedButton(
                onPressed: () {
                  readTODO();                  
                },
                child: const Text(
                  "Read TODO",
                )),
            
            //TODO LIST
            
          ],
        ),
      ),
    );
  }
}
