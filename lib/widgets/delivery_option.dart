import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class DeliveryOption extends StatelessWidget {
  AppController controller = Get.put(AppController());
  int? index;
  String? title;
  String? subtitle;
   DeliveryOption({
    required  this.index,
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title!,style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blueShade
                ),),
                Text(subtitle!),
              ],),
            Obx(() {
              return Checkbox(
                value: controller.deliveryCheck[index!],
                onChanged: (value) {
                  controller.selectDeliveryOption(index!);
                },
              );
            }), ],).paddingSymmetric(horizontal: 6.w,vertical: 2.h),
      ),
    );
  }
}
