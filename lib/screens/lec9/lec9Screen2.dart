// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:MIHA_Learning/controllers/userController.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen3.dart';
import 'package:flutter/material.dart';

class Lec9Screen2 extends StatefulWidget {
  const Lec9Screen2({super.key});

  @override
  State<Lec9Screen2> createState() => _Lec9Screen2State();
}

class _Lec9Screen2State extends State<Lec9Screen2> {

  UserController userController = UserController();

  void submit(){
    User user = User(id: "10223", name: "Amal", age: 24, address: ["233", "Colombo"]);
    userController.setUser(user);
    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Lec9Screen3()),
                  );
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 9 Screen 2")),
      body: Center(
        child: Column(
          children: [           
             ElevatedButton(
                    onPressed: () {
                      submit();
                    },
                    child: const Text(
                      "Login",
                    )),       
          ],
        ),
      ),
    );
  }
}
