import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/activity.dart';
import 'package:incentive_app/mock.dart';

final List<Activity> activities = Mock().mockActivities();
late State _activityScreenState;

class WidgetFactory {
  List<Card> getActivities() {
    List<Card> cards = <Card>[];
    for (int x = 0; x < activities.length; x++) {
      cards.add(Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
            title: Text(activities[x].name),
            subtitle: Text(activities[x].description),
            leading: Switch(
              value: activities[x].ok,
              onChanged: (bool value) {
                _activityScreenState.setState(() {
                  activities[x].ok = value;
                });
              },
            ),
          )));
    }
    return cards;
  }

  BottomNavigationBar getBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration), label: "Minhas atividades"),
        BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: "Atividades")
      ],
    );
  }

  WidgetFactory(State context) {
    _activityScreenState = context;
  }
}
