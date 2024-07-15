import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:progress_tracker/progress_tracker.dart';

class AppController extends GetxController {
  Rx<bool> isHidden = true.obs;
  Rx<bool> isHidden1 = true.obs;
  Rx<int> selected = 0.obs;
  Rx<int> shippingIndex = 0.obs;
  var selectedDate = ''.obs;
  Rx<bool> liked = true.obs;
  RxInt quantity = 1.obs;
  void updateSelectedDate(String date) {
    selectedDate.value = date;
  }

  final List<Status> statusList = [
    Status(name: 'Address', icon: Icons.home_outlined),
    Status(name: 'Delivery', icon: Icons.local_shipping_outlined),
    Status(name: 'Payment', icon: Icons.payments),
    Status(name: 'Confirm', icon: Icons.check_circle),
  ];

  void nextButton() {
    shippingIndex.value++;
    statusList[shippingIndex.value].active = true;
  }

  RxList<bool> deliveryCheck = [false, false, false].obs;
  RxString selectedDeliveryOption = ''.obs; // Track selected delivery option

  void selectDeliveryOption(int index) {
    for (int i = 0; i < deliveryCheck.length; i++) {
      deliveryCheck[i] = i == index;
    }
    deliveryCheck.refresh();

    // Update selected delivery option
    switch (index) {
      case 0:
        selectedDeliveryOption.value = 'Free';
        break;
      case 1:
        selectedDeliveryOption.value = 'Standard';
        break;
      case 2:
        selectedDeliveryOption.value = 'Rush';
        break;
      default:
        selectedDeliveryOption.value = 'Standard'; // Default to Standard
        break;
    }
  }
}
