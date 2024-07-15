import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class JustForYou extends StatelessWidget {
  ListViewController viewController=Get.put(ListViewController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.h,
      child: ListView.builder(
        itemCount: viewController.homeForYouPics1.length,
        itemBuilder: (context,index)=>Row(children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
            },
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      padding:  EdgeInsets.all(4.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.containerShadow,
                            offset: Offset(0, 5),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Image.asset(viewController.homeForYouPics1[index]),
                    ),
                  ),
                  Container(
                    width: 35.w,
                    child: Text("Lorem ipsum dolor sit amet consectetur.",
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,),),
                  ),
                  Text(
                    "\$17,00" ,
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 1.2,
                      letterSpacing: -0.2,
                    ),
                  ),   ],),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen()));
            },
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Container(
                      padding:  EdgeInsets.all(4.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.containerShadow,
                            offset: Offset(0, 5),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Image.asset(viewController.homeForYouPics2[index]),
                    ),
                  ),
                  Container(
                    width: 35.w,
                    child: Text("Lorem ipsum dolor sit amet consectetur.",
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        height: 1.3,),),
                  ),
                  Text(
                    "\$17,00" ,
                    style: TextStyle(
                      fontFamily: 'Raleway_bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      height: 1.2,
                      letterSpacing: -0.2,
                    ),
                  ),   ],),
            ),
          ),
        ],),
      ),
    );
  }
}
