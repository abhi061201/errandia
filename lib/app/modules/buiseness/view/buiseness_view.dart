import 'package:errandia/app/modules/buiseness/controller/business_controller.dart';
import 'package:errandia/app/modules/buiseness/view/buiseness_item.dart';
import 'package:errandia/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../global/constants/color.dart';

class Business_View extends StatelessWidget {
  const Business_View({super.key});

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
                    'Update',
                    style: TextStyle(
                      color: appcolor().mainColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //busieness
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Buiseness',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: appcolor().mainColor,
              ),
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
                  child: InkWell(
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
                  ),
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
                  crossAxisSpacing: 5),
              itemBuilder: (context, index) {
                return Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: Get.width * 0.4,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: appcolor().lightgreyColor,
                child: Image(
                  image: AssetImage(
                     business_controller().businessList[index].imagepath,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.009,
              ),
              Text(
                 business_controller().businessList[index].type_of_business,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: appcolor().mediumGreyColor),
              ),
              SizedBox(
                height: Get.height * 0.001,
              ),
              Text(
                 business_controller().businessList[index].name.toString(),
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
                  Text( business_controller().businessList[index].location.toString())
                ],
              ),
            ],
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
