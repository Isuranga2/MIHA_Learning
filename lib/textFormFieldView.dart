import 'package:flutter/material.dart';

class TextFormFieldView extends StatefulWidget {
  const TextFormFieldView({super.key});

  @override
  State<TextFormFieldView> createState() => _TextFormFieldViewState();
}

class _TextFormFieldViewState extends State<TextFormFieldView> {
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  // final _formKey = GlobalKey<FormState>();  
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFormFieldView"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [            
            Container(
              margin: const EdgeInsets.all(15),
              child: TextFormField(                
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),             
              ),
            ),
       
          ],
        ),
      ),
    );
  }

}