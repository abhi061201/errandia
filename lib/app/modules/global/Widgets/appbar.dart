import 'package:errandia/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:math' as math;
import '../constants/color.dart';

Widget mywidget = home_controller().atbusiness.value == false
    ? Container()
    : IconButton(
        onPressed: () {},
        icon: Icon(
          FontAwesomeIcons.arrowDownShortWide,
          textDirection: TextDirection.rtl,
        ),
        color: appcolor().mediumGreyColor,
      );
AppBar appbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    title: Image(
      image: AssetImage('assets/images/icon-errandia-logo-about.png'),
      width: Get.width * 0.3,
    ),
    actions: [
      // Obx(() {
      //  return mywidget;
      // }),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications,
          size: 30,
        ),
        color: appcolor().mediumGreyColor,
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.settings,
          size: 30,
        ),
        color: appcolor().mediumGreyColor,
      ),
    ],
  );
}
