import 'package:incentive_app/activity.dart';
import 'package:incentive_app/period.dart';

class Mock {
  List<Activity> mockActivities() {
    List<Activity> activities = <Activity>[];
    Period period = Period(DateTime(2021, 12, 6), DateTime(2021, 12, 6));
    activities.add(Activity(period, "Fazer Lição de Casa", false));
    activities.add(Activity(period, "Dormir no horário", false));
    activities.add(Activity(period, "Fazer a higiene", false));

    return activities;
  }
}
