
import 'package:flutter/material.dart';

class Lec8Screen2 extends StatefulWidget {
  const Lec8Screen2({super.key});

  @override
  State<Lec8Screen2> createState() => _Lec8Screen2State();
}

class _Lec8Screen2State extends State<Lec8Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 8 Screen 2"), leading: Container(),),
      body: Center(
        child:  ElevatedButton(
                onPressed: () {
                  //! Go back page/screen
                  //Navigator.pop(context);

                  //! Go next page/screen & CAN NOT come back & Remove Previous Screen from Stack
                  // Navigator.pushReplacementNamed(context, '/third');

                  //! Go next page/screen & CAN NOT come back & Remove All Previous Screen from Stack
                  Navigator.pushNamedAndRemoveUntil(context, '/third',  (Route<dynamic> route) => false);  
                },
                child: const Text(
                  "Go Next Screen 3",
                )),
      ),
    );
  }
}