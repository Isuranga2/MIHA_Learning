// ignore_for_file: file_names

import 'package:MIHA_Learning/screens/lec12/lec12Screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec12Screen1 extends StatefulWidget {
  const Lec12Screen1({super.key});

  @override
  State<Lec12Screen1> createState() => _Lec12Screen1State();
}

class _Lec12Screen1State extends State<Lec12Screen1> {

  void changeLanguage(String lan){
    if(lan == "English"){
      //Change to english
      var locale = Locale('en', 'US');
      Get.updateLocale(locale);
    }else{
      //Change to sinhala
      var locale = Locale('si', 'LK');
      Get.updateLocale(locale);
    }
    setState(() {
      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 12 Screen1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome!".tr,style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              Get.to(Lec12Screen2());
            }, child: Text("Next")),

            ElevatedButton(onPressed: (){
             changeLanguage("Sinhala");
            }, child: Text("Change to Sinhala")),

            ElevatedButton(onPressed: (){
             changeLanguage("English");
            }, child: Text("Change to English")),
          ],
        ),
      ),
    );
  }
}