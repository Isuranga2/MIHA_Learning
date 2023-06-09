// ignore_for_file: file_names


import 'package:MIHA_Learning/controllers/firebaseAppCtrl/authController.dart';
import 'package:flutter/material.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  void signInUser()async{
    AuthController authController = AuthController();
    Map<String, dynamic>? output = await authController.signInUser(emailCtrl.text, passwordCtrl.text);
    
    print(output);
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign-In Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller:emailCtrl,                
              ),
              TextField(
                controller:passwordCtrl,                
              ),
              ElevatedButton(
                    onPressed: () {
                      signInUser();
                    },
                    child: const Text(
                      "Sign-In",
                    )),
              
            ],
          ),
        ),
      ),
    );
  }
}
