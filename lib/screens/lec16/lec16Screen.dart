// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lec16Screen extends StatefulWidget {
  const Lec16Screen({super.key});

  @override
  State<Lec16Screen> createState() => _Lec16ScreenState();
}

class _Lec16ScreenState extends State<Lec16Screen> {
  List<String> veggies = ['Broccoli', 'Carrot', 'Cucumber', 'Apple', 'Mango'];

  @override
  void initState() {
    super.initState();
  }

  Future<List<String>> getData() async{
    return Future.delayed(Duration(seconds: 10), () {
      // return "I am Kamal";
      return veggies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 16 Screen")),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 2000,
            child: FutureBuilder(
              future: getData(),
              builder: (BuildContext ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If we got an error
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occurred',
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                    // if we got our data
                  } else if (snapshot.hasData) {
                    // Extracting data from snapshot object
                    final data = snapshot.data as List<String>;
                    //! Return Widget
                    return Center(
                      child: Container(
                        // color: Colors.blue,
                        // child: Text(
                        //   '$data',
                        //   style: TextStyle(fontSize: 18),
                        // ),
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, int index) {
                            //! Return Widget
                            return Container(
                                color: Colors.green,
                                height: 30,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text(data[index]));
                          },
                        ),
                      ),
                    );
                  }
                }
                // Displaying LoadingSpinner to indicate waiting state
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
