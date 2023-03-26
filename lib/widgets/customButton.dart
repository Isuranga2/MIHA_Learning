
// Button widget

import 'package:MIHA_Learning/theme/appColors.dart';
import 'package:MIHA_Learning/theme/appTextStyles.dart';
import 'package:flutter/material.dart';


//*
// Customized Button
// params: Button text, Button color
//*/
class CustomButton extends StatelessWidget {
  String? buttonText;
  Color? buttonColor;
  CustomButton({super.key, required this.buttonText, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
                onPressed: (){               
                }, 
                style: ElevatedButton.styleFrom(
                primary: buttonColor ?? Primary_Color,
                ),
                child: Text(buttonText! ,style: buttonTextStyle,)),
    );
  }
}