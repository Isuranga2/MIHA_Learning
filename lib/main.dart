import 'package:MIHA_Learning/screens/lec6/lec6Screen.dart';
import 'package:MIHA_Learning/screens/lec7/lec7Screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,        
      ),      
      home: const Lec7Screen(), //Screen widget      
    );
  }
}


