import 'package:flutter/material.dart';

class StateLessW extends StatelessWidget {
  Color? color1;
  StateLessW({super.key, this.color1});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 100,
            height: 100,
            color: color1,
          );
  }
}