import 'package:ecommerce_clothing_store_app/Controller/pageView_controller.dart';
import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:ecommerce_clothing_store_app/views/screens/bottom_bar_navigation.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CardWelcomeScreen extends StatelessWidget {
  PageViewController pageController = Get.put(PageViewController());
   PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/login_pic1.png",
                ),
                PageView.builder(
                  controller: _controller,
                  onPageChanged: (int index) {
                    pageController.onPageChanged(index);
                  },
                  itemCount: pageController.CardPics.length,
                  itemBuilder: (context, index) => Center(
                    child: Card(
                      elevation: 2,
                      child: Container(
                        height: 71.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.sp),
                                  topRight: Radius.circular(12.sp),
                                ),
                                child: Image.asset(
                                  pageController.CardPics[index],
                                )),
                            Text(
                              pageController.CardBoldText[index],
                              style: TextStyle(
                                fontFamily: 'Raleway_bold',
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                height: 1.3,
                                letterSpacing: -0.3,
                              ),
                            ).paddingOnly(top: 4.h),
                            Text(
                              pageController.CardText[index],
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                                height: 1.4,
                              ),
                            ).paddingSymmetric(
                                vertical: 1.5.h, horizontal: 10.w),
                            GestureDetector(
                              onTap: () {
                                if (pageController.activeIndex.value ==
                                    pageController.CardPics.length - 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BottomBarNavigation()));
                                } else {
                                  _controller.nextPage(
                                      duration: Duration(milliseconds: 100),
                                      curve: Curves.bounceIn);
                                }
                              },
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 1.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.sp),
                                      color: AppColor.blueShade),
                                  child: Center(
                                    child: Text(
                                      pageController.activeIndex.value ==
                                              pageController.CardPics.length - 1
                                          ? "Next"
                                          : "Let\'s start",
                                      style: TextStyle(
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14.sp,
                                          height: 1.4,
                                          color: AppColor.whiteColor),
                                    ),
                                  ),
                                ).paddingOnly(top:pageController.activeIndex.value ==
                                    pageController.CardPics.length - 1? 2.h:4.h),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    pageController.CardPics.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Obx(() => Container(
                                padding: EdgeInsets.all(7.sp),
                                decoration: BoxDecoration(
                                  color:
                                      pageController.activeIndex.value == index
                                          ? AppColor.blueShade
                                          : AppColor.grayShade,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              )),
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
