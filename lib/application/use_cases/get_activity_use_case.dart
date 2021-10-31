import 'package:i_am_bored/application/dtos/requests/empty_request.dart';
import 'package:i_am_bored/application/use_cases/base_use_case.dart';
import 'package:i_am_bored/domain/entities/activity.dart';
import 'package:i_am_bored/domain/repositories/activity_repository.dart';

class GetActivityUseCase implements BaseUseCase<Activity, EmptyRequest> {
  final ActivityRepository _activityRepository;

  GetActivityUseCase(this._activityRepository);

  @override
  Future<Activity> call(EmptyRequest request) {
    return _activityRepository.getActivity();
  }
}
