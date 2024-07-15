import 'package:ecommerce_clothing_store_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListViewController extends GetxController {
  var userName = ''.obs;
  List<String> homeNewItemPics = [
    "assets/images/newItem_pic1.png",
    "assets/images/newItem_pic2.png",
    "assets/images/newItem_pic3.png"
  ];
  List<String> homeNewItemPrices = [
    "\$17,00",
    "\$32,00",
    "\$125,00",
  ];
  List<String> profileRecentlyViewedPics = [
    "assets/images/recently_pic1.png",
    "assets/images/recently_pic2.png",
    "assets/images/recently_pic3.png",
    "assets/images/recently_pic4.png",
    "assets/images/recently_pic5.png"
  ];
  List<String> homeFlashSalePics1 = [
    "assets/images/flashSale_pic1.png",
    "assets/images/flashSale_pic4.png",
  ];
  List<String> homeFlashSalePics2 = [
    "assets/images/flashSale_pic2.png",
    "assets/images/flashSale_pic5.png",
  ];
  List<String> homeFlashSalePics3 = [
    "assets/images/flashSale_pic3.png",
    "assets/images/flashSale_pic6.png",
  ];
  List<String> homeTopProductPics = [
    "assets/images/home_top_pic1.png",
    "assets/images/home_top_pic2.png",
    "assets/images/home_top_pic3.png",
    "assets/images/home_top_pic4.png",
    "assets/images/home_top_pic5.png"
  ];
  List<String> homeCategoryPics1 = [
    "assets/images/clothing_pic1.png",
    "assets/images/bags_pic1.png",
    "assets/images/watch_pic1.png"
  ];
  List<String> homeCategoryPics2 = [
    "assets/images/clothing_pic2.png",
    "assets/images/bags_pic2.png",
    "assets/images/watch_pic3.png"
  ];
  List<String> homeCategoryPics3 = [
    "assets/images/clothing_pic3.png",
    "assets/images/bags_pic3.png",
    "assets/images/watch_pic3.png"
  ];
  List<String> homeCategoryPics4 = [
    "assets/images/clothing_pic4.png",
    "assets/images/bags_pic4.png",
    "assets/images/watch_pic4.png"
  ];
  List<String> homeCategoryPics5 = [
    "assets/images/shoes_pic1.png",
    "assets/images/lingerie_pic1.png",
    "assets/images/hoodie_pic1.png"
  ];
  List<String> homeCategoryPics6 = [
    "assets/images/shoes_pic2.png",
    "assets/images/lingerie_pic2.png",
    "assets/images/hoodie_pic2.png"
  ];
  List<String> homeCategoryPics7 = [
    "assets/images/shoes_pic3.png",
    "assets/images/lingerie_pic3.png",
    "assets/images/hoodie_pic3.png"
  ];
  List<String> homeCategoryPics8 = [
    "assets/images/shoes_pic4.png",
    "assets/images/lingerie_pic4.png",
    "assets/images/hoodie_pic4.png"
  ];
  List<String> homeCategoryName1 = ["Clothing", "Bags", "Watch"];
  List<String> homeCategoryName2 = ["Shoes", "Lingerie", "Hoodies"];
  List<String> homeCategoryQuantity1 = ["109", "87", "218"];
  List<String> homeCategoryQuantity2 = ["530", "218", "218"];
  List<String> homeMostPopularPics = [
    "assets/images/mostPopular_pic1.png",
    "assets/images/mostPopular_pic2.png",
    "assets/images/mostPopular_pic3.png"
  ];
  List<String> homeMostPopularRemark = [
    "New",
    "Sale",
    "Hot",
  ];
  List<String> homeForYouPics1 = [
    "assets/images/forYou_pic1.png",
    "assets/images/forYou_pic3.png",
    "assets/images/forYou_pic5.png"
  ];
  List<String> homeForYouPics2 = [
    "assets/images/forYou_pic2.png",
    "assets/images/forYou_pic4.png",
    "assets/images/forYou_pic6.png"
  ];
  List<String> size = ["S", "M", "L", "XL", "XXL"];
  RxList<Color> sizeColor = [
    AppColor.grayShade,
    AppColor.grayShade,
    AppColor.grayShade,
    AppColor.grayShade,
    AppColor.grayShade
  ].obs;
  RxList<Color> sizeTextColor = [
    AppColor.black,
    AppColor.black,
    AppColor.black,
    AppColor.black,
    AppColor.black
  ].obs;
  List<Color> selectColor = [
    AppColor.red,
    AppColor.black,
    Colors.purple,
    AppColor.blueShade,
    Colors.green,
  ];
  RxList<Color> colorBorder = [
    AppColor.whiteColor,
    AppColor.whiteColor,
    AppColor.whiteColor,
    AppColor.whiteColor,
    AppColor.whiteColor
  ].obs;

  List<String> paymentName = [
   "Credit Card",
    "Apple Pay",
    "PayPal",
    "Alipay"
  ];
  RxList<bool> paymentCheck = [
    false,false,false,false
  ].obs;
  List<String> paymentImage = [
    "assets/images/payment_method1.png",
    "assets/images/payment_method2.png",
    "assets/images/payment_method3.png",
    "assets/images/payment_method4.png"
  ];
  List<String> confirmOrder = [
  "Order number",
    "Order total",
    "Delivered to",
    "Delivered by",
    "Date"
  ];
  void updateUserName(String name) {
    userName.value = name;
    orderInfo[2] = name;
  }
  List<String> orderInfo = [
   "123-45678643-4",
    "\$20.45",
    "",
    "Standard",
    "${DateTime.now()}"
  ];

}
