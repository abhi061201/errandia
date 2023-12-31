import 'dart:io';

import 'package:errandia/app/ImagePicker/imagePickercontroller.dart';
import 'package:errandia/app/modules/auth/Register/buyer/view/otp_verification_screen.dart';
import 'package:errandia/app/modules/auth/Register/registration_successful_view.dart';
import 'package:errandia/app/modules/auth/Register/service_Provider/view/service_category_screen_service_provider.dart';

import 'package:errandia/app/modules/auth/Sign%20in/view/signin_view.dart';
import 'package:errandia/app/modules/global/Widgets/GlobalDialogBoxtext.dart';
import 'package:errandia/app/modules/home/view/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class register_serviceprovider_view extends StatelessWidget {
  register_serviceprovider_view({super.key});
  imagePickercontroller image_pick_controller =
      Get.put(imagePickercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0.8,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff113d6b),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: Get.height * 0.025,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SERVICE PROVIDER',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3c7fc6),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * 0.015,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'REGISTER YOUR ERRANDIA ACCOUNT',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff113d6b),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Text(
                    //   'ACCOUNT',
                    //   style: TextStyle(
                    //     fontSize: 26,
                    //     fontWeight: FontWeight.w700,
                    //     color: Color(0xff113d6b),
                    //   ),
                    // ),
                  ],
                ),
              ),

              //

              SizedBox(
                height: Get.height * 0.03,
              ),

              //
              Container(
                child: Text(
                  'Create an account your Errandia account',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8ba0b7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: Get.height * 0.02,
              ),

              //
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // buiseness name
                      Text(
                        'Buiseness Name',
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
                              keyboardType: TextInputType.name,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.02,
                      ),

                      // profile photo
                      Text(
                        'Profile Picture*',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.001,
                      ),

                      // text form field
                      Container(
                        height: Get.height * 0.09,
                        child: Row(
                          children: [
                            Obx(
                              () => Container(
                                width: Get.width * 0.2,
                                child: Card(
                                  child: image_pick_controller
                                          .image_path.isEmpty
                                      ? Image(
                                          image: AssetImage(
                                            'assets/images/person_avatar.png',
                                          ),
                                        )
                                      : Image(
                                          image: FileImage(
                                            File(
                                              image_pick_controller.image_path
                                                  .toString(),
                                            ),
                                          ),
                                          fit: BoxFit.fill,
                                        ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // here image picker will be implemented

                                image_pick_controller.getImagefromgallery();
                              },
                              child: Card(
                                color: Color(0xffe0f6fe),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height: Get.height,
                                  width: Get.width * 0.3,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.upload,
                                        size: 30,
                                        color: Color(0xff113d6b),
                                      ),
                                      Text(
                                        'UPLOAD',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff113d6b),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.02,
                      ),

                      // buiseness phone number
                      Text(
                        'Buiseness Phone Number',
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
                                padding: EdgeInsets.symmetric(
                                  vertical: 1,
                                ),
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
                        height: Get.height * 0.02,
                      ),

                      // buiseness email

                      Text(
                        'Buiseness Email',
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
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.02,
                      ),

                      //pass+ retype password
                      Container(
                        height: Get.height * 0.11,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Container(
                                      child: Text(
                                        'Password*',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Container(
                                      child: Text(
                                        'Retype Password*',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Get.height * 0.001,
                            ),
                            Row(
                              children: [
                                // pass form field
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xffe0e6ec),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: TextFormField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // retype pass form field

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Color(0xffe0e6ec),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: TextFormField(
                                          obscureText: true,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                // by registering
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      // by registering you agree
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'By registering, you agree to the Errandia\'s ',
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      await showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return userAgreementContainer();
                                          });
                                      debugPrint(
                                        'user agreement printed',
                                      );
                                    },
                                  text: 'User Agreement',
                                  style: TextStyle(
                                    color: Color(0xff3c7fc6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(text: ' and'),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      debugPrint(
                                        'Privacy statement printed',
                                      );
                                    },
                                  text: ' Privacy Policy',
                                  style: TextStyle(
                                    color: Color(0xff3c7fc6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                        ),
                      ),

                      SizedBox(
                        height: Get.height * 0.07,
                      ),

                      //button container

                      InkWell(
                        onTap: () {
                          Get.to(service_category_service_provider());
                        },
                        child: Container(
                          height: Get.height * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xffe0e6ec),
                            ),
                            color: Color(0xff113d6b),
                          ),
                          child: Center(
                            child: Text(
                              'CONTINUE',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: Get.height * 0.04,
              ),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xff8ba0b7),
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint('sign in');
                              Get.offAll(signin_view());
                            },
                          text: 'Sign In',
                          style: TextStyle(
                            color: Color(0xff3c7fc6),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
              ),

              SizedBox(
                height: Get.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
