// ignore_for_file: file_names

import 'package:MIHA_Learning/controllers/apiController.dart';
import 'package:MIHA_Learning/services/todoAPI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec17Screen extends StatefulWidget {
  const Lec17Screen({super.key});

  @override
  State<Lec17Screen> createState() => _Lec17ScreenState();
}

class _Lec17ScreenState extends State<Lec17Screen> {
  void fetchData() async {
    APIController apiController = APIController();
    var output = await apiController.fetchToDoByID(10);
    print(output);
  }

  void sendUserData() async {
    APIController apiController = APIController();
    await apiController.sendUserData("eve.holt@reqres.in","cityslicka123" );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 17 Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ElevatedButton(
                    onPressed: () {
                      fetchData();
                    },
                    child: const Text(
                      "Fetch TODO",
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                child: ElevatedButton(
                    onPressed: () {
                      sendUserData();
                    },
                    child: const Text(
                      "Send Data",
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
