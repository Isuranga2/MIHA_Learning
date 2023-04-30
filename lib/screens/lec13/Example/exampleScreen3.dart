// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleScreen3 extends StatefulWidget {
  const ExampleScreen3({super.key});

  @override
  State<ExampleScreen3> createState() => _ExampleScreen3State();
}

class _ExampleScreen3State extends State<ExampleScreen3> {

  
  void submit(){
    // Navigator.pushReplacement(
    //                 context,
    //                 MaterialPageRoute(builder: (context) => Lec13Screen2()),
    //               );
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
                      submit();
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
