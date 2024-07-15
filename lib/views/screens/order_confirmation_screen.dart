import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/bottom_bar_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OrderConfirmationScreen extends StatelessWidget {

  AppController controller=Get.put(AppController());
  ListViewController listViewController = Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "Thank you for your order",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w600),
            ).paddingOnly(top: 8.h),
           Obx((){return  Text("An confirmation email has been sent to  ${listViewController.userName.value}@gmail.com")
               .paddingSymmetric(horizontal: 3.w, vertical: 0.5.h);}),
            Container(
              height: 25.h,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: ListView.builder(
                itemCount: listViewController.confirmOrder.length,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(listViewController.confirmOrder[index],style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.blueShade
                    ),).paddingSymmetric(horizontal: 3.w,vertical: 1.h),
                    Text(
                      index == 3
                          ? controller.selectedDeliveryOption.value
                          : listViewController.orderInfo[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ).paddingSymmetric(horizontal: 3.w),
                  ],
                ),
              ),
            ).paddingSymmetric(vertical: 3.h),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomBarNavigation()));
              },
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20.w, vertical: 1.3.h),
                  decoration: BoxDecoration(
                    color: AppColor.blueShade,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Go to Homepage',
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

          ],
        ).paddingSymmetric(horizontal: 6.w),
      ),
    );
  }
}
