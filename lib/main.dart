import 'package:errandia/app/modules/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const ErrandiaApp());
}

class ErrandiaApp extends StatelessWidget {
  const ErrandiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff113d6b),
        primaryTextTheme: TextTheme(
          
        ),
      ),
      home: splash_screen(),
    );
  }
}
