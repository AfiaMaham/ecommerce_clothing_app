import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

class CreateAccount extends StatelessWidget {
  AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/createAccount_pic1.png"),
                  Row(children: [
                    Column(children: [
                      SizedBox(
                        width: 50.w,
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontFamily: 'Raleway_bold',
                            fontWeight: FontWeight.w700,
                            fontSize: 33.sp,
                            height: 1.1,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ).paddingOnly(left: 7.w),
                      Align(
                        alignment: Alignment.topLeft,
                        child: DottedBorder(
                          color: AppColor.blueShade,
                          borderType: BorderType.Circle,
                          padding: EdgeInsets.all(13.sp),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: AppColor.blueShade,
                                size: 25.sp,
                              )),
                        ).paddingOnly(top: 7.h,right: 25.w),
                      ),

                    ],).paddingOnly(top: 11.h),
                    Image.asset("assets/images/createAccount_pic2.png").paddingOnly(left: 17.w),
                  ],).paddingOnly(top: 6.h),
                ],
              ),
            ],
          ),
          Container(
            height: 5.5.h,
            width: 90.w,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.TFFColor,
                hintText: "Email",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.4,
                  color: AppColor.hintColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.sp),
                  borderSide: BorderSide.none
                ),
              ),
            ),
          ).paddingOnly(top: 6.h),
          Container(
            height: 5.5.h,
            width: 90.w,
            child: Obx((){
              return             TextFormField(
                obscureText: controller.isHidden.value?false:true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  suffixIcon:  GestureDetector(
                      onTap: (){
                        controller.isHidden.value = !controller.isHidden.value;
                      },
                      child: Icon(controller.isHidden.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,size: 14.sp,)
                  ),                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.sp),
                    borderSide: BorderSide.none
                ),
                ),
              );

            }),
          ).paddingOnly(top: 1.5.h),
          Container(
            height: 8.h,
            width: 90.w,
            child: IntlPhoneField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.TFFColor,
                hintText: "Your number",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.4,
                  color: AppColor.hintColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.sp),
                  borderSide: BorderSide.none
                ),
              ),
            ),
          ).paddingOnly(top: 1.5.h),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 38.w,vertical: 1.5.h),
              decoration: BoxDecoration(
                color: AppColor.blueShade,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Done',
                style:TextStyle(
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w300,
                  fontSize: 15.sp,
                  height: 1.4,
                  color: AppColor.whiteColor,
                ),
              ),

            ).paddingOnly(top: 7.h),
          ),


        ],
      ),
    );
  }
}
