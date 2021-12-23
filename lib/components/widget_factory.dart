import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/entities/activity.dart';
import 'package:incentive_app/mock.dart';

import 'custom_card.dart';

class WidgetFactory {
  //TODO: Retirar Mock
  final List<Activity> activities = Mock().mockActivities();
  late State _activityScreenState;

  List<Card> getActivities() {
    List<Card> cards = <Card>[];
    for (int x = 0; x < activities.length; x++) {
      cards.add(CustomCard().switchCustomCard(_activityScreenState,
          activities[x].name, activities[x].description, activities[x].ok));
    }
    return cards;
  }

  WidgetFactory(State context) {
    _activityScreenState = context;
  }
}
