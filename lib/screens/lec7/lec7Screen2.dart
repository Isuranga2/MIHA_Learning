
import 'package:flutter/material.dart';

class Lec7Screen2 extends StatefulWidget {
  const Lec7Screen2({super.key});

  @override
  State<Lec7Screen2> createState() => _Lec7Screen2State();
}

class _Lec7Screen2State extends State<Lec7Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lec 7 Screen 2"), leading: Container(),),
      body: Center(
        child:  ElevatedButton(
                onPressed: () {
                  //! Go back page/screen
                  Navigator.pop(context);
                },
                child: Text(
                  "Go Back",
                )),
      ),
    );
  }
}