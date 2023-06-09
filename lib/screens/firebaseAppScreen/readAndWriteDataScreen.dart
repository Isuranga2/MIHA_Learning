// ignore_for_file: file_names


import 'package:MIHA_Learning/controllers/firebaseAppCtrl/authController.dart';
import 'package:MIHA_Learning/controllers/firebaseAppCtrl/userController2.dart';
import 'package:flutter/material.dart';


class ReadAndWriteDataScreen extends StatefulWidget {
  const ReadAndWriteDataScreen({super.key});

  @override
  State<ReadAndWriteDataScreen> createState() => _ReadAndWriteDataScreenState();
}

class _ReadAndWriteDataScreenState extends State<ReadAndWriteDataScreen> {


  void readAllUsers()async{
    UserController2 userController2 = UserController2();
    await userController2.readAllUsers();
  }

   void readUser()async{
    UserController2 userController2 = UserController2();
    await userController2.getUserByID("36LYcCPPeCVPTKQdYfKNnD7aj6G3");
  }

   void writeNewDoc()async{
    UserController2 userController2 = UserController2();
    await userController2.writeNewDoc();
  }

    void updateDoc()async{
    UserController2 userController2 = UserController2();
    await userController2.updateDoc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign-Up Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              ElevatedButton(
                    onPressed: () {
                      readAllUsers();
                    },
                    child: const Text(
                      "Read All",
                    )),

               ElevatedButton(
                    onPressed: () {
                      readUser();
                    },
                    child: const Text(
                      "Read User",
                    )),

                     ElevatedButton(
                    onPressed: () {
                      writeNewDoc();
                    },
                    child: const Text(
                      "Write New Doc",
                    )),

                      ElevatedButton(
                    onPressed: () {
                      updateDoc();
                    },
                    child: const Text(
                      "Update Doc",
                    )),
              
            ],
          ),
        ),
      ),
    );
  }
}
