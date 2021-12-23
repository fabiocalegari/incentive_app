import 'package:flutter/material.dart';

class CustomCard {
  late State _screenState;

  Card switchCustomCard(
      State context, String title, String subTitle, bool cardValue) {
    _screenState = context;
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Switch(
            value: cardValue,
            onChanged: (bool value) {
              _screenState.setState(() {
                cardValue = value;
              });
            },
          ),
        ));
  }
}
