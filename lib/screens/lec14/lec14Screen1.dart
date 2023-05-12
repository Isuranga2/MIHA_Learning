// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testC.dart';
import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:MIHA_Learning/controllers/userController.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec13/lec13Screen2.dart';
import 'package:MIHA_Learning/screens/lec14/lec14Screen2.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen3.dart';
import 'package:MIHA_Learning/utils/databaseSetup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec14Screen1 extends StatefulWidget {
  const Lec14Screen1({super.key});

  @override
  State<Lec14Screen1> createState() => _Lec14Screen1State();
}

class _Lec14Screen1State extends State<Lec14Screen1> {
  void setupDB() async{
    DatabaseSetup databaseSetup = DatabaseSetup();
    await databaseSetup.setUpDB();
    databaseSetup.createToDoTaskTable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 14 Screen 1")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setupDB();
                },
                child: const Text(
                  "Setup DB",
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Lec14Screen2()),
                  );
                },
                child: const Text(
                  "Go TODO",
                )),
          ],
        ),
      ),
    );
  }
}
