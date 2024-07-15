import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class FlashSale extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29.h,
      child: ListView.builder(
        itemCount: viewController.homeFlashSalePics1.length,
        itemBuilder: (context,index)=>  Row(children: [
          Material(
            borderRadius: BorderRadius.circular(6.sp),
            child: Container(
              padding: EdgeInsets.all(4.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.sp),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.containerShadow,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child:Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(6.sp),
                    child: Image.asset(viewController.homeFlashSalePics1[index])),
                Container(
                  padding: EdgeInsets.all(2.sp),
                  decoration: BoxDecoration(
                    color:AppColor.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.sp),topRight:  Radius.circular(7.sp),
                        bottomLeft:  Radius.circular(7.sp)),
                  ),
                  child: Text("-20%",style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 1.2,
                      letterSpacing: -0.2,
                      color: AppColor.whiteColor
                  ),),
                ).paddingOnly(left: 15.w),
              ],),
            ),
          ).paddingSymmetric(vertical: 0.3.h,horizontal: 0.7.w),
          Material(
            borderRadius: BorderRadius.circular(6.sp),
            child: Container(
              padding: EdgeInsets.all(4.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.sp),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.containerShadow,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(6.sp),
                    child: Image.asset(viewController.homeFlashSalePics2[index])),
                Container(
                  padding: EdgeInsets.all(2.sp),
                  decoration: BoxDecoration(
                    color:AppColor.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.sp),topRight:  Radius.circular(7.sp),
                        bottomLeft:  Radius.circular(7.sp)),
                  ),
                  child: Text("-20%",style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 1.2,
                      letterSpacing: -0.2,
                      color: AppColor.whiteColor
                  ),),
                ).paddingOnly(left: 15.w),
              ],),

            ),
          ).paddingSymmetric(vertical: 0.3.h,horizontal: 0.7.w),
          Material(
            borderRadius: BorderRadius.circular(6.sp),
            child: Container(
              padding: EdgeInsets.all(4.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.sp),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.containerShadow,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child:Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(6.sp),
                    child: Image.asset(viewController.homeFlashSalePics3[index])),
                Container(
                  padding: EdgeInsets.all(2.sp),
                  decoration: BoxDecoration(
                    color:AppColor.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.sp),topRight:  Radius.circular(7.sp),
                        bottomLeft:  Radius.circular(7.sp)),
                  ),
                  child: Text("-20%",style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 1.2,
                      letterSpacing: -0.2,
                      color: AppColor.whiteColor
                  ),),
                ).paddingOnly(left: 15.w),
              ],),

            ),
          ).paddingSymmetric(vertical: 0.3.h,horizontal: 0.7.w),
        ],),
      ),
    );
  }
}
