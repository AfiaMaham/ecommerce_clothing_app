import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/product.dart';
import 'package:ecommerce_clothing_store_app/widgets/categories.dart';
import 'package:ecommerce_clothing_store_app/widgets/flash_sale.dart';
import 'package:ecommerce_clothing_store_app/widgets/just_for_you.dart';
import 'package:ecommerce_clothing_store_app/widgets/most_popular.dart';
import 'package:ecommerce_clothing_store_app/widgets/new_items.dart';
import 'package:ecommerce_clothing_store_app/widgets/top_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeLayout extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        body:
        Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 1.5.h),
              child: Row(
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontSize: 24.sp,
                      height: 1.3,
                      letterSpacing: -0.3,
                    ),
                  ),
                  Container(
                    height: 4.5.h,
                    width: 67.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColor.blueShade,
                        ),
                        filled: true,
                        fillColor: AppColor.TFFColor,
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.4,
                          color: AppColor.hintColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.sp),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ).paddingOnly(left: 5.w),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontSize: 17.sp,
                        height: 1.4,
                        letterSpacing: -0.2,
                      ),
                    ).paddingSymmetric(vertical: 0.8.h,horizontal: 3.w),
                  ),
                  Categories(),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Top Products',
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                        height: 1.4,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ).paddingSymmetric(vertical: 1.5.h,horizontal: 3.w),
                  TopProducts(),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'New Items',
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontSize: 17.sp,
                        height: 1.4,
                        letterSpacing: -0.2,
                      ),
                    ).paddingOnly(top:2.h,left: 3.w),
                  ),
                  NewItems(),

                  Row(
                    children: [
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontSize: 17.sp,
                          height: 1.4,
                          letterSpacing: -0.2,
                        ),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                          fontFamily:  'Raleway_bold',
                          fontSize: 12.5.sp,
                        ),
                      ).paddingOnly(left: 36.w),
                      Container(
                        padding: EdgeInsets.all(3.sp),
                        decoration: BoxDecoration(
                            color: AppColor.blueShade,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.arrow_forward,color: AppColor.whiteColor,),
                      ).paddingOnly(left: 4.w),
                    ],
                  ).paddingOnly(top:2.h),
                  FlashSale(),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Most Popular',
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontSize: 17.sp,
                        height: 1.4,
                        letterSpacing: -0.2,
                      ),
                    ).paddingOnly(top:2.h,left: 3.w),
                  ),
                  MostPopular(),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Just For You ',
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                        height: 1.4,
                        letterSpacing: -0.2,
                      ),
                    ).paddingSymmetric(vertical: 1.h),
                  ),
                  JustForYou(),
                ],),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 2.w),
      ),
    );
  }
}
