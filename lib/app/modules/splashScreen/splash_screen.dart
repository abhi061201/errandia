import 'dart:async';

import 'package:errandia/app/uis/getStartedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Get.off(
        get_started_screen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff113d6b),
      body: SafeArea(
          child: Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: Get.height*0.35,
              
            ),
          )),
    );
  }
}
