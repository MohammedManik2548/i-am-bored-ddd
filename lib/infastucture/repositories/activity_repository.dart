import 'package:i_am_bored/domain/entities/activity.dart';
import 'package:i_am_bored/domain/repositories/activity_repository.dart';
import 'package:i_am_bored/infastucture/data_source/activity_data_source.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityDataSource _activityDataSource;

  ActivityRepositoryImpl(this._activityDataSource);
  @override
  Future<Activity> getActivity() {
    return _activityDataSource.getActivity();
  }
}
