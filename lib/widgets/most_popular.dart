import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/views/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class MostPopular extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 18.5.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: viewController.homeMostPopularPics.length,
          itemBuilder: (context, index) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),

            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
              },
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6.sp),
                        child: Image.asset(
                            viewController.homeMostPopularPics[index]),
                      ),
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
                          viewController.homeMostPopularRemark[index],
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
            ),
          )),
    );
  }
}
