import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/about_pic.png")
                .paddingSymmetric(vertical: 13.h),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About Shoppe',
                style: TextStyle(
                  color: AppColor.black,
                  fontFamily: "Railway_bold",
                  fontSize: 24.sp,
                ),
              ),
            ),
            Text(
              'Shoppe - Shopping UI kit" is likely a user interface (UI) kit designed to facilitate the development of e-commerce or shopping-related applications. UI kits are collections of pre-designed elements, components, and templates that developers and designers can use to create consistent and visually appealing user interfaces.',
              style: TextStyle(
                  fontFamily: "nunito_sans",
                  fontWeight: FontWeight.w300,
                  color: AppColor.pureBlack,
                  fontSize: 13.sp),
            ).paddingSymmetric(vertical: 2.h),
            Text(
              'If you need help or you have any questions, feel free to contact me by email.',
              style: TextStyle(
                  fontFamily: "nunito_sans",
                  fontWeight: FontWeight.w300,
                  color: AppColor.pureBlack,
                  fontSize: 13.sp),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'hello@mydomain.com',
                style: TextStyle(
                  color: AppColor.black,
                  fontFamily: "Railway_bold",
                  fontSize: 14.sp,
                ),
              ).paddingSymmetric(vertical: 0.7.h),
            ),

          ],
        ).paddingSymmetric(horizontal: 5.w),
      ),
    );
  }
}
