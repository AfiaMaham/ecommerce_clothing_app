import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class SettingShippingAddress extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            GestureDetector(
               // onTap: Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios_outlined,size: 18.sp,)),
            Text("Setting",style: TextStyle(
              fontFamily:  'Raleway_bold',
              fontWeight: FontWeight.w300,
              fontSize: 24.sp,
              height: 1.3,
              letterSpacing: -0.3,
            ),).paddingOnly(left: 5.w),
          ],).paddingOnly(top: 4.h),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Shipping Address',
              style:TextStyle(
                fontFamily:  'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
                height: 1.3,
                letterSpacing: -0.2,
              ),
            ).paddingOnly(left: 10.w),
          ),
          Text(
            'Address',
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              height: 1.5,
              color: Color(0xFF000000),
            ),
          ).paddingOnly(top: 5.h),
            Container(
              height: 5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "This field is required",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ).paddingOnly(top: 1.h),
            Text(
              'Town / city',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                height: 1.5,
                color: Color(0xFF000000),
              ),
            ).paddingOnly(top: 2.h),
            Container(
              height: 5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "This field is required",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ).paddingOnly(top: 1.h),
            Text(
              'Postcode',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                height: 1.5,
                color: Color(0xFF000000),
              ),
            ).paddingOnly(top: 2.h),
            Container(
              height: 5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "This field is required",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ).paddingOnly(top: 1.h),
            Text(
              'Phone Number',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                height: 1.5,
                color: Color(0xFF000000),
              ),
            ).paddingOnly(top: 2.h),
            Container(
              height: 5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "This field is required",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.sp),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ).paddingOnly(top: 1.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 28.w,vertical: 1.3.h),
              decoration: BoxDecoration(
                color: AppColor.blueShade,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Save Changes',
                style:TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w300,
                  fontSize: 13.sp,
                  height: 1.4,
                  color: AppColor.whiteColor,
                ),
              ),

            ).paddingOnly(top: 13.h)
          ],).paddingSymmetric(horizontal: 6.w),
      ),
    );
  }
}
