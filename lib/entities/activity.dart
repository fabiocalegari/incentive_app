import 'package:incentive_app/entities/period.dart';

class Activity {
  late Period period;
  late String name;
  late String description;
  late bool ok;

  Activity(this.period, this.name, this.description, this.ok);
}
