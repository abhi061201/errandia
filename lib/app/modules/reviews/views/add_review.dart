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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: Get.height * 0.2,
                              width: Get.width * 0.4,
                              color: const Color.fromARGB(255, 234, 231, 231),
                              child: Center(
                                child: Text(
                                  'image',
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              height: Get.height * 0.2,
                              width: Get.width * 0.4,
                              color: const Color.fromARGB(255, 234, 231, 231),
                              child: Center(
                                child: Text(
                                  'image',
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   // crossAxisAlignment: CrossAxisAlignment.center,
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     SizedBox(
                        //     ),
                        //     InkWell(
                        //       onTap: () {},
                        //       child: Container(
                        //         width: Get.width * 0.2,
                        //         color: appcolor().greenColor,
                        //         height: Get.height * 0.05,
                        //         child: Center(
                        //           child: Text(
                        //             'Edit',
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Container(
                        //       height: Get.height * 0.05,
                        //       color: Colors.black,
                        //       width: Get.width * 0.001,
                        //     ),
                        //     InkWell(
                        //       onTap: () {},
                        //       child: Container(
                        //         width: Get.width * 0.2,
                        //         color: appcolor().greyColor,
                        //         height: Get.height * 0.05,
                        //         child: Center(
                        //           child: Text(
                        //             'Remove',
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ],
                ),
              ),
              blockButton(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_outlined,
                      size: 30,
                    ),
                    Text(
                      'Add More Images',
                      style: TextStyle(
                        fontSize: 16,
                        color: appcolor().mainColor,
                      ),
                    ),
                  ],
                ),
                ontap: () {},
                color: appcolor().greyColor,
              ).paddingSymmetric(horizontal: 20, vertical: 10),
              Container(
                // margin:EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                color: Colors.white,
                height: Get.height * 0.25,

                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
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
              SizedBox(height: Get.height*0.02,),
              blockButton(
                  title: Text('Submit Review', style: TextStyle(color: Colors.white),),
                  ontap: () {},
                  color: appcolor().mainColor,),
                  SizedBox(height: Get.height*0.03,),
            ],
          )
        ],
      ),
    );
  }
}
