import 'package:flutter/material.dart';
import 'package:incentive_app/model/activity.dart';

class CustomCard {
  late final State _screenState;

  Card activityCustomCard(Activity activity) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          title: Text(activity.name),
          subtitle: Text(activity.description),
          leading: Switch(
            value: activity.ok,
            onChanged: (bool value) {
              _screenState.setState(() {
                activity.ok = value;
              });
            },
          ),
        ));
  }

  CustomCard(this._screenState);
}
