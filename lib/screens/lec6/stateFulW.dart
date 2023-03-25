
import 'package:flutter/material.dart';

class StateFullW extends StatefulWidget {
  Color? color2;
  // String? text;
  StateFullW({super.key, this.color2});

  @override
  State<StateFullW> createState() => _StateFullWState();
}

class _StateFullWState extends State<StateFullW> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 100,
            height: 100,
            color: widget.color2,
            // child: Text(widget.text!),
          );
  }
}