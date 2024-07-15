import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/setting_screen.dart';
import 'package:ecommerce_clothing_store_app/widgets/announcement.dart';
import 'package:ecommerce_clothing_store_app/widgets/categories.dart';
import 'package:ecommerce_clothing_store_app/widgets/flash_sale.dart';
import 'package:ecommerce_clothing_store_app/widgets/just_for_you.dart';
import 'package:ecommerce_clothing_store_app/widgets/most_popular.dart';
import 'package:ecommerce_clothing_store_app/widgets/my_orders.dart';
import 'package:ecommerce_clothing_store_app/widgets/new_items.dart';
import 'package:ecommerce_clothing_store_app/widgets/top_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProfileLayout extends StatelessWidget {
  ListViewController viewController = Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.whiteColor,
      statusBarIconBrightness: Brightness.dark,
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                children: [
                  Card(
                    shape: CircleBorder(),
                    child: Container(
                      padding: EdgeInsets.all(3.sp),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/profile_personPic.png',
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 6.w),
                    decoration: BoxDecoration(
                      color: AppColor.blueShade,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      'My Activity',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp,
                        height: 1.3,
                        letterSpacing: -0.2,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ).paddingSymmetric(horizontal: 5.w),
                  Container(
                      padding: EdgeInsets.all(6.sp),
                      decoration: BoxDecoration(
                          color: AppColor.TFFColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.menu,
                        color: AppColor.blueShade,
                      )).paddingOnly(left: 10.w),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
                    },
                    child: Container(
                        padding: EdgeInsets.all(6.sp),
                        decoration: BoxDecoration(
                            color: AppColor.TFFColor, shape: BoxShape.circle),
                        child: Icon(
                          Icons.settings,
                          color: AppColor.blueShade,
                        )).paddingOnly(left: 4.w),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Hello, Romina!',
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w500,
                          fontSize: 24.sp,
                          height: 1.3,
                          letterSpacing: -0.3,
                        ),
                      ).paddingSymmetric(vertical: 1.h),
                    ),
                    Announcement().paddingSymmetric(horizontal: 3.w),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Recently viewed',
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          height: 1.4,
                          letterSpacing: -0.2,
                        ),
                      ).paddingSymmetric(vertical: 1.h),
                    ),
                    Container(
                      height: 7.h,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              viewController.profileRecentlyViewedPics.length,
                          itemBuilder: (context, index) => CircleAvatar(
                                  radius: 20.sp,
                                  child: ClipOval(
                                      child: Image.asset(viewController
                                          .profileRecentlyViewedPics[index])))
                              .paddingSymmetric(horizontal: 3.w)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'My Orders',
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          height: 1.4,
                          letterSpacing: -0.2,
                        ),
                      ).paddingSymmetric(vertical: 1.h),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyOrders(text:"To Pay"),
                        MyOrders(text:"To Receive"),
                        MyOrders(text:"To Review"),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          'New Items',
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
                            fontFamily: 'Raleway_bold',
                            fontSize: 12.5.sp,
                          ),
                        ).paddingOnly(left: 36.w),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                              color: AppColor.blueShade,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColor.whiteColor,
                          ),
                        ).paddingOnly(left: 4.w),
                      ],
                    ).paddingOnly(top: 2.h),
                    NewItems(),

                    Row(
                      children: [
                        Text(
                          'Most Popular',
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
                            fontFamily: 'Raleway_bold',
                            fontSize: 12.5.sp,
                          ),
                        ).paddingOnly(left: 28.w),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                              color: AppColor.blueShade,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColor.whiteColor,
                          ),
                        ).paddingOnly(left: 4.w),
                      ],
                    ).paddingOnly(top: 2.h),
                    MostPopular(),

                    Row(
                      children: [
                        Text(
                          'Categories',
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
                            fontFamily: 'Raleway_bold',
                            fontSize: 12.5.sp,
                          ),
                        ).paddingOnly(left: 36.w),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                              color: AppColor.blueShade,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColor.whiteColor,
                          ),
                        ).paddingOnly(left: 4.w),
                      ],
                    ).paddingSymmetric(vertical: 0.8.h),
                    Categories(),

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
                            fontFamily: 'Raleway_bold',
                            fontSize: 12.5.sp,
                          ),
                        ).paddingOnly(left: 36.w),
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                              color: AppColor.blueShade,
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColor.whiteColor,
                          ),
                        ).paddingOnly(left: 4.w),
                      ],
                    ).paddingOnly(top: 2.h),
                    FlashSale(),

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
                    ).paddingSymmetric(vertical: 1.5.h),
                    TopProducts(),

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
                  ],
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 2.w),
      ),
    );
  }
}
