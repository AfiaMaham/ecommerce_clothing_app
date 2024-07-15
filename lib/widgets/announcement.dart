import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Announcement extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 0.7.h, horizontal: 2.5.w),
      decoration: BoxDecoration(
        color: AppColor.TFFColor,
        borderRadius: BorderRadius.circular(7.sp),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Announcement',
              style: TextStyle(
                fontFamily: 'Raleway_bold',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 1.3,
                letterSpacing: -0.1,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70.w,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit luctus libero ac vulputate.',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                    color: AppColor.blueShade,
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward,
                  color: AppColor.whiteColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
