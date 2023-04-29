import 'package:MIHA_Learning/screens/lec11/lec11Screen2.dart';
import 'package:flutter/material.dart';

class Lec11Screen3 extends StatefulWidget {
  const Lec11Screen3({super.key});

  @override
  State<Lec11Screen3> createState() => _Lec11Screen3State();
}

class _Lec11Screen3State extends State<Lec11Screen3> {
  bool _slowAnimations = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lec 11 Screen 3")),
      body: Center(
        child: _TransitionListTile(
                  title: 'Container transform',
                  subtitle: 'OpenContainer',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return const Lec11Screen2();
                        },
                      ),
                    );
                  },
                ),),      
      
    );
  }
}


class _TransitionListTile extends StatelessWidget {
  const _TransitionListTile({
    this.onTap,
    required this.title,
    required this.subtitle,
  });

  final GestureTapCallback? onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      leading: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black54,
          ),
        ),
        child: const Icon(
          Icons.play_arrow,
          size: 35,
        ),
      ),
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}