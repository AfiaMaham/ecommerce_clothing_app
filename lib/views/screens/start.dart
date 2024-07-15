import 'package:ecommerce_clothing_store_app/views/screens/create_account.dart';
import 'package:ecommerce_clothing_store_app/views/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';
class Start extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColor.containerShadow,
                offset: Offset(0, 5),
                blurRadius: 5,
              ),
            ],

          ),
          child: Card(
            shape: CircleBorder(),
            child: Container(
                padding: EdgeInsets.all(20.sp),
                child: Image.asset("assets/images/about_pic.png")),
          ),
        ).paddingOnly(top: 24.h),
        Text(
          'Shoppe',
          style: TextStyle(
           fontFamily:  'Raleway_bold',
            fontWeight: FontWeight.w700,
            fontSize: 43.sp,
            letterSpacing: -0.5,
          ),
        ),
        Text(
          'Beautiful eCommerce UI Kit for your online store',
          textAlign: TextAlign.center,
          style: TextStyle(
           fontFamily:  'Nunito Sans',
            fontWeight: FontWeight.w300,
            fontSize: 14.sp,
            height: 1.7,
          ),
        ).paddingSymmetric(horizontal: 25.sp,vertical: 1.h),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 27.w,vertical: 1.5.h),
            decoration: BoxDecoration(
              color: AppColor.blueShade,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: Text(
              'Let\'s get started',
              style:TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w300,
                fontSize: 15.sp,
                height: 1.4,
                color: AppColor.whiteColor,
              ),
            ),

          ).paddingOnly(top: 16.h),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'I already have an account',
            style: TextStyle(
             fontFamily:  'Nunito Sans',
              fontWeight: FontWeight.w300,
              fontSize: 11.sp,
              height: 1.7,
            ),
          ).paddingOnly(right: 3.w),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Container(
              padding: EdgeInsets.all(2.sp),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.blueShade,
              ),
              child: Icon(Icons.arrow_forward,color: AppColor.whiteColor,),
            ),
          ),
        ],).paddingSymmetric(vertical: 2.h),
      ],),
    ));
  }
}
