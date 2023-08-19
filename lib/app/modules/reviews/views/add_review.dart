import 'dart:io';

import 'package:errandia/app/ImagePicker/imagePickercontroller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global/Widgets/blockButton.dart';
import '../../global/constants/color.dart';

class add_review_view extends StatelessWidget {
  const add_review_view({super.key});

  @override
  Widget build(BuildContext context) {
    imagePickercontroller imageController = Get.put(imagePickercontroller());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: appcolor().mediumGreyColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Review Supplier',
          style: TextStyle(
            color: appcolor().mainColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              Container(
                // margin: EdgeInsets.symmetric(vertical: 25,),
                // decoration: BoxDecoration(
                //   border: Border.symmetric(
                //     horizontal: BorderSide(
                //       color: appcolor().mediumGreyColor,
                //     ),
                //   ),
                // ),
                height: Get.height * 0.12,
                child: Row(
                  children: [
                    Container(
                        width: Get.width * 0.2,
                        child: Image(
                          image: AssetImage(
                            'assets/images/barber_logo.png',
                          ),
                          fit: BoxFit.fill,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rubiliams Hair Clinic',
                          style: TextStyle(
                              // color: appcolor().mediumGreyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: Get.height * 0.004,
                        ),
                        Row(
                          children: [
                            Container(
                              width: Get.width * 0.1,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/ui_23_item.png')),
                            ),
                            Text(
                              'Hotel St.Claire Molyko, Buea',
                              style: TextStyle(
                                color: appcolor().mediumGreyColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(left: 10),
                  ],
                ).paddingSymmetric(horizontal: 20),
              ),
              Divider(
                color: appcolor().mediumGreyColor,
              ),
              Container(
                // decoration: BoxDecoration(
                //   border: Border.symmetric(
                //     horizontal: BorderSide(
                //       color: appcolor().mediumGreyColor,
                //     ),
                //   ),
                // ),
                // margin: EdgeInsets.symmetric(vertical: 25,),
                // height: Get.height * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Rating',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    RatingBar.builder(
                      allowHalfRating: true,
                      ignoreGestures: false,
                      initialRating: 1.0,
                      unratedColor: appcolor().greyColor,
                      itemSize: 40,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 10,
                        );
                      },
                      onRatingUpdate: (rating_value) {},
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 0,
                  vertical: 5,
                ),
              ),
              Divider(
                color: appcolor().mediumGreyColor,
              ),
              Obx(
                () => imageController.image_path.isEmpty
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.solidImage,
                                ),
                                SizedBox(
                                  width: Get.width * 0.03,
                                ),
                                Text(
                                  'Add Image',
                                  style: TextStyle(fontSize: 16),
                                ),
                                Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.pen,
                                    color: appcolor().blueColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        height: 300,
                        child: ListView(
                          children: [],
                        ),
                      ),
              ),

              Obx(
                () => Container(
                  height: imageController.imageList.isEmpty ? null : null,
                  child: imageController.imageList.isEmpty
                      ? InkWell(
                          onTap: () {
                            imageController.getmultipleImage();
                          },
                          child: Container(
                              child: Column(
                            children: [
                              Container(
                                color: appcolor().greyColor,
                                height: Get.height * 0.22,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // SizedBox(height: Get.height*0.05,),
                                    Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.images,
                                            size: 60,
                                            color: appcolor().mediumGreyColor,
                                          ),
                                          Text(
                                            '     Browse Images',
                                            style: TextStyle(
                                              color: appcolor().bluetextcolor,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: Get.height * 0.05,
                                    // ),
                                    Text(
                                      'Other variations of the main product image',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: appcolor().mediumGreyColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                        )
                      : Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: Get.height * 0.24,
                          child: Center(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: imageController.imageList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      height: Get.height * 0.15,
                                      width: Get.width * 0.40,
                                      decoration:
                                          BoxDecoration(border: Border.all()),
                                      child: Image(
                                        image: FileImage(
                                          File(
                                            imageController
                                                .imageList[index].path
                                                .toString(),
                                          ),
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              imageController.edit(index);
                                            },
                                            child: Container(
                                              height: 35,
                                              width: Get.width * 0.20,
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
                                              imageController.removeat(index);
                                            },
                                            child: Container(
                                              height: 35,
                                              width: Get.width * 0.2,
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
                                ).paddingSymmetric(horizontal: 5);
                              },
                            ),
                          ),
                        ),
                ),
              ),
              Obx(
                () => Container(
                  child: imageController.imageList.isEmpty
                      ? null
                      : InkWell(
                          onTap: () {
                            imageController.getmultipleImage();
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: appcolor().skyblueColor,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            height: Get.height * 0.08,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image,
                                ),
                                Text(
                                  '   Add more images',
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ),

              // add more images
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                color: Colors.white,
                height: Get.height * 0.25,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.message_outlined,
                    ),
                    hintText: 'Write your Review',
                    suffixIcon: Icon(
                      FontAwesomeIcons.pen,
                    ),
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              blockButton(
                title: Text(
                  'Submit Review',
                  style: TextStyle(color: Colors.white),
                ),
                ontap: () {},
                color: appcolor().mainColor,
              ).paddingSymmetric(
                horizontal: 15,
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
            ],
          )
        ],
      ),
    );
  }
}
