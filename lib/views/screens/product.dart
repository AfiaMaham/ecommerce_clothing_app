import 'dart:ffi';

import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/progress_tracker_screen.dart';
import 'package:ecommerce_clothing_store_app/views/screens/shipping_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductScreen extends StatelessWidget {
  AppController controller = Get.put(AppController());
  ListViewController listViewController= Get.put(ListViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/Image12.png"),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Price",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w600),
            ).paddingOnly(left: 6.w, top: 1.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Quantity:",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w600),
            ).paddingOnly(left: 6.w, top: 1.h),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  controller.quantity.value++;
                },
                child: Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.grayShade),
                  child: Icon(
                    Icons.add,
                    size: 20.sp,
                  ),
                ),
              ),
              Obx((){
                return  Text(
                  "${controller.quantity.value}",
                  style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ).paddingSymmetric(horizontal: 6.w);

              }),
              GestureDetector(
                onTap: (){
                  if(controller.quantity.value<=1){
                    return;
                  }
                  else{
                    controller.quantity.value--;

                  }
                },
                child: Container(
                  padding: EdgeInsets.all(8.sp),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.grayShade),
                  child: Icon(
                    Icons.remove,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 18.w, vertical: 2.h),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Size",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w600),
            ).paddingSymmetric(horizontal: 6.w, vertical: 1.h),
          ),
          Container(
            height: 3.5.h,
            child: ListView.builder(
              itemCount:listViewController.size.length ,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> Obx((){
                return  GestureDetector(
                  onTap: (){
                    for(int i=0;i<=4;i++){
                      if(i==index){
                        listViewController.sizeColor[i]=AppColor.deepPurple;
                        listViewController.sizeTextColor[i]=AppColor.whiteColor;
                      }
                      else{
                        listViewController.sizeColor[i]=AppColor.grayShade;
                        listViewController.sizeTextColor[i]=AppColor.black;

                      }}
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        color: listViewController.sizeColor[index]),
                    child: Text(listViewController.size[index],style: TextStyle(
                        color: listViewController.sizeTextColor[index]
                    ),),
                  ).paddingOnly(left: 3.w),
                );
              })).paddingOnly(left: 3.w),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Color:",
              style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w600),
            ).paddingSymmetric(horizontal: 6.w, vertical: 1.h),
          ),
          Container(
            height: 4.h,
            child: ListView.builder(
              itemCount: listViewController.sizeColor.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>
              Obx((){
                return  GestureDetector(
                  onTap: (){
                    for(int i=0;i<=4;i++){
                      if(i==index){
                        listViewController.colorBorder[i]=AppColor.black;
                      }
                      else{
                        listViewController.colorBorder[i]=AppColor.whiteColor;

                      }}
                  },
                  child: Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      border: Border.all(color:listViewController.colorBorder[index] ),
                      shape: BoxShape.circle,
                      color: listViewController.selectColor[index],
                    ),
                  ).paddingOnly(left: 3.w),
                );
              })

            ).paddingOnly(left: 3.w),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Obx(() {
                return GestureDetector(
                    onTap: () {
                      controller.liked.value = !controller.liked.value;
                    },
                    child: Icon(
                      controller.liked.value
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 30.sp,
                      color: controller.liked.value ? Colors.red : Colors.black,
                    ));
              }),
              GestureDetector(
                onTap: () {
                  final message = SnackBar(
                    content: Text("Product added to cart successfully"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.9.h, horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: AppColor.black,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProgressTrackerScreen()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 0.9.h, horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: AppColor.blueShade,
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Text(
                    "Buy now",
                    style: TextStyle(color: AppColor.whiteColor),
                  ),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 6.w, vertical: 2.h),
        ],
      ),
    );
  }
}
