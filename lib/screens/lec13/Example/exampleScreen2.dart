// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testController2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScreen2 extends StatefulWidget {
  const ExampleScreen2({super.key});

  @override
  State<ExampleScreen2> createState() => _ExampleScreen2State();
}

class _ExampleScreen2State extends State<ExampleScreen2> {

  final testController2 = Get.find<TestController2>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Example Screen 1")),
      body: Center(
        child: Column(
          children: [   

            const Text("Hello!"),
            Obx(()=> Text("Name: ${testController2.user.value.name}")),
            Obx(()=> Text("Age: ${testController2.user.value.age}")),
            Obx(()=> Text("Id: ${testController2.user.value.id}")),        
      
          ],
        ),
      ),
    );
  }
}
