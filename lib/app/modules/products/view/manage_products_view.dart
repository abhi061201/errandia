

import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:errandia/app/modules/buiseness/view/add_business_view.dart';
import 'package:errandia/app/modules/products/controller/manage_products_controller.dart';
import 'package:errandia/app/modules/products/view/filter_product_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../global/Widgets/account_suspended_widget.dart';
import '../../global/Widgets/blockButton.dart';
import '../../global/Widgets/bottomsheet_item.dart';
import '../../global/Widgets/customDrawer.dart';
import '../../global/constants/color.dart';

manage_product_controller manageProductController =
    Get.put(manage_product_controller());

class manage_product_view extends StatelessWidget {
  manage_product_view({super.key});
  manage_product_tabController pcontroller =
      Get.put(manage_product_tabController());
  @override
  Widget build(BuildContext context) {
    void opendrawer(){
      Scaffold.of(context).openEndDrawer();
    }
    
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          // Get.off(add_business_view());
        },
        child: new Container(
          width: Get.width * 0.47,
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
                'Add Product',
                style: TextStyle(fontSize: 16, color: appcolor().mainColor),
              ),
            ],
          ),
        ),
      ),
      // endDrawer: Drawer(
      //   backgroundColor: Colors.white,
      //   child: Container(),
      // ),
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
          'Manage Products',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        iconTheme: IconThemeData(
          color: appcolor().mediumGreyColor,
          size: 30,
        ),
        actions: [

        ],
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
              controller: pcontroller.tabController,
              tabs: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('All Products'),
                ),
                Container(
                  child: Text('Published'),
                  width: Get.width * 0.26,
                ),
                Text('Drafts'),
                Text('Trashed'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: pcontroller.tabController,
              children: pcontroller.myTabs,
            ),
          ),
        ],
      ),
    );

    
  }


}

