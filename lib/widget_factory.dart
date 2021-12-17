import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/activity.dart';
import 'package:incentive_app/mock.dart';

bool teste = false;
List<Activity> activities = Mock().mockActivities();

class WidgetFactory {
  List<Card> getActivities(State _activityScreenState) {
    List<Card> cards = <Card>[];
    for (int x = 0; x < activities.length; x++) {
      cards.add(Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            title: Text(activities[x].name),
            subtitle: Text("Resumo: " + activities[x].name),
            leading: Switch(
              value: activities[x].ok,
              onChanged: (bool value) {
                _activityScreenState.setState(() {
                  activities[x].ok = value;
                  print("teste");
                });
              },
            ),
          )));
    }
    return cards;
  }
}
