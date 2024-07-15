import 'package:ecommerce_clothing_store_app/views/screens/account_info.dart';
import 'package:ecommerce_clothing_store_app/views/screens/delivery_screen.dart';
import 'package:ecommerce_clothing_store_app/views/screens/payment_method.dart';
import 'package:ecommerce_clothing_store_app/views/screens/start.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Start(),

      );
    });
  }
}
