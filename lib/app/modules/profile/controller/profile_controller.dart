import 'package:errandia/app/modules/global/Widgets/errandia_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile_controller extends GetxController {

  RxInt tabControllerindex= 0.obs;

  List<errandia_widget> product_list = [
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/ui_23_item.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/ui_23_item.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'hello',
      location: 'Akwa, Douala',
    ),

  ];
  List<errandia_widget> service_list = [
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'hello',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/ui_23_item.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),

  ];

  List<errandia_widget> Buiseness_list = [
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/ui_23_item.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),
    errandia_widget(
      cost: 'XAF 1000',
      imagePath: 'assets/images/er2.png',
      name: 'wax',
      location: 'Akwa, Douala',
    ),

  ];
}
