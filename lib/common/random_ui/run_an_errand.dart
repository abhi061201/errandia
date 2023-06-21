import 'package:errandia/app/modules/home/controller/home_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/modules/global/constants/color.dart';
import '../../app/modules/recently_posted_item.dart/view/recently_posted_list.dart';

class run_an_errand extends StatefulWidget {
  const run_an_errand({super.key});

  @override
  State<run_an_errand> createState() => _run_an_errandState();
}

class _run_an_errandState extends State<run_an_errand> {
  home_controller homeController = Get.put(home_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   title: Image(
      //     image: AssetImage(
      //       'assets/images/icon-errandia-logo-about.png',
      //     ),
      //     width: Get.width * 0.3,
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.notifications,
      //         size: 30,
      //       ),
      //       color: appcolor().mediumGreyColor,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.settings,
      //         size: 30,
      //       ),
      //       color: appcolor().mediumGreyColor,
      //     ),
      //   ],
      // ),

      // // bottomNavigationBar: BottomNavigationBar(
      // //   backgroundColor: appcolor().mainColor,
      // //   unselectedItemColor: appcolor().mainColor,
      // //   fixedColor: appcolor().mainColor,
      // //   showUnselectedLabels: true,
      // //   items: [
      // //     BottomNavigationBarItem(
      // //       label: 'Home',
      // //       icon: new SizedBox(
      // //         child: Icon(
      // //           Icons.home_filled,
      // //           size: 35,
      // //         ),
      // //       ),
      // //     ),
      // //     BottomNavigationBarItem(
      // //       label: 'errand',
      // //       icon: Icon(
      // //         Icons.search,
      // //         size: 35,
      // //       ),
      // //     ),
      // //     new BottomNavigationBarItem(
      // //       label: 'Buiseness',
      // //       icon: Image(
      // //         image: AssetImage(
      // //           'assets/images/shop.png',
      // //         ),
      // //         fit: BoxFit.fill,
      // //         height: Get.height * 0.04,
      // //         color: appcolor().mainColor,
      // //       ),
      // //     ),
      // //     BottomNavigationBarItem(
      // //       label: 'Profile',
      // //       icon: Icon(
      // //         Icons.person,
      // //         size: 35,
      // //       ),
      // //     ),
      // //     BottomNavigationBarItem(
      // //       label: 'More',
      // //       icon: Icon(
      // //         Icons.more_horiz_outlined,
      // //         size: 35,
      // //       ),
      // //     ),
      // //   ],
      // // ),
      // bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //     backgroundColor: appcolor().mainColor,
      //     iconTheme: MaterialStateProperty.all(
      //         IconThemeData(color: Colors.white, size: 35)),
      //     labelTextStyle: MaterialStateProperty.all(
      //       TextStyle(
      //         fontWeight: FontWeight.w400,
      //         fontSize: 12,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      //   child: NavigationBar(
      //     selectedIndex: homeController.index.value,
      //     onDestinationSelected: (index) {
      //       debugPrint(homeController.index.value.toString());
      //       setState(() {
      //         homeController.index.value = index;
      //       });
      //     },
      //     destinations: [
      //       NavigationDestination(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Icons.search),
      //         label: 'Search',
      //       ),
      //       NavigationDestination(
      //         icon: Image(
      //           image: AssetImage(
      //             'assets/images/shop.png',
      //           ),
      //           height: Get.height * 0.03,
      //           color: Colors.white,
      //         ),
      //         label: 'Buiseness',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //       ),
      //       NavigationDestination(
      //         icon: Icon(Icons.more_horiz_outlined),
      //         label: 'More',
      //       ),
      //     ],
      //   ),
      // ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Get.height * 0.66,
                width: Get.width,
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/home_bg.png',
                      ),
                      fit: BoxFit.fill,
                      width: Get.width,
                    ),
                    run_as_errand_widget(),
                  ],
                ),
              ),

              // recentaly posted errands
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
                      onPressed: () {},
                      child: Text('See All'),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20),
              ),

              Recently_posted_items_Widget(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Recently_posted_items_Widget() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
    height: Get.height * 0.45,
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

Widget run_as_errand_widget() {
  var value = null;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Center(
        child: Text(
          'Run an Errand',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
      Text(
        'Search for Products and Services',
        style: TextStyle(color: Colors.white, fontSize: 13),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: Get.height * 0.02,
      ),

      // what are you looking container
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: TextFormField(
            style: TextStyle(),
            decoration: InputDecoration.collapsed(
              hintText: 'what are you looking for....',
            ),
          ),
        ),
      ),

      // categories drop down container
      Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: Get.height * 0.07,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: DropdownButtonFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Categories',
              ),
              value: value,
              onChanged: (value) {},
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Hello',
                  ),
                  value: 1,
                ),
                DropdownMenuItem(
                    child: Text(
                      'ji',
                    ),
                    value: 2),
                DropdownMenuItem(
                    child: Text(
                      'ram',
                    ),
                    value: 3),
                DropdownMenuItem(
                    child: Text(
                      'radha',
                    ),
                    value: 4),
              ],
            ),
          )),

      Row(
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: Get.height * 0.07,
              width: Get.width * 0.42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Region',
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'R1',
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          'R2',
                        ),
                        value: 2),
                    DropdownMenuItem(
                        child: Text(
                          'R3',
                        ),
                        value: 3),
                    DropdownMenuItem(
                        child: Text(
                          'R4',
                        ),
                        value: 4),
                  ],
                ),
              )),
          Spacer(),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: Get.height * 0.07,
              width: Get.width * 0.42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: DropdownButtonFormField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Town',
                  ),
                  value: value,
                  onChanged: (value) {},
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'T1',
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                        child: Text(
                          't2',
                        ),
                        value: 2),
                    DropdownMenuItem(
                        child: Text(
                          't3',
                        ),
                        value: 3),
                    DropdownMenuItem(
                        child: Text(
                          't4',
                        ),
                        value: 4),
                  ],
                ),
              )),
        ],
      ),

      GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: Get.height * 0.07,
          decoration: BoxDecoration(
            color: appcolor().mainColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text(
              'Search',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 0),
        height: Get.height * 0.07,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Top Searches',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      hoverColor: Colors.blue,
                      highlightColor: Colors.blue,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        width: Get.width * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Hello',
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ).paddingOnly(
    left: 20,
    right: 20,
    top: 40,
    bottom: 10,
  );
}
