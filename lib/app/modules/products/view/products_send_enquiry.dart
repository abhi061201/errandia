import 'package:errandia/app/modules/global/Widgets/blockButton.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class product_send_enquiry extends StatelessWidget {
  const product_send_enquiry({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Send Enquiry',
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
                    Text(
                      'Enquiry To:',
                      style: TextStyle(
                          color: appcolor().mediumGreyColor, fontSize: 16),
                    ),
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
                        Text(
                          'Hotel St.Claire Molyko, Buea',
                          style: TextStyle(
                            color: appcolor().mediumGreyColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'South West Region, Cameroon',
                          style: TextStyle(
                            color: appcolor().mediumGreyColor,
                            fontSize: 12,
                          ),
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
                height: Get.height * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.08,
                      child: Icon(
                        FontAwesomeIcons.solidImage,
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.03,
                    ),
                    Container(
                      width: Get.width * 0.65,
                      child: Text(
                        'If you have a picture to upload to gve a better description of your enquiry, kindly attach them below',
                        style: TextStyle(
                          // color: appcolor().mediumGreyColor,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                        ),
                      ).paddingOnly(left: 10),
                    ),
                    Spacer(),
                    Container(
                      height: Get.height * 0.08,
                      child: Icon(
                        FontAwesomeIcons.pen,
                        color: appcolor().blueColor,
                      ),
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20),
              ),
              Divider(
                color: appcolor().mediumGreyColor,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height * 0.2,
                          color: appcolor().mainColor,
                          width: Get.width * 0.401,
                          child: Column(
                            children: [
                              Container(
                                height: Get.height * 0.15,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: Get.width * 0.2,
                                      color: appcolor().greenColor,
                                      height: Get.height * 0.05,
                                      child: Center(
                                        child: Text(
                                          'Edit',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: Get.height * 0.05,
                                    color: Colors.black,
                                    width: Get.width * 0.001,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: Get.width * 0.2,
                                      color: appcolor().greyColor,
                                      height: Get.height * 0.05,
                                      child: Center(
                                        child: Text(
                                          'Remove',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: Get.height * 0.2,
                          color: appcolor().mainColor,
                          width: Get.width * 0.401,
                          child: Column(
                            children: [
                              Container(
                                height: Get.height * 0.15,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: Get.width * 0.2,
                                      color: appcolor().greenColor,
                                      height: Get.height * 0.05,
                                      child: Center(
                                        child: Text(
                                          'Edit',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: Get.height * 0.05,
                                    color: Colors.black,
                                    width: Get.width * 0.001,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: Get.width * 0.2,
                                      color: appcolor().greyColor,
                                      height: Get.height * 0.05,
                                      child: Center(
                                        child: Text(
                                          'Remove',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Title',
                      style: TextStyle(
                          color: appcolor().mediumGreyColor, fontSize: 18),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      border: Border.all(color: appcolor().mediumGreyColor),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Container(
                    child: Text(
                      'Description',
                      style: TextStyle(
                          color: appcolor().mediumGreyColor, fontSize: 18),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      border: Border.all(color: appcolor().mediumGreyColor),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  blockButton(
                    title: Text(
                      'Send Enquiry',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16),
                    ),
                    ontap: () {},
                    color: appcolor().mainColor,
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 20,
                vertical: 5,
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
