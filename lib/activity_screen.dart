import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/widget_factory.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = WidgetFactory(this);
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Lista de atividades",
      home: Scaffold(
        appBar: widgetFactory.getAppBar("Atividades"),
        bottomNavigationBar: widgetFactory.getBottomBar(),
        body: ListView(
          children: widgetFactory.getActivities(),
        ),
      ),
    );
  }
}
