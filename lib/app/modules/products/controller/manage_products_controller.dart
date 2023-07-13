import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/manage_products_view.dart';

class manage_product_controller extends GetxController{


}



class manage_product_tabController extends GetxController with GetSingleTickerProviderStateMixin{

  
   List<Widget> myTabs = [
    allProducts(),
    Published(),

    Trashed(),
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