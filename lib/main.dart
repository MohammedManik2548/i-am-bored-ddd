import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/presentation/_binding/home_bainding.dart';
import 'package:i_am_bored/presentation/views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      home: MyHomePage(),
    );
  }
}
