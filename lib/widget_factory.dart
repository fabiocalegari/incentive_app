import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/activity.dart';
import 'package:incentive_app/mock.dart';

class WidgetFactory {
  List<Card> getActivities() {
    List<Activity> activities = Mock().mockActivities();
    List<Card> cards = <Card>[];
    for (int x = 0; x < activities.length; x++) {
      cards.add(Card(
        child: Text(activities[x].name),
      ));
    }
    return cards;
  }
}
