import 'package:errandia/app/modules/auth/Register/view/buyer/otp_verification_screen.dart';
import 'package:errandia/app/modules/auth/Register/view/register_signin_screen.dart';
import 'package:errandia/app/modules/auth/Register/view/register_ui.dart';
import 'package:errandia/app/modules/auth/Sign%20in/view/signin_otp_verification_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class signin_view extends StatelessWidget {
  const signin_view({super.key});

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

              SizedBox(
                height: Get.height * 0.015,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'LOGIN TO YOUR ERRANDIA',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff113d6b),
                      ),
                    ),
                    Text(
                      'ACCOUNT',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff113d6b),
                      ),
                    ),
                  ],
                ),
              ),

              //

              SizedBox(
                height: Get.height * 0.03,
              ),

              //
              Container(
                child: Column(
                  children: [
                    Text(
                      'Log into your Errandia account',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8ba0b7),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: Get.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number *',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Container(
                        height: Get.height * 0.09,
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
                                child: TextFormField(
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),

                            // by registering
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      SizedBox(
                        height: Get.height * 0.25,
                      ),

                      //button container

                      InkWell(
                        onTap: () {
                          Get.to(signin_otp_verification_screen());
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
                                  fontWeight: FontWeight.bold,
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
                height: Get.height * 0.08,
              ),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Color(0xff8ba0b7), fontSize: 17),
                      children: [
                        TextSpan(text: 'Don\'t have an Errandia Account? '),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint('Register View');
                              Get.off(Register_Ui());
                            },
                          text: 'Register',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3c7fc6),
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
