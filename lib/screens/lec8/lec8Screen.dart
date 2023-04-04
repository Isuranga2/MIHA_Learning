import 'package:MIHA_Learning/widgets/customButton.dart';
import 'package:MIHA_Learning/widgets/profileCard.dart';
import 'package:flutter/material.dart';

class Lec8Screen extends StatefulWidget {
  const Lec8Screen({super.key});

  @override
  State<Lec8Screen> createState() => _Lec8ScreenState();
}

class _Lec8ScreenState extends State<Lec8Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 8")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  //! Go next page/screen & CAN come back
                  Navigator.pushNamed(context, '/second');

                  //! Go next page/screen & CAN NOT come back & Remove Previous Screen from Stack
                  //Navigator.pushReplacementNamed(context, '/second');

                  //! Go next page/screen & CAN NOT come back & Remove All Previous Screen from Stack
                  //Navigator.pushNamedAndRemoveUntil(context, '/second',  (Route<dynamic> route) => false);
                },
                child: const Text(
                  "Go Next Screen 2",
                )),

            //! Use function in Widget property
            ElevatedButton(
                onPressed: () => debugPrint("object"), // OR (){},
                child: const Text(
                  "Widget function",
                )),

            
          ],
        ),
      ),
    );
  }
}
