import 'package:flutter/material.dart';

class Lec10Screen extends StatefulWidget {
  const Lec10Screen({super.key});

  @override
  State<Lec10Screen> createState() => _Lec10ScreenState();
}

class _Lec10ScreenState extends State<Lec10Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 10")),
      // body: ListView(
      // padding: const EdgeInsets.all(8),
      // children: const[
      //   ListTile( title: Text("Title1"), subtitle: Text("Sub Title1")),
      //   ListTile( title: Text("Title1"), subtitle: Text("Sub Title1")),
      //   ListTile( title: Text("Title1"), subtitle: Text("Sub Title1")),
      //   ListTile( title: Text("Title1"), subtitle: Text("Sub Title1")),
      // ],
      // )
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        children: [
          Image.network('https://picsum.photos/250?image=1'),
          Image.network('https://picsum.photos/250?image=2'),
          Image.network('https://picsum.photos/250?image=3'),
          Image.network('https://picsum.photos/250?image=4'),
          Image.network('https://picsum.photos/250?image=1'),
        ],
      ),
    );
  }
}
