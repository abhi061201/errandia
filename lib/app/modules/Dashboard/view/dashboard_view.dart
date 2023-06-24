import 'package:errandia/app/modules/global/Widgets/appbar.dart';
import 'package:errandia/app/modules/global/Widgets/customDrawer.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class dashboard_view extends StatelessWidget {
  const dashboard_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      floatingActionButton: InkWell(
        onTap: () {
          custombottomsheet();
        },
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: appcolor().skyblueColor,
          ),
          child: Icon(
            Icons.add,
            size: 60,
            color: appcolor().mainColor,
          ),
        ),
      ),
      appBar: appbar(),
      endDrawer: customendDrawer(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 8, bottom: 5, top: 7),
              child: Text(
                'My Dashboard',
                style: TextStyle(
                    color: appcolor().mainColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: Get.height * 0.58,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 1,
                mainAxisSpacing: 5,
                childAspectRatio: 1 / 1.3,
                crossAxisCount: 3,
                children: [
                  dashboard_widget(
                    Imagepath: 'assets/images/sidebar_icon/icon-company.png',
                    title: 'Manage Businesses',
                    belowtext: '0 Businesses',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath:
                        'assets/images/sidebar_icon/icon-manage-products.png',
                    title: 'Manage Products',
                    belowtext: '0 Products',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath: 'assets/images/sidebar_icon/services.png',
                    title: 'Manage Services',
                    belowtext: '0 Services',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath:
                        'assets/images/sidebar_icon/icon-profile-errands.png',
                    title: 'Errands',
                    belowtext: '0 Errands',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath: 'assets/images/sidebar_icon/enquiry.png',
                    title: 'Enquiries',
                    belowtext: '0 Enquiries',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath: 'assets/images/sidebar_icon/icon-reviews.png',
                    title: 'Reviews',
                    belowtext: '0 Reviews',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath:
                        'assets/images/sidebar_icon/icon-profile-subscribers.png',
                    title: 'Subscribers',
                    belowtext: '0 Subscribers',
                    callback: () {},
                  ),
                  dashboard_widget(
                    Imagepath:
                        'assets/images/sidebar_icon/icon-profile-following.png',
                    title: 'Following',
                    belowtext: '0 Following',
                    callback: () {},
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              height: Get.height * 0.2,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 1,
                childAspectRatio: 1 / 1.3,
                crossAxisCount: 3,
                children: [
                  dashboard_widget(
                      Imagepath:
                          'assets/images/sidebar_icon/icon-business-branches.png',
                      title: 'Business Branches',
                      belowtext: '0 Branches',
                      callback: () {}),
                  dashboard_widget(
                      Imagepath: 'assets/images/sidebar_icon/icon-manager.png',
                      title: 'Branch Managers',
                      belowtext: '0 Managers',
                      callback: () {}),
                ],
              ),
            ),
            Divider(),
            Container(
              height: Get.height * 0.2,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 1,
                childAspectRatio: 1 / 1.3,
                crossAxisCount: 3,
                children: [
                  dashboard_widget(
                      Imagepath:
                          'assets/images/sidebar_icon/icon-dashboard-subscription-plan.png',
                      title: 'Subscription',
                      belowtext: 'Ongoing',
                      callback: () {}),
                  dashboard_widget(
                      Imagepath:
                          'assets/images/sidebar_icon/icon-dashboard-smsplan.png',
                      title: 'SMS Plan',
                      belowtext: 'No Plan',
                      callback: () {}),
                  dashboard_widget(
                      Imagepath:
                          'assets/images/sidebar_icon/icon-dashboard-my-profile.png',
                      title: 'My Profile',
                      belowtext: '0 complete',
                      callback: () {}),
                ],
              ),
            ),
          ],
        ),
      ).paddingSymmetric(horizontal: 10),
      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     SliverGrid.count(
      //       crossAxisCount: 3,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //     SliverPadding(
      //       padding: EdgeInsets.symmetric(
      //         vertical: 10,
      //       ),
      //     ),
      //     SliverGrid.count(
      //       crossAxisCount: 3,
      //       children: [
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: Colors.red,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

Widget dashboard_widget({
  required String Imagepath,
  required String title,
  required String belowtext,
  required Callback callback,
}) {
  return InkWell(
    onTap: callback,
    child: Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),

        // height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 45,
              child: Image(
                image: AssetImage(
                  Imagepath,
                ),
                color: appcolor().mediumGreyColor,
                fit: BoxFit.fill,
              ),
            ),
            // SizedBox(height: Get.height,)
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      color: appcolor().mainColor,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  belowtext,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

void custombottomsheet() {
  Get.bottomSheet(
    // backgroundColor: Colors.white,
    Container(
      
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          Icon(
            Icons.horizontal_rule,
            size: 25,
          ),
          bottomSheetWidget(
            title: 'Add New Errand',
            imagepath: 'assets/images/sidebar_icon/icon-profile-errands.png',
            callback: (){
              print('tapped');
            },
          ),
          bottomSheetWidget(
            title: 'Add New Product',
            imagepath: 'assets/images/sidebar_icon/icon-manage-products.png',
            callback: (){},
          ),
          bottomSheetWidget(
            title: 'Add New Service',
            imagepath: 'assets/images/sidebar_icon/services.png',
            callback: (){},
          ),
          bottomSheetWidget(
            title: 'Add New Business',
            imagepath: 'assets/images/sidebar_icon/create_shop.png',
            callback: (){},
          ),
          bottomSheetWidget(
            title: 'Add New Manager',
            imagepath: 'assets/images/sidebar_icon/icon-manager.png',
            callback: (){},
          ),
        ],
      ),
    ),
   
    enableDrag: true,
  );
}

Widget bottomSheetWidget({
  required String title,
  required String imagepath,
  required Callback callback,

}) {
  return InkWell(
  
    // highlightColor: Colors.grey,

    hoverColor: Colors.grey,
    // focusColor: Colors.grey,
    // splashColor: Colors.grey,
    // overlayColor: Colors.grey,
    onTap: callback,
    child: Row(
      children: [
        Container(
          height: 24,
          child: Image(
            image: AssetImage(
              imagepath,
            ),
            color: Colors.black,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ).paddingSymmetric(vertical: 15),
  );
}
