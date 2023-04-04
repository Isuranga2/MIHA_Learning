
import 'package:flutter/material.dart';

class Lec8Screen3 extends StatefulWidget {
  const Lec8Screen3({super.key});

  @override
  State<Lec8Screen3> createState() => _Lec8Screen3State();
}

class _Lec8Screen3State extends State<Lec8Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 8 Screen 3"), leading: Container(),),
      body: Center(
        child:  ElevatedButton(
                onPressed: () {
                  //! Go back page/screen
                  Navigator.pop(context);
                },
                child: const Text(
                  "Go Back",
                )),
      ),
    );
  }
}