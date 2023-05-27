// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testC.dart';
import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:MIHA_Learning/controllers/todoController.dart';
import 'package:MIHA_Learning/controllers/userController.dart';
import 'package:MIHA_Learning/models/todoTask.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec13/lec13Screen2.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec15Screen extends StatefulWidget {
  const Lec15Screen({super.key});

  @override
  State<Lec15Screen> createState() => _Lec15ScreenState();
}

class _Lec15ScreenState extends State<Lec15Screen> {
  TextEditingController todoTaskNoteCtrl = TextEditingController();
  ToDoController toDoController = Get.find<ToDoController>();

  void addTODO() {
    toDoController.insertToDoToFile(todoTaskNoteCtrl.text);
  }

  void readTODO() {
    toDoController.readToDoFromFile();
  }

  @override
  void initState() {
    super.initState();
    readTODO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 15 Screen: TODO")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Input field - add ToDo
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
              Container(
                height: 500,
                child: Obx(() => ListView.builder(
                    itemCount: toDoController.todoList.value.length,
                    itemBuilder: (context, index) {
                      ToDoTask toDoTask = toDoController.todoList.value[index];
                      return CheckboxListTile(
                        title: Text(toDoTask.task!),
                        value: toDoTask.isDone,
                        onChanged: (value) {},
                      );
                    })),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
