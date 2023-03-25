//Screen Widget --> Stateful
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    //! UI components code
    return Scaffold(
      appBar: AppBar(title: const Text("App bar title 2"),),
      backgroundColor: Colors.white,
      body: Container(
        width: 500,
        height: 500,
        // color: Colors.green,        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Child 1", style: TextStyle(fontSize: 30, color: Colors.red,fontFamily: "Sono"),),
            Text("Child 2",style: TextStyle(fontSize: 30, color: Colors.red)),
            // GestureDetector(
            //   onTap: () {
            //     debugPrint("Hi All");
            //   },
            //   child: Container(
            //     width: 100,
            //     height: 100,
            //     color: Colors.green,
            //     child: Text("Child 3")),
            // ),

            // ElevatedButton(
            //   onPressed: (){
            //     //Function body
            //     debugPrint("Click button");
            //   }, 
            //   child: const Text("Login"),              
            // ),
            // IconButton(
            //   onPressed: ()=> print("Hello"),
            //   icon: Icon(Icons.settings)
            // ),
            // TextButton(
            //   onPressed: (){}, 
            //   child: Text("See More")
            // ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.red,
            //   child: Image(
            //     image: AssetImage("assets/images/Image1.jpeg"),
            //     fit: BoxFit.fitHeight,
            //   ),
            // ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   child: Image(
            //     image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/miha-learning.appspot.com/o/gfx100s_sample_04_thum-1.jpg?alt=media&token=4430c388-a719-4170-a4c8-4522e6777fea")
            //   ),
            // ),
            // Icon(
            //   Icons.person,
            //   size: 40,
            //   color: Colors.red,
            // ),
            Container(
              child: SvgPicture.asset(
                  "assets/icons/Group 50.svg",
                  width: 200,
                  height: 200,
 
              ),
            )

          ],
        ),
      ),

    
    );
  }
}
