import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class MyOrders extends StatelessWidget {
  String? text;
  MyOrders({
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 0.7.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: AppColor.grayShade,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.3,
          letterSpacing: -0.2,
          color: AppColor.blueShade,
        ),
      ),
    );
  }
}
