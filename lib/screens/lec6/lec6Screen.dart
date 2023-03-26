import 'package:MIHA_Learning/screens/lec6/stateFulW.dart';
import 'package:MIHA_Learning/screens/lec6/stateLessW.dart';
import 'package:MIHA_Learning/widgets/customButton.dart';
import 'package:flutter/material.dart';

//**
//  
//
// */
class Lec6Screen extends StatefulWidget {
  const Lec6Screen({super.key});

  @override
  State<Lec6Screen> createState() => _Lec6ScreenState();
}

class _Lec6ScreenState extends State<Lec6Screen> {

  TextEditingController nameController = TextEditingController(); //Create controller to hold user name input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 6")),
      body: Center(
        child: Column(
          children: [
            emailInputWidget(nameController),
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(50),
              color: Colors.green,
              child: childContainer(c: Colors.red, text: "Hello"),          
              ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   padding: const EdgeInsets.all(50),
            //   color: Colors.blue,
            //   child: StateLessW(color1: Colors.yellow),          
            //   ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   padding: const EdgeInsets.all(50),
            //   color: Colors.black,
            //   child: StateFullW(color2: Colors.pink),          
            //   ),
            ElevatedButton(
              onPressed: (){
                print(nameController.text);
              }, 
              child: const Text("Click"))
          ],
        ),
      ),
    );
  }

  //! child- in class widget
  Widget childContainer({Color? c, String? text}){
    return Container(
            width: 100,
            height: 100,
            color: c,
            child: Text(text!),
            alignment: Alignment.center,
          );
  }

  // 
  Widget emailInputWidget(TextEditingController ctrl){
    return Container(  
                  padding: EdgeInsets.all(15),  
                  child:  TextField(  
                    controller: ctrl,
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ),                      
                  ),  
                );
  } 
}