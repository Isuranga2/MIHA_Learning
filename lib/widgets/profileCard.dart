import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String? profileName;
  ProfileCard({super.key, required this.profileName});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: 300,
      height: height * 0.22,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.yellow,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 60),
              title: Text(profileName!, style: TextStyle(fontSize: 30.0)),
              subtitle: Text('Best of Sonu Nigam Music.',
                  style: TextStyle(fontSize: 18.0)),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: const Text('Play'),
                  onPressed: () {/* ... */},
                ),
                RaisedButton(
                  child: const Text('Pause'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
