import 'package:MIHA_Learning/configs/languageConfig.dart';
import 'package:MIHA_Learning/screens/firebaseAppScreen/readAndWriteDataScreen.dart';
import 'package:MIHA_Learning/screens/firebaseAppScreen/signInScreen.dart';
import 'package:MIHA_Learning/screens/firebaseAppScreen/signupScreen.dart';
import 'package:MIHA_Learning/screens/firebaseAppScreen/uploadImageScreen.dart';
import 'package:MIHA_Learning/screens/lec17/lec17Screen.dart';
import 'package:MIHA_Learning/utils/appBind.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp().whenComplete(() {
    debugPrint("fb connection is completed");
  });

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
      home: const UploadImageScreen(), //Screen widget
    );
  }
}
