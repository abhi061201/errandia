import 'package:errandia/app/modules/buiseness/view/manage_business_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/business_item.dart';

class business_controller extends GetxController {
  List<business_item> businessList = [
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/mechanic.png',
      location: 'Akwa , Douala',
      name: 'Centrale Auto Cabine',
      type_of_business: 'Cars & Bikes',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/nishang.png',
      location: 'Akwa , Douala',
      name: 'Nishang',
      type_of_business: 'Electronics & IT',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/plumbing.png',
      location: 'Akwa , Douala',
      name: 'Centrale Auto Cabine',
      type_of_business: 'Cars & Bikes',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/barber.png',
      location: 'Akwa , Douala',
      name: 'Barber Shop',
      type_of_business: 'Hair Cut',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/mechanic.png',
      location: 'Akwa , Douala',
      name: 'Centrale Auto Cabine',
      type_of_business: 'Cars & Bikes',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/nishang.png',
      location: 'Akwa , Douala',
      name: 'Nishang',
      type_of_business: 'Electronics & IT',
    ),
    business_item(
      imagepath: 'assets/images/featured_buiseness_icon/plumbing.png',
      location: 'Akwa , Douala',
      name: 'Centrale Auto Cabine',
      type_of_business: 'Cars & Bikes',
    ),
    
  ];
}



class manage_business_tabController extends GetxController with GetSingleTickerProviderStateMixin{

   List<Widget> myTabs = [
    allBusiness(),
    Published(),
    Trashed(),
  ];


  late TabController tabController;
  @override
  void onInit() {
    // TODO: implement onInit
    tabController= TabController(length: myTabs.length, vsync: this);
    super.onInit();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

}