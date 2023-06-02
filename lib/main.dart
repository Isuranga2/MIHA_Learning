import 'package:MIHA_Learning/configs/languageConfig.dart';
import 'package:MIHA_Learning/screens/lec10/lec10Screen.dart';
import 'package:MIHA_Learning/screens/lec10/lec10Screen2.dart';
import 'package:MIHA_Learning/screens/lec11/lec11Screen.dart';
import 'package:MIHA_Learning/screens/lec11/lec11Screen2.dart';
import 'package:MIHA_Learning/screens/lec12/lec12Screen1.dart';
import 'package:MIHA_Learning/screens/lec12/lec12Screen2.dart';
import 'package:MIHA_Learning/screens/lec13/Example/exampleScreen1.dart';
import 'package:MIHA_Learning/screens/lec13/lec13Screen1.dart';
import 'package:MIHA_Learning/screens/lec14/lec14Screen1.dart';
import 'package:MIHA_Learning/screens/lec15/lec15Screen.dart';
import 'package:MIHA_Learning/screens/lec16/lec16Screen.dart';
import 'package:MIHA_Learning/screens/lec17/lec17Screen.dart';
import 'package:MIHA_Learning/screens/lec6/lec6Screen.dart';

import 'package:MIHA_Learning/screens/lec8/lec8Screen4.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen.dart';
import 'package:MIHA_Learning/screens/lec9/lec9Screen2.dart';
import 'package:MIHA_Learning/utils/appBind.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Locale currentLang = Locale('en', 'US');
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      translations: LanguageConfig(),
      locale: currentLang,
      fallbackLocale: Locale('en', 'US'),
      initialBinding: AppBinding(),
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => const Lec8Screen(),
      //   '/second': (context) => const Lec8Screen2(),
      //   '/third': (context) => const Lec8Screen3(),
      // },
      home: const Lec17Screen(), //Screen widget
    );
  }
}
