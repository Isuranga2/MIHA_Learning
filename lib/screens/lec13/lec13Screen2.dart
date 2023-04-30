// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testC.dart';
import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:MIHA_Learning/controllers/userController.dart';
import 'package:MIHA_Learning/models/user.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec13Screen2 extends StatefulWidget {
  const Lec13Screen2({super.key});

  @override
  State<Lec13Screen2> createState() => _Lec13Screen2State();
}

class _Lec13Screen2State extends State<Lec13Screen2> {  

  final testController2 = Get.find<TestController2>();

  // String? name;
  // int? age;

  @override
  void initState() {
    super.initState();
    // ABC abc1 = ABC();
    // print(abc1.y!.toString() +" & "+ ABC.x!.toString());

    // name = testController2.name.value;
    // age = testController2.age.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 13 Screen 2")),
      body: Center(
        child: Column(
          children: [           
            // Text("Hello $name and $age")
            
            //? Obx( () => Widget(Observable) ) 
            Obx(() => Text("Hello ${testController2.name.value} and ${testController2.age.value} and ${testController2.nameList.length}") )  
          ],
        ),
      ),
    );
  }
}
