import 'package:errandia/app/modules/Dashboard/view/dashboard_view.dart';

import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../buiseness/view/manage_business_view.dart';
import '../../home/view/home_view.dart';

class customendDrawer extends StatelessWidget {
  customendDrawer({super.key});
  final padding = EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.grey,
      child: Container(
        // padding: padding,
        child: ListView(
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              padding: padding + EdgeInsets.symmetric(horizontal: 8),
              // height: Get.height * 0.2,
              child: Text(
                'Explore Errandia',
                style: TextStyle(
                  color: appcolor().mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            drawerItemWidget(
              text: 'Create Shop',
              imagePath: 'assets/images/sidebar_icon/create_shop.png',
              callback: () {
                print('hello');
              },
            ),
            drawerItemWidget(
              text: 'Add Products',
              imagePath: 'assets/images/sidebar_icon/add_products.png',
              callback: () {
                Get.back();
              },
            ),
            Divider(
              color: appcolor().mediumGreyColor,
            ),
            drawerItemWidget(
              text: 'My Dashboard',
              imagePath: 'assets/images/sidebar_icon/dashboard.png',
              callback: () {
                Get.back();
                Get.to(dashboard_view());
              },
            ),
            drawerItemWidget(
              text: 'Errands',
              imagePath:
                  'assets/images/sidebar_icon/icon-profile-errands.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Manage Products',
              imagePath: 'assets/images/sidebar_icon/icon-manage-products.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Manage Services',
              imagePath: 'assets/images/sidebar_icon/services.png',
              callback: () {
                
              },
            ),
            drawerItemWidget(
              text: 'Manage Businesses',
              imagePath: 'assets/images/sidebar_icon/icon-company.png',
              callback: () {
                Get.back();
                // Get.offAll(Home_view());
                Get.to(manage_business_view());
              },
            ),
            drawerItemWidget(
              text: 'Enquiries',
              imagePath: 'assets/images/sidebar_icon/enquiry.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Subscribers',
              imagePath: 'assets/images/sidebar_icon/icon-profile-subscribers.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Following',
              imagePath: 'assets/images/sidebar_icon/icon-profile-following.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Reviews',
              imagePath: 'assets/images/sidebar_icon/icon-profile-reviews.png',
              callback: () {},
            ),
            drawerItemWidget(
              text: 'Billing History',
              imagePath: 'assets/images/sidebar_icon/icon-billing-history.png',
              callback: () {},
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            drawerItemWidget(
              text: 'Settings',
              imagePath: 'assets/images/sidebar_icon/icon-settings.png',
              callback: () {},
            ),
            Divider(),
            drawerItemWidget(
              text: 'Logout',
              imagePath: 'assets/images/sidebar_icon/icon-logout.png',
              callback: () {},
            ),
            SizedBox(height: 60,),
          ],
        ),
      ),
    );
  }
}

Widget drawerItemWidget({
  required String text,
  required String imagePath,
  required Callback callback,
  final hovercolor = Colors.white70,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Row(
        children: [
          Container(
            height: Get.height * 0.025,
            child: Image(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: Get.width * 0.05,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ),
  );
}