Widget allProducts() {
  return Column(
    children: [
      filter_sort_container(
        () {
          Get.to(filter_product_view());
        },
        () {
          Get.bottomSheet(
            Container(
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                children: [
                  Text(
                    'Sort List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: appcolor().mainColor,
                    ),
                  ),
                  // z-a
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Product Name : ',
                              style: TextStyle(
                                color: appcolor().mainColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Desc Z-A',
                              style: TextStyle(
                                color: appcolor().mediumGreyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Obx(
                        () => Radio(
                          value: 'sort descending',
                          groupValue: manageProductController
                              .allProducts_sort_group_value.value,
                          onChanged: (val) {
                            manageProductController.allProducts_sort_group_value
                                .value = val.toString();
                          },
                        ),
                      )
                    ],
                  ),

                  // a-z
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'Product Name : ',
                              style: TextStyle(
                                color: appcolor().mainColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Asc A-Z',
                              style: TextStyle(
                                color: appcolor().mediumGreyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Obx(() => Radio(
                            value: 'sort ascending',
                            groupValue: manageProductController
                                .allProducts_sort_group_value.value,
                            onChanged: (val) {
                              manageProductController
                                  .allProducts_sort_group_value
                                  .value = val.toString();
                            },
                          ))
                    ],
                  ),

                  // distance nearest to me
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(fontSize: 16),
                              children: [
                            TextSpan(
                              text: 'Date',
                              style: TextStyle(
                                color: appcolor().mainColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Last Modified',
                            ),
                          ])),
                      Spacer(),
                      Obx(() => Radio(
                            value: 'Date Last modified ',
                            groupValue: manageProductController
                                .allProducts_sort_group_value.value,
                            onChanged: (val) {
                              manageProductController
                                  .allProducts_sort_group_value
                                  .value = val.toString();
                            },
                          ))
                    ],
                  ),

                  //recentaly added
                  Row(
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            color: appcolor().mainColor, fontSize: 16),
                      ),
                      Icon(
                        Icons.arrow_upward,
                        size: 25,
                        color: appcolor().mediumGreyColor,
                      ),
                      Spacer(),
                      Obx(
                        () => Radio(
                          value: 'Price',
                          groupValue: manageProductController
                              .allProducts_sort_group_value.value,
                          onChanged: (val) {
                            manageProductController.allProducts_sort_group_value
                                .value = val.toString();
                            print(val.toString());
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
          );
        },
        () {
         
        },
      ),
      SizedBox(
        height: Get.height * 0.01,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
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
                      Row(
                        children: [
                          Text(
                            'XAF 20',
                            style: TextStyle(
                              color: appcolor().mediumGreyColor,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.1,
                          ),
                          publish_draft_widget(index.isEven, index),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print(index.toString());
                      Get.bottomSheet(
                        // backgroundColor: Colors.white,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          color: Colors.white,
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Center(
                                child: Icon(
                                  Icons.horizontal_rule,
                                  size: 25,
                                ),
                              ),
                              // Text(index.toString()),
                              managebottomSheetWidgetitem(
                                title: 'Edit Product',
                                icondata: Icons.edit,
                                callback: () async {
                                  print('tapped');
                                  Get.back();
                                },
                              ),
                              managebottomSheetWidgetitem(
                                title: 'Edit Photo',
                                icondata: FontAwesomeIcons.fileImage,
                                callback: () {
                                  Get.back();
                                },
                              ),
                              managebottomSheetWidgetitem(
                                title: 'Unpublish Product',
                                icondata: FontAwesomeIcons.minusCircle,
                                callback: () {},
                              ),
                              managebottomSheetWidgetitem(
                                title: 'Move to trash',
                                icondata: Icons.delete,
                                callback: () {},
                              ),
                            ],
                          ),
                        ),

                        enableDrag: true,
                      );
                    },
                    child: Column(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                              color: appcolor().bluetextcolor,
                              fontWeight: FontWeight.w600),
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
      filter_sort_container(
        () {},
        () {},
        () {},
      ),
      //   SizedBox(
      //     height: Get.height * 0.01,
      //   ),
      //   Expanded(
      //     child: ListView.builder(
      //       itemCount: 2,
      //       itemBuilder: (context, index) {
      //         return Container(
      //           margin: EdgeInsets.symmetric(
      //             horizontal: 10,
      //             vertical: 10,
      //           ),
      //           child: Row(
      //             children: [
      //               // image container
      //               Container(
      //                 margin: EdgeInsets.only(
      //                   right: 10,
      //                 ),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(
      //                     8,
      //                   ),
      //                 ),
      //                 width: Get.width * 0.16,
      //                 height: Get.height * 0.06,
      //                 child: Image(
      //                   image: AssetImage(
      //                     'assets/images/barber_logo.png',
      //                   ),
      //                   fit: BoxFit.fill,
      //                 ),
      //               ),
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text(
      //                     'Rubiliams Hair Clinic',
      //                     style: TextStyle(
      //                       color: appcolor().mainColor,
      //                       fontWeight: FontWeight.w500,
      //                       fontSize: 16,
      //                     ),
      //                   ),
      //                   Text(
      //                     'Molyko, Buea',
      //                     style: TextStyle(
      //                       color: appcolor().mediumGreyColor,
      //                       fontSize: 13,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Spacer(),
      //               InkWell(
      //                 onTap: () {
      //                   print(index.toString());
      //                   Get.bottomSheet(
      //                     // backgroundColor: Colors.white,
      //                     Container(
      //                       padding: EdgeInsets.symmetric(horizontal: 20),
      //                       // height: 250,
      //                       color: Colors.white,
      //                       child: Wrap(
      //                         crossAxisAlignment: WrapCrossAlignment.center,
      //                         children: [
      //                           Center(
      //                             child: Icon(
      //                               Icons.horizontal_rule,
      //                               size: 25,
      //                             ),
      //                           ),
      //                           // Text(index.toString()),
      //                           bottomSheetWidgetitem(
      //                             title: 'Edit Business',
      //                             icondata: Icons.edit,
      //                             callback: () async {
      //                               print('tapped');
      //                               Get.back();
      //                             },
      //                           ),
      //                           bottomSheetWidgetitem(
      //                             title: 'Reinstate Business',
      //                             icondata: Icons.edit,
      //                             callback: () {
      //                               Get.back();
      //                               showDialog(
      //                                 context: context,
      //                                 builder: (context) {
      //                                   return AlertDialog(
      //                                     insetPadding: EdgeInsets.symmetric(
      //                                       horizontal: 10,
      //                                     ),
      //                                     contentPadding: EdgeInsets.symmetric(
      //                                       horizontal: 8,
      //                                       vertical: 20,
      //                                     ),
      //                                     scrollable: true,
      //                                     content: Container(
      //                                       // height: Get.height * 0.7,
      //                                       width: Get.width,
      //                                       child: Column(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.center,
      //                                         crossAxisAlignment:
      //                                             CrossAxisAlignment.start,
      //                                         children: [
      //                                           Text(
      //                                             'Reinstate Business',
      //                                             style: TextStyle(
      //                                               color: appcolor().mainColor,
      //                                               fontSize: 20,
      //                                               fontWeight: FontWeight.bold,
      //                                             ),
      //                                           ),
      //                                           Container(
      //                                             margin: EdgeInsets.symmetric(
      //                                               vertical: 15,
      //                                             ),
      //                                             child: Text(
      //                                               'Are you sure you want to Reinstate this Business ?',
      //                                               textAlign: TextAlign.start,
      //                                             ),
      //                                           ),
      //                                           SizedBox(
      //                                             height: Get.height * 0.02,
      //                                           ),
      //                                           Row(
      //                                             children: [
      //                                               Container(
      //                                                 margin: EdgeInsets.only(
      //                                                   right: 10,
      //                                                 ),
      //                                                 decoration: BoxDecoration(
      //                                                   borderRadius:
      //                                                       BorderRadius.circular(
      //                                                     8,
      //                                                   ),
      //                                                 ),
      //                                                 width: Get.width * 0.16,
      //                                                 height: Get.height * 0.06,
      //                                                 child: Image(
      //                                                   image: AssetImage(
      //                                                     'assets/images/barber_logo.png',
      //                                                   ),
      //                                                   fit: BoxFit.fill,
      //                                                 ),
      //                                               ),
      //                                               Column(
      //                                                 crossAxisAlignment:
      //                                                     CrossAxisAlignment
      //                                                         .start,
      //                                                 children: [
      //                                                   Text(
      //                                                     'Rubiliams Hair Clinic',
      //                                                     style: TextStyle(
      //                                                       color: appcolor()
      //                                                           .mainColor,
      //                                                       fontWeight:
      //                                                           FontWeight.w500,
      //                                                       fontSize: 16,
      //                                                     ),
      //                                                   ),
      //                                                   Text(
      //                                                     'Molyko, Buea',
      //                                                     style: TextStyle(
      //                                                       color: appcolor()
      //                                                           .mediumGreyColor,
      //                                                       fontSize: 13,
      //                                                     ),
      //                                                   ),
      //                                                 ],
      //                                               ),
      //                                             ],
      //                                           ),
      //                                           SizedBox(
      //                                             height: Get.height * 0.12,
      //                                           ),
      //                                           Column(
      //                                             children: [
      //                                               blockButton(
      //                                                 title: Text(
      //                                                   'Reinstate Business',
      //                                                   style: TextStyle(
      //                                                       color: Colors.white),
      //                                                 ),
      //                                                 ontap: () {
      //                                                   Get.back();
      //                                                 },
      //                                                 color: appcolor().mainColor,
      //                                               ),
      //                                               SizedBox(
      //                                                 height: Get.height * 0.015,
      //                                               ),
      //                                               blockButton(
      //                                                 title: Text(
      //                                                   'Cancel',
      //                                                   style: TextStyle(
      //                                                     color: appcolor()
      //                                                         .mainColor,
      //                                                   ),
      //                                                 ),
      //                                                 ontap: () {
      //                                                   Get.back();
      //                                                 },
      //                                                 color: Color(0xfffafafa),
      //                                               ),
      //                                             ],
      //                                           )
      //                                         ],
      //                                       ).paddingSymmetric(
      //                                         horizontal: 10,
      //                                         vertical: 10,
      //                                       ),
      //                                     ),
      //                                   );
      //                                 },
      //                               );
      //                             },
      //                           ),

      //                           bottomSheetWidgetitem(
      //                             title: 'Move to trash',
      //                             icondata: Icons.edit,
      //                             callback: () {},
      //                           ),
      //                         ],
      //                       ),
      //                     ),

      //                     enableDrag: true,
      //                   );
      //                 },
      //                 child: Column(
      //                   children: [
      //                     Text(
      //                       'MANAGE',
      //                       style: TextStyle(
      //                           color: appcolor().bluetextcolor,
      //                           fontWeight: FontWeight.w600),
      //                     ),
      //                     Container(
      //                       decoration: BoxDecoration(
      //                         border: Border.all(color: appcolor().greyColor),
      //                         borderRadius: BorderRadius.circular(5),
      //                       ),
      //                       child: Icon(
      //                         Icons.more_horiz,
      //                         color: appcolor().greyColor,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     ),
      //   )
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
      filter_sort_container(
        () {},
        () {},
        () {},
      ),
      SizedBox(
        height: Get.height * 0.01,
      ),
      // Expanded(
      //   child: ListView.builder(
      //     itemCount: 1,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         margin: EdgeInsets.symmetric(
      //           horizontal: 10,
      //           vertical: 10,
      //         ),
      //         child: Row(
      //           children: [
      //             // image container
      //             Container(
      //               margin: EdgeInsets.only(
      //                 right: 10,
      //               ),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(
      //                   8,
      //                 ),
      //               ),
      //               width: Get.width * 0.16,
      //               height: Get.height * 0.06,
      //               child: Image(
      //                 image: AssetImage(
      //                   'assets/images/barber_logo.png',
      //                 ),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Text(
      //                   'Rubiliams Hair Clinic',
      //                   style: TextStyle(
      //                     color: appcolor().mainColor,
      //                     fontWeight: FontWeight.w500,
      //                     fontSize: 16,
      //                   ),
      //                 ),
      //                 Text(
      //                   'Molyko, Buea',
      //                   style: TextStyle(
      //                     color: appcolor().mediumGreyColor,
      //                     fontSize: 13,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Spacer(),
      //             InkWell(
      //               onTap: () {
      //                 print(index.toString());
      //                 Get.bottomSheet(
      //                   // backgroundColor: Colors.white,
      //                   Container(
      //                     padding: EdgeInsets.symmetric(horizontal: 20),

      //                     color: Colors.white,
      //                     child: Wrap(
      //                       crossAxisAlignment: WrapCrossAlignment.center,
      //                       children: [
      //                         Center(
      //                           child: Icon(
      //                             Icons.horizontal_rule,
      //                             size: 25,
      //                           ),
      //                         ),
      //                         // Text(index.toString()),
      //                         bottomSheetWidgetitem(
      //                           title: 'Move to Published',
      //                           icondata: Icons.edit,
      //                           callback: () async {
      //                             print('tapped');
      //                             Get.back();
      //                           },
      //                         ),
      //                         // bottomSheetWidgetitem(

      //                         //   title: 'Delete Business Permanently',
      //                         //   imagepath:
      //                         //       'assets/images/sidebar_icon/icon-reinstate.png',
      //                         //   callback: () {},
      //                         // ),
      //                         InkWell(
      //                           // highlightColor: Colors.grey,

      //                           hoverColor: Colors.grey,
      //                           // focusColor: Colors.grey,
      //                           // splashColor: Colors.grey,
      //                           // overlayColor: Colors.grey,
      //                           onTap: () {
      //                             Get.back();
      //                             showDialog(
      //                               context: context,
      //                               builder: (context) {
      //                                 return AlertDialog(
      //                                   insetPadding: EdgeInsets.symmetric(
      //                                     horizontal: 10,
      //                                   ),
      //                                   contentPadding: EdgeInsets.symmetric(
      //                                     horizontal: 8,
      //                                     vertical: 20,
      //                                   ),
      //                                   scrollable: true,
      //                                   content: Container(
      //                                     // height: Get.height * 0.7,
      //                                     width: Get.width,
      //                                     child: Column(
      //                                       mainAxisAlignment:
      //                                           MainAxisAlignment.center,
      //                                       crossAxisAlignment:
      //                                           CrossAxisAlignment.start,
      //                                       children: [
      //                                         Text(
      //                                           'Delete Business',
      //                                           style: TextStyle(
      //                                             color: appcolor().mainColor,
      //                                             fontSize: 20,
      //                                             fontWeight: FontWeight.bold,
      //                                           ),
      //                                         ),
      //                                         Container(
      //                                           margin: EdgeInsets.symmetric(
      //                                             vertical: 15,
      //                                           ),
      //                                           child: Text(
      //                                             'Are you sure you want to Delete this Business ?',
      //                                             textAlign: TextAlign.start,
      //                                           ),
      //                                         ),
      //                                         SizedBox(
      //                                           height: Get.height * 0.02,
      //                                         ),
      //                                         Row(
      //                                           children: [
      //                                             Container(
      //                                               margin: EdgeInsets.only(
      //                                                 right: 10,
      //                                               ),
      //                                               decoration: BoxDecoration(
      //                                                 borderRadius:
      //                                                     BorderRadius.circular(
      //                                                   8,
      //                                                 ),
      //                                               ),
      //                                               width: Get.width * 0.16,
      //                                               height: Get.height * 0.06,
      //                                               child: Image(
      //                                                 image: AssetImage(
      //                                                   'assets/images/barber_logo.png',
      //                                                 ),
      //                                                 fit: BoxFit.fill,
      //                                               ),
      //                                             ),
      //                                             Column(
      //                                               crossAxisAlignment:
      //                                                   CrossAxisAlignment
      //                                                       .start,
      //                                               children: [
      //                                                 Text(
      //                                                   'Rubiliams Hair Clinic',
      //                                                   style: TextStyle(
      //                                                     color: appcolor()
      //                                                         .mainColor,
      //                                                     fontWeight:
      //                                                         FontWeight.w500,
      //                                                     fontSize: 16,
      //                                                   ),
      //                                                 ),
      //                                                 Text(
      //                                                   'Molyko, Buea',
      //                                                   style: TextStyle(
      //                                                     color: appcolor()
      //                                                         .mediumGreyColor,
      //                                                     fontSize: 13,
      //                                                   ),
      //                                                 ),
      //                                               ],
      //                                             ),
      //                                           ],
      //                                         ),
      //                                         SizedBox(
      //                                           height: Get.height * 0.12,
      //                                         ),
      //                                         Column(
      //                                           children: [
      //                                             blockButton(
      //                                               title: Text(
      //                                                 'Delete Business',
      //                                                 style: TextStyle(
      //                                                     color: Colors.white),
      //                                               ),
      //                                               ontap: () {
      //                                                 Get.back();

      //                                               },
      //                                               color: appcolor().redColor,
      //                                             ),
      //                                             SizedBox(
      //                                               height: Get.height * 0.015,
      //                                             ),
      //                                             blockButton(
      //                                               title: Text(
      //                                                 'Cancel',
      //                                                 style: TextStyle(
      //                                                   color: appcolor()
      //                                                       .mainColor,
      //                                                 ),
      //                                               ),
      //                                               ontap: () {
      //                                                 Get.back();
      //                                               },
      //                                               color: Color(0xfffafafa),
      //                                             ),
      //                                           ],
      //                                         )
      //                                       ],
      //                                     ).paddingSymmetric(
      //                                       horizontal: 10,
      //                                       vertical: 10,
      //                                     ),
      //                                   ),
      //                                 );
      //                               },
      //                             );
      //                           },
      //                           child: Row(
      //                             children: [
      //                               Container(
      //                                 height: 24,
      //                                 child: Image(
      //                                   image: AssetImage(
      //                                     'assets/images/sidebar_icon/icon-trash.png',
      //                                   ),
      //                                   color: appcolor().redColor,
      //                                   fit: BoxFit.fill,
      //                                 ),
      //                               ),
      //                               SizedBox(
      //                                 width: 18,
      //                               ),
      //                               Text(
      //                                 'Delete Business Permanently',
      //                                 style: TextStyle(
      //                                     fontSize: 16,
      //                                     color: appcolor().redColor),
      //                               ),
      //                             ],
      //                           ).paddingSymmetric(vertical: 15),
      //                         ),
      //                       ],
      //                     ),
      //                   ),

      //                   enableDrag: true,
      //                 );
      //               },
      //               child: Column(
      //                 children: [
      //                   Text(
      //                     'MANAGE',
      //                     style: TextStyle(
      //                         color: appcolor().bluetextcolor,
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                   Container(
      //                     decoration: BoxDecoration(
      //                       border: Border.all(color: appcolor().greyColor),
      //                       borderRadius: BorderRadius.circular(5),
      //                     ),
      //                     child: Icon(
      //                       Icons.more_horiz,
      //                       color: appcolor().greyColor,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       );
      //     },
      //   ),
      // )
    ],
  ).paddingOnly(
    left: 10,
    right: 10,
    top: 10,
  );
}

Widget filter_sort_container(
  Callback filter_button,
  Callback sort_button,
  Callback search_button,
) {
  return Container(
    // width: Get.width*0.4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: filter_button,
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
          onTap: sort_button,
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
          onTap: search_button,
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

Widget managebottomSheetWidgetitem({
  required String title,
  required IconData icondata,
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
          child: Icon(
            icondata,
            color: Colors.black,
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

Widget publish_draft_widget(bool publish, int index) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 2,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: publish == true
          ? const Color.fromARGB(255, 218, 246, 187)
          : appcolor().greyColor,
    ),
    child: Text(
      publish == true ? 'Publish' : 'Draft',
      style: TextStyle(
        fontSize: 12,
        color: publish == true ? Colors.green : Colors.grey,
      ),
    ),
  );
}