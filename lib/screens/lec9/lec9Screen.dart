// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/testController.dart';
import 'package:flutter/material.dart';

class Lec9Screen extends StatefulWidget {
  const Lec9Screen({super.key});

  @override
  State<Lec9Screen> createState() => _Lec9ScreenState();
}

class _Lec9ScreenState extends State<Lec9Screen> {

  TextEditingController num1TEC = TextEditingController();
  TextEditingController num2TEC = TextEditingController();
  TestController testController = TestController();

  int result = 0;

  void addNumber(){
    int num1 = int.parse(num1TEC.text);
    int num2 = int.parse(num2TEC.text);    
    setState(() {
      result = num1 + num2;
    });
  }

  void reduction(){
    int num1 = int.parse(num1TEC.text);
    int num2 = int.parse(num2TEC.text); 
    setState(() {
      result = testController.reduction(num1, num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 9")),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: num1TEC,
                keyboardType: TextInputType.number,                       
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: num2TEC,
                keyboardType: TextInputType.number,              
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      addNumber();
                    },
                    child: const Text(
                      "Add",
                    )),
                     ElevatedButton(
                    onPressed: () {
                      reduction();
                    },
                    child: const Text(
                      "Reduction",
                    )),
              ],
            ), 
            Text("Result: $result")        
          ],
        ),
      ),
    );
  }
}
