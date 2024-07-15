import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/views/screens/account_info.dart';
import 'package:ecommerce_clothing_store_app/views/screens/delivery_screen.dart';
import 'package:ecommerce_clothing_store_app/views/screens/payment_method.dart';
import 'package:ecommerce_clothing_store_app/views/screens/shipping_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_tracker/progress_tracker.dart';
import 'package:sizer/sizer.dart';

class ProgressTrackerScreen extends StatelessWidget {
  AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Obx((){
            return ProgressTracker(
              currentIndex: controller.shippingIndex.value,
              statusList: controller.statusList,
              activeColor: Colors
                  .green,
              inActiveColor: Colors
                  .grey,
            ).paddingOnly(top: 2.h);
          }),
          Expanded(
            child: Obx(() {
              switch (controller.shippingIndex.value) {
                case 0:
                  return ShippingAddressScreen(); // Replace with your first index widget
                case 1:
                  return DeliveryScreen(); // Replace with your second index widget
                case 2:
                  return PaymentMethod();
                case 3:
                  return AccountInfo();
                default:
                  return Container();
              }
            }),
          ),

        ],),
      ),
    );
  }
}
