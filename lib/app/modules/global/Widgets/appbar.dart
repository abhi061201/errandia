import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/color.dart';

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
