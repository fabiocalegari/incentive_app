import 'package:incentive_app/activity.dart';
import 'package:incentive_app/period.dart';

class Mock {
  List<Activity> mockActivities() {
    List<Activity> activities = <Activity>[];
    Period period = getPeriod();
    activities.add(Activity(period, 'Lição de Casa',
        'Fazer a lição de casa antes de jogar', false));
    activities
        .add(Activity(period, 'Dormir no horário', 'Dormir às 9h30', false));
    activities.add(Activity(period, 'Fazer a higiene',
        'Escovar os dentes em todas as refeições', false));

    return activities;
  }

  Period getPeriod() {
    return Period(DateTime(2021, 12, 6), DateTime(2021, 12, 12));
  }
}
