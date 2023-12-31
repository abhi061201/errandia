import 'package:errandia/app/modules/errands/controller/errandia_detail_view_controller.dart';
import 'package:errandia/app/modules/global/constants/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class errand_detail_view extends StatelessWidget {
  errand_detail_view({super.key});
  late errandia_detail_view_controller detailcontroller =
      Get.put(errandia_detail_view_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
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
          'Errands Detail',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        iconTheme: IconThemeData(
          color: appcolor().mediumGreyColor,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Container(
                  child: Text(
                    'I need a Dell Laptop',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: appcolor().mainColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                //   // Obx(
                //   //   () => Expanded(
                //   //     child: Container(
                //   //       child: Text(
                //   //         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                //   //         style: TextStyle(
                //   //           fontSize: 18,
                //   //           // fontWeight: FontWeight.w600,
                //   //           // color: appcolor().mainColor,
                //   //         ),
                //   //         maxLines:
                //   //            detailcontroller.isRead.value?null:null,
                //   //         overflow: TextOverflow.ellipsis,
                //   //       ),
                //   //     ),
                //   //   ),
                //   // ),
                //   Obx(
                //     () => Expanded(
                //       child: Container(
                //         child: Text(
                //           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                //           style: TextStyle(
                //             fontSize: 18,
                //             // fontWeight: FontWeight.w600,
                //             // color: appcolor().mainColor,
                //           ),
                //           maxLines: detailcontroller.isRead.value ? 7 : null,
                //           //    detailcontroller.isRead.value?null:null,
                //           overflow: detailcontroller.isRead.value
                //               ? TextOverflow.ellipsis
                //               : null,
                //         ),
                //       ),
                //     ),
                //   ),
                // ],

                Expanded(
                  child: ReadMoreText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                    trimLength: 200,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.left,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'read more',
                    trimExpandedText: 'read less',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Expanded(
                  child: ReadMoreText(
                    'Electronics, Gadgets, Accessesories',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    trimLength: 50,
                    textAlign: TextAlign.left,
                    trimMode: TrimMode.Length,
                    trimCollapsedText: 'read more',
                    trimExpandedText: 'read less',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Posted By',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      'assets/images/recently_posted_items/avatar1.png',
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Pearline Cummings',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: appcolor().mainColor,
                          ),
                        ),
                        Text(
                          'Molyko, Buea, South West Region',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: appcolor().mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '+98 4852458920',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: appcolor().skyblueColor,
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: appcolor().mainColor,
                                  ),
                                  Text(
                                    ' Call',
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: appcolor().skyblueColor,
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: appcolor().mainColor,
                                  ),
                                  Text(
                                    ' Whatsapp',
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ).paddingOnly(top: 5)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: Get.width * 0.3,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.035,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ram@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: appcolor().skyblueColor,
                                borderRadius: BorderRadius.circular(
                                  8,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    // color: appcolor().mainColor,
                                  ),
                                  Text(
                                    '  Send Email',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ).paddingOnly(top: 5)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),

            //photo container
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: Color.fromARGB(255, 110, 193, 110),
                        ),
                        child: Center(
                          child: Text(
                            index.toString(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ).paddingOnly(
          left: 20,
          top: 20,
          right: 10,
          bottom: 20,
        ),
      ),
    );
  }
}
