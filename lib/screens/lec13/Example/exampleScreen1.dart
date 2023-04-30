// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec13/Example/exampleScreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScreen1 extends StatefulWidget {
  const ExampleScreen1({super.key});

  @override
  State<ExampleScreen1> createState() => _ExampleScreen1State();
}

class _ExampleScreen1State extends State<ExampleScreen1> {
  
  User? user;
  final testController2 = Get.find<TestController2>();
  
  void createUser() {
    user =
        User(id: "10223", name: "Amal", age: 24, address: ["233", "Colombo"]);
    testController2.setUser(user!);
  }

  void goNext() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ExampleScreen2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Example Screen 1")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  createUser();
                },
                child: const Text(
                  "Create User",
                )),
            ElevatedButton(
                onPressed: () {
                  goNext();
                },
                child: const Text(
                  "Go Next",
                )),
          ],
        ),
      ),
    );
  }
}
