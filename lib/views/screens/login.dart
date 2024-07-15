import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/card_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
class Login extends StatelessWidget {
  AppController controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        Stack(children: [
          Image.asset("assets/images/login_pic2.png"),
          Image.asset("assets/images/login_pic1.png"),
        ],).paddingOnly(right: 18.w),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Login',
            style: TextStyle(
             fontFamily:  'Raleway_bold',
              fontWeight: FontWeight.w700,
              fontSize: 33.sp,
              letterSpacing: -0.5,
            ),
          ).paddingOnly(left: 4.w),
        ).paddingOnly(top: 6.h),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Good to see you back!  🖤',
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w300,
              fontSize: 13.sp,
              height: 1.8,
            ),
          ).paddingOnly(left: 4.w),
        ),

        Stack(children: [
          Image.asset("assets/images/login_pic4.png").paddingOnly(left: 29.w,top: 5.h),
          Column(children: [
            Container(
              height: 5.5.h,
              width: 90.w,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.TFFColor,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    height: 1.4,
                    color: AppColor.hintColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.sp),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ).paddingOnly(top: 6.h),
            Container(
              height: 5.5.h,
              width: 90.w,
              child: Obx((){
                return               TextFormField(
                  obscureText: controller.isHidden1.value?false:true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.TFFColor,
                    hintText: "Password",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.4,
                      color: AppColor.hintColor,
                    ),
                    suffixIcon:  GestureDetector(
                        onTap: (){
                          controller.isHidden1.value = !controller.isHidden1.value;
                        },
                        child: Icon(controller.isHidden1.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,size: 14.sp,)
                    ),                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.sp),
                      borderSide: BorderSide.none
                  ),
                  ),
                );

              }),
            ).paddingOnly(top: 1.5.h),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CardWelcomeScreen()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 38.w,vertical: 1.5.h),
                decoration: BoxDecoration(
                  color: AppColor.blueShade,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'Next',
                  style:TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w300,
                    fontSize: 15.sp,
                    height: 1.4,
                    color: AppColor.whiteColor,
                  ),
                ),

              ).paddingOnly(top: 6.h),
            ),
          ],).paddingOnly(top: 2.h),


        ],),
      ],)

    );
  }
}
