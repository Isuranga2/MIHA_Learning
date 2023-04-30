// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class Lec12Screen3 extends StatefulWidget {
  const Lec12Screen3({super.key});

  @override
  State<Lec12Screen3> createState() => _Lec12Screen3State();
}

class _Lec12Screen3State extends State<Lec12Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 12 Screen 3")),
      body: Center(
        child: Column(
          children: [
            Text("Descrip".tr),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text("Go Back")),
          ],
        ),
      ),
     
    );
  }
}