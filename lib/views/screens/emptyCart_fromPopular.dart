import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class EmptyCartFromPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Cart",
                      style: TextStyle(
                        fontFamily: 'Raleway_bold',
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp,
                        height: 1.3,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6.sp),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColor.grayShade),
                      child: Text(
                        "0",
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 13.sp,
                          height: 1.3,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 9.h,
                  decoration: BoxDecoration(
                      color: AppColor.grayLight,
                      borderRadius: BorderRadius.circular(12.sp)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Address",
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          height: 1.3,
                          letterSpacing: -0.1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 3.3.h,
                            width: 60.w,
                            child: Text(
                              "26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city",
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 8.5.sp,
                                height: 1.5,
                                color: AppColor.pureBlack,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7.5.sp),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.blueShade,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: AppColor.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 5.5.w, vertical: 0.7.h),
                ).paddingSymmetric(vertical: 1.5.h),
                Card(
                  shape: CircleBorder(),
                  child: Container(
                    padding: EdgeInsets.all(28.sp),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/empty_cart.png"),
                  ),
                ).paddingSymmetric(vertical: 6.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Most Popular',
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                      letterSpacing: -0.2,
                    ),
                  ).paddingSymmetric(vertical: 2.h),
                ),
              ],
            ).paddingSymmetric(horizontal: 4.5.w),
            Container(
              height: 18.5.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.sp),

                    ),
                    child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                    "assets/images/popular_pic1.png"),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1780💙",
                                    style: TextStyle(
                                      fontFamily: 'Raleway_bold',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      height: 1.3,
                                      letterSpacing: -0.2,
                                    ),
                                  ).paddingOnly(right: 3.w),
                                  Text(
                                    "New",
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      height: 1.3,
                                      letterSpacing: -0.1,
                                    ),
                                  ),
                                ],
                              ).paddingOnly(top: 0.7.h)
                            ],
                          ),
                        ).paddingSymmetric(horizontal: 1.5.w),
                  )),
            ).paddingOnly(left: 4.5.w),
            Container(
              height: 7.h,
              color: AppColor.grayLight,
              child: Row(children: [
                Text("Total",style: TextStyle( fontFamily: 'Raleway_bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                  height: 1.3,
                  letterSpacing: -0.3,),).paddingSymmetric(horizontal: 3.w),
                Text("\$34,00",style: TextStyle(
                  fontFamily: 'Raleway_bold',
                  fontWeight: FontWeight.w700,
                  fontSize: 15.sp,
                  height: 1.2,
                  letterSpacing: -0.2,
                ),),
                Container(
                  height: 6.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: AppColor.whiteColor
                  ),
                  child: Center(
                    child: Text("Checkout", style:TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w300,
                      fontSize: 14.sp,
                      height: 1.4,
                    ),),
                  ),
                ).paddingOnly(left: 20.w),
              ],),
            ),

          ],
        ),
      ),
    );
  }
}
