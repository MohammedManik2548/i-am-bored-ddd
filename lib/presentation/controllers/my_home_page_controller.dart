import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/application/dtos/requests/empty_request.dart';
import 'package:i_am_bored/application/use_cases/get_activity_use_case.dart';
import 'package:i_am_bored/domain/entities/activity.dart';

class HomePageController extends GetxController {
  final GetActivityUseCase _getActivityUseCase;

  final activity = Rxn<Activity>();

  HomePageController(this._getActivityUseCase);
  getActivity() async {
    try {
      final response = await _getActivityUseCase.call(EmptyRequest());
      activity.value = response;
    } catch (e) {
      Get.defaultDialog(content: Text(e.toString()));
    }
  }
}
