import 'package:errandia/app/modules/home/categories/view/categories.dart';
import 'package:errandia/app/modules/home/view/home_view.dart';
import 'package:errandia/app/modules/home/view/home_view_1.dart';
import 'package:errandia/app/modules/products/view/products_send_enquiry.dart';
import 'package:errandia/app/modules/reviews/views/add_review.dart';
import 'package:errandia/app/modules/splashScreen/splash_screen.dart';
import 'package:errandia/common/random_ui/ui_23.dart';
import 'package:errandia/common/random_ui/run_an_errand.dart';
import 'package:errandia/app/modules/products/view/product_view.dart';
import 'package:errandia/app/modules/reviews/views/review_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
  await GetStorage.init();
  runApp(const ErrandiaApp());
}

class ErrandiaApp extends StatelessWidget {
  const ErrandiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('Author=> Abhishek Gupta');
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          
        ),
        primaryColor: Color(0xff113d6b),
        primaryTextTheme: TextTheme(
          
        ),
      ),
      home: Home_view(),
    );
  }
}
