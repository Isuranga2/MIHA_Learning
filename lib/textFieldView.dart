

import 'package:flutter/material.dart';


//! Screen 1

//! part1
class TextFieldView extends StatefulWidget {
  const TextFieldView({super.key});

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

//! part2
class _TextFieldViewState extends State<TextFieldView> {

  //! Variable
  String appBarTitle = "Text Field View1"; //String variable

  TextEditingController nameController = TextEditingController(); //Create controller to hold user name input
  TextEditingController passwordController = TextEditingController(); //Create controller to hold user password input


  //! Other function


  @override
  Widget build(BuildContext context) {
    //! UI components code
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Container(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: [  
                Container(  
                  padding: EdgeInsets.all(15),  
                  child:  TextField(  
                    controller: nameController,
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Enter Your Name',  
                    ), 
                     
                  ),  
                ),  
                Container(  
                  padding: EdgeInsets.all(15),  
                  child:  TextField(  
                    obscureText: true,
                    keyboardType: TextInputType.number,  
                    controller: passwordController,
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter Password',  
                    ),  
                    onChanged: (value){
                      debugPrint(value);
                      debugPrint("Controller value: "+ passwordController.text);
                    },
                  ),  
                ),  
                
              ],  
            )  
        ) ,
    ); //! must Return a Widget
  }  
}




