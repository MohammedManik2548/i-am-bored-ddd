import 'package:get/get.dart';
import 'package:i_am_bored/application/use_cases/get_activity_use_case.dart';
import 'package:i_am_bored/domain/repositories/activity_repository.dart';
import 'package:i_am_bored/infastucture/data_source/activity_data_source.dart';
import 'package:i_am_bored/infastucture/repositories/activity_repository.dart';
import 'package:i_am_bored/presentation/controllers/my_home_page_controller.dart';

class HomeBinding extends Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<ActivityDataSource>(() => ActivityDataSourceImpl());
    Get.lazyPut<ActivityRepository>(() => ActivityRepositoryImpl(find()));
    Get.lazyPut(() => GetActivityUseCase(find()));
    Get.lazyPut(() => HomePageController(find()));
  }
}
