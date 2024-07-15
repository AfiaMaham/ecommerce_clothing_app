import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
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
                          decoration: BoxDecoration(shape: BoxShape.circle,color: AppColor.grayShade),
                          child: Text(
                            "2",
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
                          color:AppColor.grayLight,
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
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
                                child: Icon(Icons.edit,color: AppColor.whiteColor,),
                              ),
                            ],
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 5.5.w,vertical: 0.7.h),
                    ).paddingSymmetric(vertical: 1.5.h),
                    Container(
                      child:Row(children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.containerShadow,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(children: [
                            Image.asset("assets/images/cart_pic1.png"),
                            Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.delete_outline,color: Colors.orange,),
                            ).paddingOnly(top: 7.5.h,left: 2.w),
                          ],),

                        ).paddingOnly(right: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text("Lorem ipsum dolor sit amet consectetur.",style: TextStyle(
                                fontFamily:  'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 1.3,
                              ),),
                            ).paddingOnly(bottom: 0.h),
                            Text("Pink, Size M",style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              height: 1.3,
                              letterSpacing: -0.1,
                            ),).paddingOnly(top: 1.h),
                            Row(
                              children: [
                                Text("\$17,00",style: TextStyle(
                                  fontFamily: 'Raleway_bold',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  height: 1.2,
                                  letterSpacing: -0.2,
                                ),).paddingOnly(right: 5.w),
                                Icon(Icons.remove_circle_outline,color: AppColor.blueShade,size: 27.sp,).paddingOnly(right: 1.w),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.5.w,vertical: 0.8.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: AppColor.grayShade,
                                  ),
                                  child: Center(
                                    child:  Text(
                                      '1',
                                      style:TextStyle(
                                        fontFamily:  'Raleway_bold',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        height: 1.3,
                                        letterSpacing: -0.2,
                                      ),

                                    ),

                                  ),
                                ).paddingOnly(right: 1.w),
                                Icon(Icons.add_circle_outline,color: AppColor.blueShade,size: 27.sp,),
                              ],).paddingOnly(top: 1.5.h),
                          ],),
                      ],),

                    ).paddingOnly(top: 1.h),
                    Container(
                      child:Row(children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.containerShadow,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(children: [
                            Image.asset("assets/images/cart_pic2.png"),
                            Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.delete_outline,color: Colors.orange,),
                            ).paddingOnly(top: 7.5.h,left: 2.w),
                          ],),

                        ).paddingOnly(right: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text("Lorem ipsum dolor sit amet consectetur.",style: TextStyle(
                                fontFamily:  'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 1.3,
                              ),),
                            ),
                            Text("Pink, Size M",style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              height: 1.3,
                              letterSpacing: -0.1,
                            ),).paddingOnly(top: 1.h),
                            Row(
                              children: [
                                Text("\$17,00",style: TextStyle(
                                  fontFamily: 'Raleway_bold',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15.sp,
                                  height: 1.2,
                                  letterSpacing: -0.2,
                                ),).paddingOnly(right: 5.w),
                                Icon(Icons.remove_circle_outline,color: AppColor.blueShade,size: 27.sp,).paddingOnly(right: 1.w),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.5.w,vertical: 0.8.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: AppColor.grayShade,
                                  ),
                                  child: Center(
                                    child:  Text(
                                      '1',
                                      style:TextStyle(
                                        fontFamily:  'Raleway_bold',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        height: 1.3,
                                        letterSpacing: -0.2,
                                      ),

                                    ),

                                  ),
                                ).paddingOnly(right: 1.w),
                                Icon(Icons.add_circle_outline,color: AppColor.blueShade,size: 27.sp,),
                              ],).paddingOnly(top: 1.5.h),
                          ],),
                      ],),

                    ).paddingOnly(top: 1.h),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'From Your Wishlist',
                        style: TextStyle(
                          fontFamily: 'Raleway_bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          letterSpacing: -0.2,
                        ),

                      ).paddingSymmetric(vertical: 1.5.h),
                    ),
                    Container(
                      child:Row(children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.containerShadow,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(children: [
                            Image.asset("assets/images/wishlist_pic1.png"),
                            Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.delete_outline,color: Colors.orange,),
                            ).paddingOnly(top: 7.5.h,left: 2.w),
                          ],),

                        ).paddingOnly(right: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text("Lorem ipsum dolor sit amet consectetur.",style: TextStyle(
                                fontFamily:  'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 1.3,
                              ),),
                            ).paddingOnly(bottom: 0.7.h),
                            Text("\$17,00",style: TextStyle(
                              fontFamily: 'Raleway_bold',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              height: 1.2,
                              letterSpacing: -0.2,
                            ),).paddingOnly(bottom: 1.5.h),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4.sp),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pink',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ).paddingOnly(left: 2.w),
                                Icon(Icons.shopping_bag_outlined,color: AppColor.blueShade,).paddingOnly(left: 17.w),
                              ],),
                          ],),
                      ],),

                    ),
                    Container(
                      child:Row(children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.containerShadow,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(children: [
                            Image.asset("assets/images/wishlist_pic1.png"),
                            Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.delete_outline,color: Colors.orange,),
                            ).paddingOnly(top: 7.5.h,left: 2.w),
                          ],),

                        ).paddingOnly(right: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text("Lorem ipsum dolor sit amet consectetur.",style: TextStyle(
                                fontFamily:  'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 1.3,
                              ),),
                            ).paddingOnly(bottom: 0.7.h),
                            Text("\$17,00",style: TextStyle(
                              fontFamily: 'Raleway_bold',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              height: 1.2,
                              letterSpacing: -0.2,
                            ),).paddingOnly(bottom: 1.5.h),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4.sp),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pink',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ).paddingOnly(left: 2.w),
                                Icon(Icons.shopping_bag_outlined,color: AppColor.blueShade,).paddingOnly(left: 17.w),
                              ],),
                          ],),
                      ],),

                    ).paddingOnly(top: 1.h),
                    Container(
                      child:Row(children: [
                        Container(
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.sp),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.containerShadow,
                                offset: Offset(0, 5),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Stack(children: [
                            Image.asset("assets/images/wishlist_pic1.png"),
                            Container(
                              padding: EdgeInsets.all(4.sp),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.delete_outline,color: Colors.orange,),
                            ).paddingOnly(top: 7.5.h,left: 2.w),
                          ],),

                        ).paddingOnly(right: 2.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 45.w,
                              child: Text("Lorem ipsum dolor sit amet consectetur.",style: TextStyle(
                                fontFamily:  'Nunito Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                height: 1.3,
                              ),),
                            ).paddingOnly(bottom: 0.7.h),
                            Text("\$17,00",style: TextStyle(
                              fontFamily: 'Raleway_bold',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.sp,
                              height: 1.2,
                              letterSpacing: -0.2,
                            ),).paddingOnly(bottom: 1.5.h),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4.sp),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pink',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.5.h),
                                  decoration: BoxDecoration(
                                    color: AppColor.grayShade,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                        fontFamily:  'Raleway',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp,
                                        height: 1.3,
                                        letterSpacing: -0.1,
                                      ),

                                    ),
                                  ),

                                ).paddingOnly(left: 2.w),
                                Icon(Icons.shopping_bag_outlined,color: AppColor.blueShade,).paddingOnly(left: 17.w),
                              ],),
                          ],),
                      ],),

                    ).paddingOnly(top: 1.h),


                  ],
                ).paddingSymmetric(horizontal: 4.5.w),
              ),
            ),
          ),
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
                  color: AppColor.blueShade,
                  borderRadius: BorderRadius.circular(8.sp),
                ),
                child: Center(
                  child: Text("Checkout", style:TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp,
                    height: 1.4,
                    color: AppColor.whiteColor,
                  ),),
                ),
              ).paddingOnly(left: 20.w),
            ],),
          ),

        ],),
      ),
    );
  }
}
