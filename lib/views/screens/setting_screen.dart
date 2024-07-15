import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/about.dart';
import 'package:ecommerce_clothing_store_app/views/screens/setting_shippingAddress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class SettingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        toolbarHeight: 10.h,
        title: Text("Setting",style: TextStyle(
         fontFamily:  'Raleway_bold',
          fontWeight: FontWeight.w300,
          fontSize: 24.sp,
          height: 1.3,
          letterSpacing: -0.3,
        ),),
      ),
      body: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text("Personal",style: TextStyle(
            fontFamily: 'Raleway_bold',
            fontSize: 16.sp,
          ),),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Profile",style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
            ),),
            Icon(Icons.arrow_forward_ios,size: 16.sp,)
          ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingShippingAddress()));
          },
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping Address",style: TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),),
                Icon(Icons.arrow_forward_ios,size: 16.sp,)
              ],),
          ).paddingSymmetric(vertical: 1.h),
        ),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Payment Method",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Shop",style: TextStyle(
            fontFamily: 'Raleway_bold',
            fontSize: 16.sp,
          ),),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Country",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Currency",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sizes",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Terms and Conditions",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Align(
          alignment: Alignment.topLeft,
          child: Text("Account",style: TextStyle(
            fontFamily: 'Raleway_bold',
            fontSize: 16.sp,
          ),),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Language",style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
              ),),
              Icon(Icons.arrow_forward_ios,size: 16.sp,)
            ],),
        ).paddingSymmetric(vertical: 1.h),
        Divider(thickness: 0,color: AppColor.grayShade,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
          },
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("About Shoppe",style: TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),),
                Icon(Icons.arrow_forward_ios,size: 16.sp,)
              ],),
          ).paddingSymmetric(vertical: 1.h),
        ),
        Divider(thickness: 0,color: AppColor.grayShade,),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Delete My Account',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
              fontSize: 11.sp,
              color: AppColor.red,
            ),
          ).paddingSymmetric(vertical: 1.h),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Shoppe',
            style: TextStyle(
              fontFamily: 'Raleway_bold',
              fontSize: 20,
            ),
          ).paddingOnly(top: 2.h),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Version 1.0 April, 2020',
            style: TextStyle(
             fontFamily:  'Nunito Sans',
              fontWeight: FontWeight.bold,
              fontSize: 12,
              height: 1.7,
            ),
          ),
        ),
      ],).paddingSymmetric(horizontal: 6.w),
    );
  }
}
