import 'package:MIHA_Learning/screens/lec10/lec10Screen.dart';
import 'package:MIHA_Learning/screens/lec10/lec10Screen2.dart';
import 'package:MIHA_Learning/screens/lec11/lec11Screen.dart';
import 'package:MIHA_Learning/screens/lec11/lec11Screen2.dart';
import 'package:MIHA_Learning/screens/lec6/lec6Screen.dart';

import 'package:MIHA_Learning/screens/lec8/lec8Screen4.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen2.dart';
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
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => const Lec8Screen(),
      //   '/second': (context) => const Lec8Screen2(),
      //   '/third': (context) => const Lec8Screen3(),
      // },
      home: const Lec11Screen2(), //Screen widget
    );
  }
}
