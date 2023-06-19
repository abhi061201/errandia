import 'package:errandia/app/modules/auth/Register/register_ui.dart';
import 'package:errandia/app/modules/global/Widgets/appbar.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:errandia/app/modules/home/categories/view/categories.dart';
import 'package:errandia/app/modules/home/view/home_view_1.dart';
import 'package:errandia/app/modules/profile/view/profile_view.dart';
import 'package:errandia/common/random_ui/ui_23.dart';
import 'package:errandia/common/random_ui/run_an_errand.dart';
import 'package:errandia/app/modules/products/view/product_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../auth/Sign in/controller/signin_controller.dart';
import '../categories/view/categories_item.dart';
import '../featured_buiseness/view/featured_list_item.dart';
import '../recently_posted_item.dart/view/recently_posted_list.dart';

class Home_view extends StatefulWidget {
  Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  final singin_controller = Get.lazyPut(() => signIn_controller());

  RxInt _index = 0.obs;
  final tabList = [
    home_view_1(),
    run_an_errand(),
    Center(
      child: Text('Buiseness'),
    ),
    Profile_view(),
    Center(
      child: Text('More'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   title: Image(
      //     image: AssetImage('assets/images/icon-errandia-logo-about.png'),
      //     width: Get.width*0.3,
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

      appBar: appbar(),
      body: Obx(() {
        return tabList[_index.value];
      }),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: appcolor().mainColor,
      //   unselectedItemColor: appcolor().mainColor,
      //   fixedColor: appcolor().mainColor,
      //   showUnselectedLabels: true,
      //   items: [
      //     BottomNavigationBarItem(
      //       label: 'Home',
      //       icon: new SizedBox(
      //         child: Icon(
      //           Icons.home_filled,
      //           size: 35,
      //         ),
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'errand',
      //       icon: Icon(
      //         Icons.search,
      //         size: 35,
      //       ),
      //     ),
      //     new BottomNavigationBarItem(
      //       label: 'Buiseness',
      //       icon: Image(
      //         image: AssetImage(
      //           'assets/images/shop.png',
      //         ),
      //         fit: BoxFit.fill,
      //         height: Get.height * 0.04,
      //         color: appcolor().mainColor,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'Profile',
      //       icon: Icon(
      //         Icons.person,
      //         size: 35,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'More',
      //       icon: Icon(
      //         Icons.more_horiz_outlined,
      //         size: 35,
      //       ),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: Obx(
        () {
          return NavigationBarTheme(
            data: NavigationBarThemeData(
              backgroundColor: appcolor().mainColor,
              iconTheme: MaterialStateProperty.all(
                  IconThemeData(color: Colors.white, size: 35)),
              labelTextStyle: MaterialStateProperty.all(
                TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            child: NavigationBar(
              selectedIndex: _index.value,
              onDestinationSelected: (index) {
                debugPrint(index.toString());
                _index.value = index;

                debugPrint(_index.value.toString());
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                NavigationDestination(
                  icon: Image(
                    image: AssetImage(
                      'assets/images/shop.png',
                    ),
                    height: Get.height * 0.03,
                    color: Colors.white,
                  ),
                  label: 'Buiseness',
                ),
                NavigationDestination(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                NavigationDestination(
                  icon: Icon(Icons.more_horiz_outlined),
                  label: 'More',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
