import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/mock.dart';
import 'package:incentive_app/widget_factory.dart';
import 'package:intl/intl.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetFactory widgetFactory = WidgetFactory(this);
    DateTime from = Mock().getPeriod().from;
    DateTime to = Mock().getPeriod().to;

    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Lista de atividades",
      home: Scaffold(
        appBar: getAppBar(DateFormat('dd/MM').format(from) +
            ' - ' +
            DateFormat('dd/MM').format(to)),
        bottomNavigationBar: widgetFactory.getBottomBar(),
        body: ListView(
          children: widgetFactory.getActivities(),
        ),
      ),
    );
  }

  AppBar getAppBar(String title) {
    AppBar appBar = AppBar(
      leading: const Icon(Icons.arrow_back),
      title: Text(title),
      actions: const [Icon(Icons.arrow_forward)],
    );
    return appBar;
  }
}
