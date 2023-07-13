import 'dart:io';

import 'package:errandia/app/ImagePicker/imagePickercontroller.dart';
import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global/Widgets/blockButton.dart';
import '../controller/add_business_controller.dart';

business_controller controller = Get.put(business_controller());
add_business_controller add_controller = Get.put(add_business_controller());
imagePickercontroller imageController = Get.put(imagePickercontroller());

class add_business_view extends StatelessWidget {
  add_business_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 8,
        title: Text('Add Business'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: appcolor().mediumGreyColor,
            fontSize: 18),
        automaticallyImplyLeading: false,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: appcolor().greyColor,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Publish',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Company Details'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // company name
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(
                controller: add_controller.country_controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.buildingUser,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Company Name *',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // Business categories
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    color: Colors.black,
                    Icons.category,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Business Categories *',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // Business info
            Container(
              height: Get.height * 0.2,
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextFormField(
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    color: Colors.black,
                    FontAwesomeIcons.info,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Business Information *',
                  suffixIcon: Icon(
                    color: Colors.black,
                    Icons.edit,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // upload company logo
            Obx(
              () => Container(
                height: imageController.image_path.isEmpty
                    ? null
                    : Get.height * 0.28,
                child: imageController.image_path.isEmpty
                    ? InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                insetPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 20,
                                ),
                                scrollable: true,
                                content: Container(
                                  // height: Get.height * 0.7,
                                  width: Get.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Upload Company Logo',
                                        style: TextStyle(
                                          color: appcolor().mainColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.05,
                                      ),
                                      Column(
                                        children: [
                                          blockButton(
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.image,
                                                  color: appcolor().mainColor,
                                                  size: 22,
                                                ),
                                                Text(
                                                  '  Image Gallery',
                                                  style: TextStyle(
                                                      color:
                                                          appcolor().mainColor),
                                                ),
                                              ],
                                            ),
                                            ontap: () {
                                              Get.back();
                                              imageController
                                                  .getImagefromgallery();
                                            },
                                            color: appcolor().greyColor,
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.015,
                                          ),
                                          blockButton(
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.camera,
                                                  color: appcolor().mainColor,
                                                  size: 22,
                                                ),
                                                Text(
                                                  '  Take Photo',
                                                  style: TextStyle(
                                                    color: appcolor().mainColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ontap: () {
                                              Get.back();
                                              imageController
                                                  .getimagefromCamera();
                                            },
                                            color: Color(0xfffafafa),
                                          ),
                                        ],
                                      )
                                    ],
                                  ).paddingSymmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Row(
                            children: [
                              Icon(Icons.image),
                              Text('  Upload Company Logo *'),
                              Spacer(),
                              Icon(
                                Icons.edit,
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(
                        height: Get.height * 0.15,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.image),
                                Text(
                                  '  Company Logo *',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.edit,
                                  ),
                                )
                              ],
                            ).paddingSymmetric(
                              vertical: 15,
                              horizontal: 15,
                            ),
                            Divider(
                              color: appcolor().greyColor,
                              thickness: 1,
                              height: 1,
                              indent: 0,
                            ),
                            Stack(
                              children: [
                                Image(
                                  image: FileImage(
                                    File(
                                      imageController.image_path.toString(),
                                    ),
                                  ),
                                  height: Get.height * 0.19,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ).paddingSymmetric(horizontal: 20),
                                Container(
                                  height: Get.height * 0.19,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          imageController.getImagefromgallery();
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 60,
                                          color: Colors.lightGreen,
                                          child: Center(
                                            child: Text(
                                              'Edit',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          imageController.reset();
                                        },
                                        child: Container(
                                          height: 35,
                                          width: 60,
                                          color: appcolor().greyColor,
                                          child: Center(
                                            child: Text(
                                              'Remove',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
              ),
            ),

            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // website address
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.category,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Website Address *',
                  suffixIcon: Icon(
                    color: Colors.black,
                    Icons.edit,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),
            // shop head
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Row(
                children: [
                  Text(
                    'Shop Head/Main Office *',
                    style: TextStyle(fontSize: 15),
                  ),
                  Spacer(),
                  Obx(
                    () => SizedBox(
                      width: Get.width * 0.2,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: controller.headmainSwitch.value,
                          onChanged: (val) {
                            controller.headmainSwitch.value = val;
                          },
                        ),
                      ),
                    ),
                  ),
                  Text('Active')
                ],
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            //Business Location
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Business Location'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // country
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.earthAmericas,
                  ),
                  Text('   Country*'),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                  )
                ],
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // region
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.locationCrosshairs,
                  ),
                  Text('  Region *'),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                  )
                ],
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // town
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.locationArrow),
                  Text('  Town *'),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                  )
                ],
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // address
            Container(
              height: Get.height * 0.2,
              // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: TextFormField(
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    color: Colors.black,
                    FontAwesomeIcons.mapLocationDot,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Address *',
                  suffixIcon: Icon(
                    color: Colors.black,
                    Icons.edit,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // social links
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Social Links'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            //facebook
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Facebook *',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            //instagram

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Instagram *',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // twitter
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Twitter *',
                  suffixIcon: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // assign manager
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Assign Manager'.tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            // select manager
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    insetPadding: EdgeInsets.symmetric(horizontal: 0),
                    scrollable: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    content: Container(
                      width: Get.width,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Branch Manager'.tr,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: appcolor().mainColor,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.03,
                          ),
                          Obx(() => BranchManagerListWidget(),)
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    Text(
                      '  Select Manager *',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                    )
                  ],
                ),
              ),
            ),

            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),
            //add manager
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              height: Get.height * 0.08,
              width: Get.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                border: Border.all(
                  color: appcolor().mainColor,
                ),
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => addManager_Widget(),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add_outlined,
                      color: appcolor().mainColor,
                    ),
                    Text(
                      '  Add New Manager',
                      style: TextStyle(
                        fontSize: 16,
                        color: appcolor().mainColor,
                      ),
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 10,
                ),
              ),
            ),
            Divider(
              color: appcolor().greyColor,
              thickness: 1,
              height: 1,
              indent: 0,
            ),

            SizedBox(
              height: Get.height * 0.06,
            ),
          ],
        ),
      ),
    );
  }

  Widget BranchManagerListWidget() {
    return Container(
      height: Get.height * 0.27,
      child: ListView.builder(
        itemCount: add_controller.managerList.length,
        itemBuilder: (context, index) => Row(
          children: [
            Text(add_controller.managerList[index]),
            Spacer(),
            Obx(
              () => Radio(
                value: add_controller.managerList[index].toString(),
                groupValue: add_controller.group_value.value,
                onChanged: (val) {
                  add_controller.group_value.value = val.toString();
                },
              ),
            ),
          ],
        ),
      ),
    );

    // return Container(
    //   child: Column(
    //     children: [
    //       Row(
    //         children: [
    //          Text(add_controller.managerList[]),
    //           Spacer(),
    //           Obx(
    //             () => Radio(
    //               value: 'sort descending',
    //               groupValue: add_controller.group_value.value,
    //               onChanged: (val) {
    //                 add_controller.group_value.value = val.toString();
    //               },
    //             ),
    //           )
    //         ],
    //       ),

    //       // a-z
    // Row(
    //   children: [
    //     RichText(
    //       text: TextSpan(
    //         style: TextStyle(fontSize: 16),
    //         children: [
    //           TextSpan(
    //             text: 'Business Name : ',
    //             style: TextStyle(
    //               color: appcolor().mainColor,
    //             ),
    //           ),
    //           TextSpan(
    //             text: 'Asc A-Z',
    //             style: TextStyle(
    //               color: appcolor().mediumGreyColor,
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //     Spacer(),
    //     Obx(() => Radio(
    //           value: 'sort acending',
    //           groupValue: add_controller.group_value.value,
    //           onChanged: (val) {
    //             add_controller.group_value.value = val.toString();
    //           },
    //         ))
    //   ],
    // ),

    // // distance nearest to me
    // Row(
    //   children: [
    //     RichText(
    //         text: TextSpan(style: TextStyle(fontSize: 16), children: [
    //       TextSpan(
    //         text: 'Distance: Nearest to my location',
    //         style: TextStyle(
    //           color: appcolor().mainColor,
    //         ),
    //       ),
    //     ])),
    //     Spacer(),
    //     Obx(() => Radio(
    //           value: 'distance nearest to my location',
    //           groupValue: add_controller.group_value.value,
    //           onChanged: (val) {
    //             add_controller.group_value.value = val.toString();
    //           },
    //         ))
    //   ],
    // ),

    //       //recentaly added
    //       Row(
    //         children: [
    //           Text(
    //             'Recently Added ',
    //             style: TextStyle(color: appcolor().mainColor, fontSize: 16),
    //           ),
    //           Icon(
    //             Icons.arrow_upward,
    //             size: 25,
    //             color: appcolor().mediumGreyColor,
    //           ),
    //           Spacer(),
    //           Obx(
    //             () => Radio(
    //               value: 'recentaly added',
    //               groupValue: add_controller.group_value.value,
    //               onChanged: (val) {
    //                 add_controller.group_value.value = val.toString();
    //                 print(val.toString());
    //               },
    //             ),
    //           )
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget addManager_Widget() {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      scrollable: true,
      content: Container(
        // height: Get.height * 0.7,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // add branch manager
            Text(
              'Add Branch Manager',
              style: TextStyle(
                color: appcolor().mainColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // first name
            Text(
              'First Name',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: Get.height * 0.001,
            ),

            // text form field
            Container(
              height: Get.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffe0e6ec),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: TextFormField(
                    controller:
                        add_controller.add_manager_first_name_controller,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ),

            Text(
              'Last Name',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: Get.height * 0.001,
            ),

            // text form field
            Container(
              height: Get.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffe0e6ec),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: TextFormField(
                    controller: add_controller.add_manager_last_name_controller,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: Get.height * 0.02,
            ),

            //  phone number
            Text(
              'Phone Number',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: Get.height * 0.001,
            ),

            // phone number text field
            Container(
              height: Get.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffe0e6ec),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: Get.width * 0.2,
                    height: Get.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xffe0e6ec),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage(
                          'assets/images/flag_icon.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.2,
                    child: Center(
                      child: Text(
                        '+237',
                        style: TextStyle(
                            color: Color.fromARGB(255, 171, 173, 175),
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 1),
                      child: TextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counter: Offstage(),
                        ),
                      ),
                    ),
                  ),

                  // by registering
                ],
              ),
            ),

            SizedBox(
              height: Get.height * 0.08,
            ),

            // add manager
            blockButton(
              title: Text(
                'Add Manager',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              ontap: () {
                Get.back();
                String fullName = add_controller
                        .add_manager_first_name_controller.text
                        .toString() +
                    add_controller.add_manager_last_name_controller.text.toString();
                add_controller.add_Manager(fullName);
                print(fullName);
              },
              color: appcolor().mainColor,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
