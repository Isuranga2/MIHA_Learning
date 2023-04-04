import 'package:flutter/material.dart';

class Lec8Screen4 extends StatefulWidget {
  const Lec8Screen4({super.key});

  @override
  State<Lec8Screen4> createState() => _Lec8Screen4State();
}

class _Lec8Screen4State extends State<Lec8Screen4> {

  int? studentCount;
  String? name;

  @override
  void initState() {
    super.initState();
    studentCount = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("lec 8 screen 4")),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Student count : $studentCount"),
          ElevatedButton(
                onPressed: () {                  
                  setState(() {
                   studentCount = studentCount! + 1;                          
                  });
                },
                child: const Text(
                  "Increase",
                )),
          ElevatedButton(
                onPressed: () {
                  setState(() {
                    studentCount = studentCount! - 1;
                  });
                },
                child: const Text(
                  "decrease",
                )),
        ],
      )),
    );
  }
}