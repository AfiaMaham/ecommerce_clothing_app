import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/widgets/delivery_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DeliveryScreen extends StatelessWidget {
  AppController controller = Get.put(AppController());
  ListViewController listViewController= Get.put(ListViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [

             DeliveryOption(
              index: 0,
              title: "Free - \$0.00",
              subtitle: "3-5 days delivery",
            ),

          DeliveryOption(
              index: 1,
              title: "Standard - \$5.12",
              subtitle: "2-3 days delivery",
          ),
         DeliveryOption(
              index: 2,
              title: "Rush - \$9.56",
              subtitle: "Next day delivery",
         ),

          GestureDetector(
            onTap: () {
              if (controller.selectedDeliveryOption.isNotEmpty) {
                controller.nextButton();
              }
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

              ).paddingOnly(top: 6.h),
            ),
          ),

        ],).paddingSymmetric(horizontal: 5.w,vertical: 15.h),
      ),
    );
  }
}
