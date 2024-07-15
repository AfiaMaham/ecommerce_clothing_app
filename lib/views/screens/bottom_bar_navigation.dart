import 'package:ecommerce_clothing_store_app/Controller/app_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/layouts/home_layout.dart';
import 'package:ecommerce_clothing_store_app/views/layouts/profile_layout.dart';
import 'package:ecommerce_clothing_store_app/views/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:sizer/sizer.dart';

class BottomBarNavigation extends StatelessWidget {
  AppController controller = Get.put(AppController());
  List<Widget> layouts = [
    HomeLayout(),
    Cart(),
    ProfileLayout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(() {
        return layouts[controller.selected.value];
      }),
      extendBody: true,
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          icons: [Icons.home,Icons.shopping_cart, Icons.person],
          //Icons.search,Icons.insert_chart_outlined,
          activeColor: AppColor.deepPurple,
          inactiveColor: AppColor.grayShade3,
          activeIndex: controller.selected.value,
          onTap: (int value) {
            controller.selected.value = value;
          },
          iconSize: 28.sp,
          height: 8.h,
          // notchMargin: 5,
          gapLocation: GapLocation.none,
          // notchSmoothness: NotchSmoothness.defaultEdge,
        );
      }),


    );
  }
}
