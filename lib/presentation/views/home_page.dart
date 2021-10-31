import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/presentation/controllers/my_home_page_controller.dart';

class MyHomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Are You Bored?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    await controller.getActivity();
                  },
                  child: Text("Yes")),
              ElevatedButton(onPressed: () {}, child: Text("No")),
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Obx(() => controller.activity.value == null
                      ? Text("Nothing To Do Yet")
                      : Text(controller.activity.value!.activity!)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
