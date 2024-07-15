import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/payment_method.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ShippingAddressScreen extends StatelessWidget {
  AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Text("Select Shipping Address",style: TextStyle(
                    fontFamily:  'Raleway_bold',
                    fontWeight: FontWeight.w300,
                    fontSize: 17.sp,
                    height: 1.3,
                    letterSpacing: -0.3,
                  ),).paddingOnly(left: 5.w).paddingOnly(top: 4.h),
                ),
                Divider(color: AppColor.grayShade,).paddingOnly(top: 1.5.h),
                Text(
                  'Address',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    height: 1.5,
                    color: Color(0xFF000000),
                  ),
                ).paddingOnly(top: 3.h),
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
                    keyboardType: TextInputType.number,
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
                    keyboardType: TextInputType.number,
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
                GestureDetector(
                  onTap: () {
                    controller.shippingIndex.value != controller.statusList.length - 1
                        ? controller.nextButton()
                        : null;
                  },
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 28.w, vertical: 1.3.h),
                        decoration: BoxDecoration(
                          color: AppColor.blueShade,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                            height: 1.4,
                            color: AppColor.whiteColor,
                          ),
                        ),

                      ).paddingOnly(top: 4.h),
                    ),
                  ),

              ],).paddingSymmetric(horizontal: 6.w),
          ],
        ),
      ),
    );
  }
}
