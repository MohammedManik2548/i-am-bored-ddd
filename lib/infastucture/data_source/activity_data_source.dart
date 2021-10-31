import 'package:get/get.dart';
import 'package:i_am_bored/application/exceptions/api_exception.dart';
import 'package:i_am_bored/application/exceptions/network_exception.dart';
import 'package:i_am_bored/infastucture/models/activity_model.dart';

abstract class ActivityDataSource {
  Future<ActivityModel> getActivity();
}

class ActivityDataSourceImpl extends GetConnect implements ActivityDataSource {
  @override
  void onInit() {
    super.onInit();
    baseUrl = "https://www.boredapi.com/api/";
  }

  @override
  Future<ActivityModel> getActivity() async {
    try {
      final response = await get(
        "activity/",
        // decoder: (data) => ActivityModel.fromMap(data),
      );
      if (response.isOk) {
        return ActivityModel.fromJson(response.bodyString!);
      }
      // return Future.error("Network error occurred");
      throw ApiException(
        message: response.statusText!,
        code: response.statusCode!,
      );
    } catch (e) {
      throw NetworkException(message: "A Network Error Occurred");
    }
  }
// return response.body!;
}
