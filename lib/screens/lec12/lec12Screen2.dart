// ignore_for_file: file_names

import 'package:MIHA_Learning/screens/lec12/lec12Screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec12Screen2 extends StatefulWidget {
  const Lec12Screen2({super.key});

  @override
  State<Lec12Screen2> createState() => _Lec12Screen2State();
}

class _Lec12Screen2State extends State<Lec12Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Title".tr)),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Get.off(Lec12Screen3());
        }, child: Text("Next 3")),
      ),
    );
  }
}