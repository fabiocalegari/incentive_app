import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/components/incentive_bottom_navigation.dart';
import 'package:incentive_app/components/widget_factory.dart';
import 'package:incentive_app/mock.dart';
import 'package:incentive_app/service/user_settings.dart';
import 'package:intl/intl.dart';

class ActivityScreen extends StatefulWidget {
  static String id = 'activity';
  ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    User? currentUser = UserSettings.currentUser();

    WidgetFactory widgetFactory = WidgetFactory(this);
    // TODO: Retirar as linhas abaixo
    DateTime from = Mock().getPeriod().from;
    DateTime to = Mock().getPeriod().to;

    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Lista de atividades',
      home: Scaffold(
        appBar: getAppBar(DateFormat('dd/MM').format(from) +
            ' - ' +
            DateFormat('dd/MM').format(to)),
        bottomNavigationBar: BottomNavigation().bottomBar(),
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
