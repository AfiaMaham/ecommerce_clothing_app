import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PageViewController extends GetxController {
  RxInt activeIndex = 0.obs;
  List<String> CardPics = [
    "assets/images/helloCard_pic1.png",
    "assets/images/helloCard_pic2.png"
  ];
  List<String> CardBoldText = ["Hello", "Ready?"];
  List<String> CardText = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non consectetur turpis. Morbi eu eleifend lacus.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  ];

  void onPageChanged(int index) {
    activeIndex.value = index;
  }

}
