import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/components/incentive_app_bar.dart';
import 'package:incentive_app/components/incentive_bottom_navigation.dart';
import 'package:incentive_app/components/widget_factory.dart';
import 'package:incentive_app/mock.dart';
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
    // TODO: Retirar as linhas abaixo
    DateTime from = Mock().getPeriod().from;
    DateTime to = Mock().getPeriod().to;

    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Lista de atividades",
      home: Scaffold(
        appBar: IncentiveAppBar().appBar(DateFormat('dd/MM').format(from) +
            ' - ' +
            DateFormat('dd/MM').format(to)),
        bottomNavigationBar: BottomNavigation().bottomBar(),
        body: ListView(
          children: widgetFactory.getActivities(),
        ),
      ),
    );
  }
}
