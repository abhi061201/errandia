import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:errandia/app/modules/global/Widgets/appbar.dart';
import 'package:errandia/app/modules/global/Widgets/customDrawer.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class errandia_business_view extends StatelessWidget {
  int index;
  final business_controller controller = Get.put(business_controller());
  errandia_business_view({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
        // leading: Container(
        //   child: Icon(Icons.arrow_back_ios),
        // ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              controller.businessList[index].name,
              style: TextStyle(color: appcolor().bluetextcolor, fontSize: 15),
            ),
            Spacer(),
            IconButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.symmetric(horizontal: 5),
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              color: appcolor().mediumGreyColor,
            ),
            IconButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              color: appcolor().mediumGreyColor,
            ),
          ],
        ),
        iconTheme: IconThemeData(
          color: appcolor().mediumGreyColor,
          size: 30,
        ),
      ),
      endDrawer: customendDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              height: Get.height * 0.3,
              width: Get.width,
              child: Image(
                image: AssetImage(controller.businessList[index].imagepath),
                fit: BoxFit.fill,
              ),
            ),
          
            // shop name
            
          ],
        ),
      ),
    );
  }
}
