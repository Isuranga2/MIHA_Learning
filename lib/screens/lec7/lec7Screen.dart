import 'package:MIHA_Learning/screens/lec7/lec7Screen2.dart';
import 'package:MIHA_Learning/widgets/customButton.dart';
import 'package:MIHA_Learning/widgets/profileCard.dart';
import 'package:flutter/material.dart';

class Lec7Screen extends StatefulWidget {
  const Lec7Screen({super.key});

  @override
  State<Lec7Screen> createState() => _Lec7ScreenState();
}

class _Lec7ScreenState extends State<Lec7Screen> {
  //user load
  //model
  List names = ["Amal1", "Kamal2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 7")),
      body: Center(
        child: Column(
          children: [
            // CustomButton(
            //   buttonText: "Register",
            //   buttonColor: Colors.yellow,
            // ),
            // CustomButton(
            //   buttonText: "Hello",
            // ),
            ProfileCard(profileName: names[0]),
            ProfileCard(
              profileName: names[1],
            ),
            // ProfileCard(
            //   profileName: names[1],
            // ),
            // ProfileCard(
            //   profileName: names[1],
            // ),
            ElevatedButton(
                onPressed: () {
                  //! Go next page/screen & CAN come back
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lec7Screen2()),
                  );

                  //! Go next page/screen & CAN NOT come back & Remove Previous Screen from Stack
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Lec7Screen2()),
                  // );

                  //! Go next page/screen & CAN NOT come back & Remove All Previous Screen from Stack
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (context) => Lec7Screen2()),
                  //     (Route<dynamic> route) => false);
                },
                child: Text(
                  "Go Next",
                )),
          ],
        ),
      ),
    );
  }
}
