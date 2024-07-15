import 'dart:ffi';

import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PaymentMethod extends StatelessWidget {
  ListViewController listViewController = Get.put(ListViewController());
  AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Select payment Method",
                style: TextStyle(
                  fontFamily: 'Raleway_bold',
                  fontWeight: FontWeight.w300,
                  fontSize: 17.sp,
                  height: 1.3,
                  letterSpacing: -0.3,
                ),
              ).paddingOnly(left: 5.w).paddingOnly(top: 4.h),
            ),
            Divider(
              color: AppColor.grayShade,
            ).paddingOnly(top: 1.5.h),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: listViewController.paymentName.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(() {
                                  return Checkbox(
                                    value:
                                        listViewController.paymentCheck[index],
                                    onChanged: (value) {
                                      for (int i = 0;
                                          i <
                                              listViewController
                                                  .paymentCheck.length;
                                          i++) {
                                        listViewController.paymentCheck[i] =
                                            (i == index) ? value! : false;
                                      }
                                      listViewController.paymentCheck
                                          .refresh(); // Notify GetX to update the UI
                                    },
                                  );
                                }),
                                Text(
                                  listViewController.paymentName[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ).paddingOnly(right: 20.w),
                                Image.asset(
                                    listViewController.paymentImage[index]),
                              ],
                            ).paddingOnly(top: 1.h),
                            Divider(
                              color: AppColor.grayShade,
                            ),
                          ],
                        )),
              ).paddingSymmetric(horizontal: 5.w, vertical: 1.h),
            ),
            Container(
              height: 10.h,
              color: AppColor.grayLight,
              child: Row(
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w700,
                      fontSize: 20.sp,
                      height: 1.3,
                      letterSpacing: -0.3,
                    ),
                  ).paddingSymmetric(horizontal: 3.w),
                  Text(
                    "\$34,00",
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      height: 1.2,
                      letterSpacing: -0.2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.shippingIndex.value !=
                              controller.statusList.length - 1
                          ? controller.nextButton()
                          : null;
                    },
                    child: Container(
                      height: 5.5.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.blueShade,
                        borderRadius: BorderRadius.circular(8.sp),
                      ),
                      child: Center(
                        child: Text(
                          "Pay now",
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            height: 1.4,
                            color: AppColor.whiteColor,
                          ),
                        ),
                      ),
                    ).paddingOnly(left: 25.w),
                  ),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 3.w),
      ),
    );
  }
}
