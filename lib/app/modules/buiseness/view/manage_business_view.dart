import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global/Widgets/customDrawer.dart';
import '../../global/constants/color.dart';

class manage_business_view extends StatelessWidget {
  manage_business_view({super.key});
  manage_business_tabController mController =
      Get.put(manage_business_tabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: (){},
        child: new Container(
          width: Get.width*0.47,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: appcolor().skyblueColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: appcolor().mainColor,
                size: 28,
              ),
              Spacer(),
              Text(
                'Add Business',
                style: TextStyle(fontSize: 16, color: appcolor().mainColor),
              ),
            ],
          ),
        ),
      ),
      endDrawer: customendDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            // size: 30,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Manage Businesses',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        iconTheme: IconThemeData(
          color: appcolor().mediumGreyColor,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: appcolor().greyColor,
                ),
              ),
            ),
            height: Get.height * 0.08,
            child: TabBar(
              dividerColor: appcolor().bluetextcolor,
              isScrollable: true,
              unselectedLabelColor: appcolor().mediumGreyColor,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              indicatorColor: appcolor().mainColor,
              labelColor: appcolor().bluetextcolor,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: appcolor().mainColor,
                fontSize: 18,
              ),
              controller: mController.tabController,
              tabs: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('All Businesses'),
                ),
                Container(
                  child: Text('Published'),
                  width: Get.width * 0.26,
                ),
                Text('Trashed'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: mController.tabController,
              children: mController.myTabs,
            ),
          ),
        ],
      ),
    );
  }
}

Widget allBusiness() {
  return Column(
    children: [
      filter_sort_container(),
      SizedBox(
        height: Get.height * 0.01,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Row(
                children: [
                  // image container
                  Container(
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    width: Get.width * 0.16,
                    height: Get.height * 0.06,
                    child: Image(
                      image: AssetImage(
                        'assets/images/barber_logo.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rubiliams Hair Clinic',
                        style: TextStyle(
                          color: appcolor().mainColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Molyko, Buea',
                        style: TextStyle(
                          color: appcolor().mediumGreyColor,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Text(
                          'MANAGE',
                          style: TextStyle(
                            color: appcolor().bluetextcolor,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: appcolor().greyColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.more_horiz,
                            color: appcolor().greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )
    ],
  ).paddingOnly(
    left: 10,
    right: 10,
    top: 10,
  );
}

Widget Published() {
  return Column(
    children: [
      filter_sort_container(),
    ],
  ).paddingOnly(
    left: 10,
    right: 10,
    top: 10,
  );
}

Widget Trashed() {
  return Column(
    children: [
      filter_sort_container(),
    ],
  ).paddingOnly(
    left: 10,
    right: 10,
    top: 10,
  );
}

Widget filter_sort_container() {
  return Container(
    // width: Get.width*0.4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: Get.width * 0.35,
            decoration: BoxDecoration(
                border: Border.all(color: appcolor().greyColor),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Filter Lis',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.arrowDownWideShort,
                  color: appcolor().mediumGreyColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: Get.width * 0.35,
            decoration: BoxDecoration(
                border: Border.all(color: appcolor().greyColor),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sort List ',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.arrowDownWideShort,
                  color: appcolor().mediumGreyColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            // width: Get.width*0.4,

            decoration: BoxDecoration(
              border: Border.all(color: appcolor().greyColor),
              borderRadius: BorderRadius.circular(
                10,
              ),
              color: appcolor().skyblueColor,
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.search,
                  color: appcolor().mainColor,
                  size: 25,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
