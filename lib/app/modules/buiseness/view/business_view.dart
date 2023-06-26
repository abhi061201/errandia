import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:errandia/app/modules/buiseness/view/business_item.dart';
import 'package:errandia/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global/constants/color.dart';

class Business_View extends StatelessWidget {
  Business_View({super.key});
  String groupvalue = '0';
  @override
  Widget build(BuildContext context) {
    home_controller().atbusiness.value = true;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // address widget

          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border.symmetric(
                horizontal: BorderSide(
                  color: appcolor().greyColor,
                ),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: Get.height * 0.06,
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.buildingUser,
                  color: appcolor().mediumGreyColor,
                  size: 18,
                ),
                SizedBox(
                  width: Get.width * 0.05,
                ),
                Text(
                  'Update Your Business Info',
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Update Business',
                    style: TextStyle(
                      color: appcolor().blueColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //busieness
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text(
                  'Buiseness',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: appcolor().mainColor,
                  ),
                ),
                Spacer(),
                InkWell(
                  splashColor: Colors.grey,
                  // splashFactory: InkSplash.splashFactory,'[=]
                  // radius: 25,
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        height: Get.height * 0.5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Radio(
                              
                              value: Text('Business Name : Desc Z-A'),
                              groupValue: groupvalue,
                              onChanged: (val){
                                print('1');
                              },
                            )

                            // RadioListTile(
                            //   title: Text('Business Name : Desc Z-A'),
                            //   value: '0',
                            //   groupValue: groupvalue,
                            //   onChanged: (val) {print(val);},
                            // ),
                            // RadioListTile(
                            //   title: Text('Business Name : Asc A-Z'),
                            //   value: '1',
                            //   groupValue: groupvalue,
                            //   onChanged: (val) {print(val);},
                            // ),
                            // RadioListTile(
                            //   title: Text('Distance: Nearest to my location'),
                            //   value: '2',
                            //   groupValue: groupvalue,
                            //   onChanged: (val) {print(val);},
                            // ),
                            // RadioListTile(

                            //   title: Text('Recently Added'),
                            //   value: '3',
                            //   groupValue: groupvalue,
                            //   onChanged: (val) {
                            //     print(val);
                            //   },
                            // ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    child: Icon(Icons.sort),
                    height: Get.height * 0.02,
                  ),
                ),
                // IconButton(
                //   padding: EdgeInsets.all(0),

                //   splashRadius: 15,
                //   // visualDensity: VisualDensity(
                //   //   horizontal: 5,
                //   //   vertical: 5,
                //   // ),
                //   highlightColor: Colors.red,
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.sort,
                //   ),

                // ),
              ],
            ),
          ),

          // horizontal list
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 60,
            // color: Colors.black,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Center(
                  child: horizontal_list_item(),
                );
              },
            ),
          ),

          // grid view

          Expanded(
            child: GridView.builder(
              itemCount: business_controller().businessList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.7,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(color: appcolor().greyColor)
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    // width: Get.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          color: appcolor().lightgreyColor,
                          child: Image(
                            image: AssetImage(
                              business_controller()
                                  .businessList[index]
                                  .imagepath,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.009,
                        ),
                        Text(
                          business_controller()
                              .businessList[index]
                              .type_of_business,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: appcolor().mediumGreyColor),
                        ),
                        SizedBox(
                          height: Get.height * 0.001,
                        ),
                        Text(
                          business_controller()
                              .businessList[index]
                              .name
                              .toString(),
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: appcolor().mainColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: Get.height * 0.001,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              business_controller()
                                  .businessList[index]
                                  .location
                                  .toString(),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ).paddingSymmetric(horizontal: 10),
          )
        ],
      ),
    );
  }
}

Widget horizontal_list_item() {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: appcolor().skyblueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      // height: 20,
      child: Text('Beauty & Hair'),
    ),
  );
}
