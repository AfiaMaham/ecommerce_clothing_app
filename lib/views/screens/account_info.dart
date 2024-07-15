import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/Controller/listView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/create_account.dart';
import 'package:ecommerce_clothing_store_app/views/screens/order_confirmation_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AccountInfo extends StatelessWidget {
  TextEditingController dateController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  AppController controller = Get.put(AppController());
ListViewController listViewController= Get.put(ListViewController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
      body: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Name",
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              height: 1.5,
              color: Color(0xFF000000),
            ),
          ).paddingOnly(top: 12.h,left: 6.w),
        ),
        Container(
          height: 5.5.h,
          width: 83.w,
          child: TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.TFFColor,
              hintText: "Enter your name",
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
          ).paddingOnly(top: 0.3.h),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Account Number",
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              height: 1.5,
              color: Color(0xFF000000),
            ),
          ).paddingOnly(top: 1.h,left: 6.w),
        ),
        Container(
          height: 5.5.h,
          width: 83.w,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.TFFColor,
              hintText: "Enter your account number",
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
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Security code",
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              height: 1.5,
              color: Color(0xFF000000),
            ),
          ).paddingOnly(top: 1.h,left: 6.w),
        ),
        Container(
          height: 5.5.h,
          width: 83.w,
          child:  Obx((){
            return TextFormField(
              keyboardType: TextInputType.number,
              obscureText: controller.isHidden.value?false:true,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.TFFColor,
                hintText: "Security code",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.4,
                  color: AppColor.hintColor,
                ),
                suffixIcon:  GestureDetector(
                    onTap: (){
                      controller.isHidden.value = !controller.isHidden.value;
                    },
                    child: Icon(controller.isHidden.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,size: 14.sp,)
                ),                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.sp),
                  borderSide: BorderSide.none
              ),
              ),
            );
          }),

        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Expiry date",
            style: TextStyle(
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              height: 1.5,
              color: Color(0xFF000000),
            ),
          ).paddingOnly(top: 1.h,left: 6.w),
        ),
        Container(
          height: 5.5.h,
          width: 83.w,
          child:  Obx(() {
            dateController.text = controller.selectedDate.value;
            return TextFormField(
              controller: dateController,
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  String formattedDate =
                      "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                  controller.updateSelectedDate(formattedDate);
                }
              },
              decoration: InputDecoration(
                hintText: "Expiry date",
                hintStyle: TextStyle(
                    color: AppColor.grayShade3,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w500),
                contentPadding:
                EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                suffixIcon: Icon(
                  Icons.calendar_month_outlined,
                  color: AppColor.grayShade,
                  size: 15.sp,
                ),
                filled: true,
                fillColor: AppColor.grayLight,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
              ),
            );
          }),
      
        ).paddingOnly(top: 2.h),
        GestureDetector(
            onTap: (){
              listViewController.updateUserName(nameController.text);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderConfirmationScreen()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.w,vertical: 1.5.h),
            decoration: BoxDecoration(
              color: AppColor.blueShade,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: Text(
              'Confirm and pay',
              style:TextStyle(
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w300,
                fontSize: 15.sp,
                height: 1.4,
                color: AppColor.whiteColor,
              ),
            ),

          ).paddingOnly(top: 16.h),
        ),
      
      ],).paddingSymmetric(horizontal: 6.w),
      ),
    );
  }
}
