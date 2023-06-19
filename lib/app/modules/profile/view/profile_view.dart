import 'package:errandia/app/modules/global/Widgets/errandia_widget.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:errandia/app/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// profile_controller profilecontroller= Get.put(profile_controller());

class Profile_view extends StatefulWidget {
  const Profile_view({super.key});

  @override
  State<Profile_view> createState() => _Profile_viewState();
}

class _Profile_viewState extends State<Profile_view>
    with TickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    String prod_list_size = profile_controller().product_list.length > 0
        ? profile_controller().product_list.length.toString()
        : "";

    return Scaffold(
        body: Column(
      children: [
        Container(
          // height: Get.height * 0.45,
          height: 350,
          color: appcolor().mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // profile picture container
              Container(
                // child: Image(image: AssetImage(''),),
                height: Get.height * 0.12,
                width: Get.width * 0.27,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage(
                    'assets/images/profile_image.png',
                  ),
                  fit: BoxFit.fill,
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
                    fontWeight: FontWeight.bold,
                  ),
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
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                height: Get.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    details_container_item_widget(
                      'Subscriber',
                      Icons.abc,
                      2,
                    ),
                    details_container_item_widget(
                      'Following',
                      FontAwesomeIcons.users,
                      2,
                    ),
                    details_container_item_widget(
                      'Errands',
                      Icons.search_rounded,
                      2,
                    ),
                    details_container_item_widget(
                      'Reviews',
                      Icons.reviews_rounded,
                      2,
                    ),
                  ],
                ),
              ),

              //
            ],
          ).paddingSymmetric(vertical: 15),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: appcolor().greyColor,
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                // height: Get.height * 0.07,
                child: TabBar(
                  // isScrollable: true,
                  dividerColor: appcolor().mediumGreyColor,
                  unselectedLabelColor: appcolor().mediumGreyColor,
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                  indicatorColor: appcolor().mainColor,

                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appcolor().mainColor,
                    fontSize: 18,
                  ),
                  controller: tabController,
                  labelColor: appcolor().darkBlueColor,
                  tabs: [
                    Tab(
                      text:tabController.index==0? "Product " +prod_list_size:"Product",
                    ),
                    Tab(
                      text: "Services",
                    ),
                    Tab(
                      text: "Buiseness",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15),
            // height: Get.height * 0.2,
            child: TabBarView(
              controller: tabController,
              children: [
                product_item_list(),
                Service_item_list(),
                Buiseness_item_list(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: Get.height * 0.015,
        ),
      ],
    ));
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
        child: Icon(
          iconData,
          color: appcolor().mediumGreyColor,
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          title,
        ),
      ),
      Container(
        child: Text(count.toString()),
      ),
    ],
  );
}

Widget product_item_list() {
  return GridView.builder(
    itemCount: profile_controller().product_list.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1.5,
    ),
    itemBuilder: (context, index) {
      return profile_controller().product_list[index];
    },
  );
}

Widget Service_item_list() {
  return GridView.builder(
    itemCount: profile_controller().service_list.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1.5,
    ),
    itemBuilder: (context, index) {
      return profile_controller().service_list[index];
    },
  );
}

Widget Buiseness_item_list() {
  return GridView.builder(
    itemCount: profile_controller().Buiseness_list.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1.5,
    ),
    itemBuilder: (context, index) {
      return profile_controller().Buiseness_list[index];
    },
  );
}
