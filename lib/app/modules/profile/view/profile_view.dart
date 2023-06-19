import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Profile_view extends StatelessWidget {
  const Profile_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList.list(children: [
            Container(
              height: Get.height * 0.4,
              color: appcolor().mainColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // profile picture container
                  Container(
                    // child: Image(image: AssetImage(''),),
                    height: Get.height * 0.1,
                    width: Get.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // profile name container
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Profile Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  // profile location
                  Container(
                    child: Text(
                      'Buea, South West Region, Cameroo',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  // details container
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    height: Get.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        // details_container_item_widget('Subscriber', ),
                      ],
                    ),
                  ),
                ],
              ).paddingSymmetric(vertical: 15),
            ),
          ])
        ],
      ),
    );
  }
}

Widget details_container_item_widget(
  String title,
  IconData iconData,
  int count,
) {
  return Column(
    children: [
      Container(
        child: Icon(iconData),
      ),
      Container(
        child: Text(title),
      ),
      Container(
        child: Text(count.toString()),
      ),
    ],
  );
}
