import 'package:i_am_bored/domain/entities/activity.dart';

abstract class ActivityRepository {
  Future<Activity> getActivity();
}
