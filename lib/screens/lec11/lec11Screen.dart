import 'package:flutter/material.dart';

class Lec11Screen extends StatefulWidget {
  const Lec11Screen({super.key});

  @override
  State<Lec11Screen> createState() => _Lec11ScreenState();
}

class _Lec11ScreenState extends State<Lec11Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 11")),
      // body: Stack(
      //   children: <Widget>[
      //     //?Bottom element
      //     Container(
      //       width: 300,
      //       height: 300,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.yellow,
      //     ),
      //     Positioned(
      //       top: 30,
      //       right: 30,
      //       child: Text("Hello"))
      //     //?Top element
      //   ],
      // ),
      body: SingleChildScrollView(  
        child: Container(
          height: 1000,
          child: Column(
            children: [
              // Flexible(child: Container(color: Colors.yellow,height: 100,)),          
              // Expanded(flex: 3, child: Container(color: Colors.yellow,height: 100,)),
              Expanded(flex: 1, child: Container(color: Colors.blue,height: 100,)),
              Container(color: Colors.red, width: 100,height: 100,),
              TextField(),
              Container(color: Colors.red, width: 100,height: 100,),
              Container(color: Colors.red, width: 100,height: 100,),
              Container(color: Colors.red, width: 100,height: 100,),
              Container(color: Colors.red, width: 100,height: 100,),
              Container(color: Colors.red, width: 100,height: 100,),
              Container(color: Colors.green, width: 100,height: 100,),
              Container(color: Colors.yellow, width: 100,height: 100,),
    
            ],
          ),
        ),
      ),
    );
  }
}
