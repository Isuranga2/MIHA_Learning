import 'package:flutter/material.dart';

class Lec10Screen2 extends StatefulWidget {
  const Lec10Screen2({super.key});

  @override
  State<Lec10Screen2> createState() => _Lec10Screen2State();
}

class _Lec10Screen2State extends State<Lec10Screen2> {
  List<String> veggies = ['Broccoli', 'Carrot', 'Cucumber', 'Apple', 'Mango'];

  Future<List<String>> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      // return "I am Kamal";
      return veggies;
    });
  }

  Stream<int> generateNumbers = (() async* {
    await Future<void>.delayed(Duration(seconds: 2));

    for (int i = 1; i <= 5; i++) {
      await Future<void>.delayed(Duration(seconds: 3));
      yield i;
    }
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 10")),
      // body: ListView.builder(
      //   itemCount: veggies.length,
      //   itemBuilder: (context, int index) {

      //     //! Return Widget
      //     return Container(
      //       color: Colors.green,
      //       height: 30,
      //       margin: EdgeInsets.only(bottom: 10),
      //       child: Text(veggies[index]));
      //   },
      // )
      // body: GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //         maxCrossAxisExtent: 200,
      //         childAspectRatio: 3 / 2,
      //         crossAxisSpacing: 5,
      //         mainAxisSpacing: 4),
      //     itemCount: veggies.length,
      //     itemBuilder: (BuildContext ctx, index) {
      //       //! Return Widget
      //       return Container(
      //         alignment: Alignment.center,
      //         decoration: BoxDecoration(
      //             color: Colors.amber,
      //             borderRadius: BorderRadius.circular(15)),
      //         child: Text(veggies[index]),
      //       );
      //     }),
      // body: FutureBuilder(
      //   future: getData(),
      //   builder: (BuildContext ctx, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       // If we got an error
      //       if (snapshot.hasError) {
      //         return Center(
      //           child: Text(
      //             '${snapshot.error} occurred',
      //             style: TextStyle(fontSize: 18),
      //           ),
      //         );
      //         // if we got our data
      //       } else if (snapshot.hasData) {
      //         // Extracting data from snapshot object
      //         final data = snapshot.data as List<String>;
      //         //! Return Widget
      //         return Center(
      //           child: Container(
      //             // color: Colors.blue,
      //             // child: Text(
      //             //   '$data',
      //             //   style: TextStyle(fontSize: 18),
      //             // ),
      //             child: ListView.builder(
      //               itemCount: data.length,
      //               itemBuilder: (context, int index) {
      //                 //! Return Widget
      //                 return Container(
      //                     color: Colors.green,
      //                     height: 30,
      //                     margin: EdgeInsets.only(bottom: 10),
      //                     child: Text(data[index]));
      //               },
      //             ),
      //           ),
      //         );
      //       }
      //     }
      //     // Displaying LoadingSpinner to indicate waiting state
      //     return Center(
      //       child: CircularProgressIndicator(),
      //     );
      //   },
      // ),
      body: StreamBuilder<int>(
        stream: generateNumbers,
        builder: (
          BuildContext context,
          AsyncSnapshot<int> snapshot,
        ) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Text('Error');
            } else if (snapshot.hasData) {
              return Text(snapshot.data.toString(),
                  style: const TextStyle(color: Colors.teal, fontSize: 36));
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}
