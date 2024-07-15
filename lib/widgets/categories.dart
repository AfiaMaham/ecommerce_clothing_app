import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class Categories extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      child: ListView.builder(
        itemCount: viewController.homeCategoryPics1.length,
        itemBuilder: (context,index)=>  Row(
          children: [
            Card(
              child: Container(
                height: 24.h,
                width: 44.w,
                margin: EdgeInsets.fromLTRB(0, 0.2.h, 0, 0.2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp) ,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.containerShadow,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(viewController.homeCategoryPics1[index]),
                        Image.asset(viewController.homeCategoryPics2[index]),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(viewController.homeCategoryPics3[index]),
                        Image.asset(viewController.homeCategoryPics4[index]),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          viewController.homeCategoryName1[index],
                          style: TextStyle(
                            fontFamily:  'Raleway_bold',
                            fontSize: 17,
                            height: 1.2,
                            letterSpacing: -0.2,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.1.h),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                          decoration: BoxDecoration(
                              color: AppColor.grayLight,
                              borderRadius: BorderRadius.circular(8.sp)
                          ),
                          child: Text(
                            viewController.homeCategoryQuantity1[index],
                            style: TextStyle(
                              fontFamily:  'Raleway_bold',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 1.8,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),],),
                  ],),
              ),
            ),
            Card(
              child: Container(
                height: 24.h,
                width: 44.w,
                margin: EdgeInsets.fromLTRB(0, 0.2.h, 0, 0.2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.sp) ,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.containerShadow,
                      offset: Offset(0, 5),
                      blurRadius: 5,
                    ),
                  ],),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(viewController.homeCategoryPics5[index]),
                        Image.asset(viewController.homeCategoryPics6[index]),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(viewController.homeCategoryPics7[index]),
                        Image.asset(viewController.homeCategoryPics8[index]),
                      ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          viewController.homeCategoryName2[index],
                          style: TextStyle(
                            fontFamily:  'Raleway_bold',
                            fontSize: 17,
                            height: 1.2,
                            letterSpacing: -0.2,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.1.h),
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                          decoration: BoxDecoration(
                              color: AppColor.grayLight,
                              borderRadius: BorderRadius.circular(8.sp)
                          ),
                          child: Text(
                            viewController.homeCategoryQuantity2[index],
                            style: TextStyle(
                              fontFamily:  'Raleway_bold',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              height: 1.8,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ),],),
                  ],),
              ),
            ),
          ],),),
    );
  }
}
