import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class TopProducts extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 7.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColor.containerShadow,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Image.asset(viewController.homeTopProductPics[index]),
            ).paddingSymmetric(horizontal: 1.w),
          )),
    );
  }
}
