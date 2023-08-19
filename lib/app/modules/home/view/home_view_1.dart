import 'package:errandia/app/modules/global/Widgets/appbar.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:errandia/app/modules/categories/view/categories.dart';
import 'package:errandia/app/modules/home/controller/home_controller.dart';
import 'package:errandia/common/random_ui/ui_23.dart';
import 'package:errandia/app/modules/errands/view/run_an_errand.dart';
import 'package:errandia/app/modules/products/view/product_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../categories/view/categories_item.dart';
import '../../buiseness/featured_buiseness/view/featured_list_item.dart';
import '../../recently_posted_item.dart/view/recently_posted_list.dart';

class home_view_1 extends StatelessWidget {
  home_view_1({super.key});

  @override
  Widget build(BuildContext context) {
    home_controller().atbusiness.value = false;
    return Stack(
      
      children: [
        Image(
          image: AssetImage(
            'assets/images/home_bg.png',
          ),
          fit: BoxFit.fill,
          height: Get.height,
          width: Get.width,
        ),
        ListView(
          // physics: (),
          children: [
            // welcome widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Container(
                height: Get.height * 0.16,
                width: Get.width,
                child: Center(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome Kris',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Start by running an errand',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Get.to(run_an_errand());
                          },
                          child: Text(
                            'Run an Errand',
                            style: TextStyle(
                                color: appcolor().mainColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),

            // location container
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              color: appcolor().skyblueColor,
              height: Get.height * 0.06,
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/refresh_location.png',
                    ),
                    color: appcolor().mainColor,
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Update Buiseness Location'.tr,
                        style: TextStyle(
                            color: appcolor().mainColor, fontSize: 12),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Verify Location'.tr,
                      style: TextStyle(
                        color: appcolor().mainColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // categories widget

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: appcolor().mainColor,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.to(categories_view());
                    },
                    child: Text('See All'),
                  ),
                ],
              ).paddingSymmetric(horizontal: 20),
            ),

            Categories_List_Widget(),

            // Featured Businesses

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Featured Businesses',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: appcolor().mainColor,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.to(Ui_23());
                    },
                    child: Text('See All'),
                  ),
                ],
              ).paddingSymmetric(horizontal: 20),
            ),

            Featured_Businesses_List(),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Recently Posted Errands',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: appcolor().mainColor,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Get.to(Product_view());
                    },
                    child: Text('See All'),
                  ),
                ],
              ).paddingSymmetric(horizontal: 20),
            ),

            Recently_posted_items_Widget(),
            Container(
              height: Get.height * 0.05,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}

Widget Categories_List_Widget() {
  return Container(
    height: Get.height * 0.2,
    color: Colors.white,
    child: ListView.builder(
      primary: false,
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: home_categories_list.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: Get.width * 0.2,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                color: appcolor().lightgreyColor,
                child: Image(
                  image: AssetImage(
                    home_categories_list[index].imagePath,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.015,
              ),
              Text(
                home_categories_list[index].belowText.toString(),
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget Featured_Businesses_List() {
  return Container(
    height: Get.height * 0.365,
    color: Colors.white,
    child: ListView.builder(
      primary: false,
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: Featured_Businesses_Item_List.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: Get.width * 0.4,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: appcolor().lightgreyColor,
                child: Image(
                  image: AssetImage(
                    Featured_Businesses_Item_List[index].imagePath,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.009,
              ),
              Text(
                Featured_Businesses_Item_List[index].servicetype.toString(),
                style: TextStyle(
                    fontSize: 12,
                    // fontWeight: FontWeight.bold,
                    color: appcolor().mediumGreyColor),
              ),
              SizedBox(
                height: Get.height * 0.001,
              ),
              Text(
                Featured_Businesses_Item_List[index].name.toString(),
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: appcolor().mainColor),
              ),
              SizedBox(
                height: Get.height * 0.001,
              ),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text(Featured_Businesses_Item_List[index].location.toString())
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget Recently_posted_items_Widget() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
    height: Get.height * 0.47,
    color: Colors.white,
    child: ListView.builder(
      primary: false,
      shrinkWrap: false,
      scrollDirection: Axis.horizontal,
      itemCount: Recently_item_List.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            width: Get.width * 0.5,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * 0.09,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          Recently_item_List[index].avatarImage.toString(),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Recently_item_List[index].name.toString(),
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            Recently_item_List[index].date.toString(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: appcolor().mediumGreyColor,
                ),
                Container(
                  height: Get.height * 0.2,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  color: appcolor().lightgreyColor,
                  child: Center(
                    child: Image(
                      image: AssetImage(
                          Recently_item_List[index].imagePath.toString()),
                      height: Get.height * 0.15,
                    ),
                  ),
                ),
                Divider(
                  color: appcolor().mediumGreyColor,
                ),
                SizedBox(
                  height: Get.height * 0.009,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   Featured_Businesses_Item_List[index]
                      //       .servicetype
                      //       .toString(),
                      //   style: TextStyle(
                      //       fontSize: 13,
                      //       fontWeight: FontWeight.bold,
                      //       color: appcolor().mediumGreyColor),
                      // ),
                      // SizedBox(
                      //   height: Get.height * 0.001,
                      // ),
                      Text(
                        Recently_item_List[index].belowText.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: appcolor().mainColor),
                      ),
                      SizedBox(
                        height: Get.height * 0.001,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            Recently_item_List[index].location.toString(),
                            style: TextStyle(color: appcolor().mainColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
