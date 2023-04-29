import 'package:MIHA_Learning/screens/lec11/lec11Screen3.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Lec11Screen2 extends StatefulWidget {
  const Lec11Screen2({super.key});

  @override
  State<Lec11Screen2> createState() => _Lec11Screen2State();
}

class _Lec11Screen2State extends State<Lec11Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 11 Screen 2")),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, PageTransition( type: PageTransitionType.leftToRight, child: Lec11Screen3()));
          }, 
          child: Text("Go Next"))),      
      
    );
  }
}
