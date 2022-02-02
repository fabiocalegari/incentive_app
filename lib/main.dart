import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:incentive_app/screens/activity_screen.dart';
import 'package:incentive_app/screens/register.dart';

import 'screens/account_profile.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Incentive());
}

class Incentive extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AccountProfile.id, //initialScreen(),
      routes: {
        AccountProfile.id: (context) => AccountProfile(),
        Register.id: (context) => Register(),
        ActivityScreen.id: (context) => ActivityScreen(),
      },
    );
  }

  String initialScreen() {
    User? user = _auth.currentUser;
    if (user != null) {
      return ActivityScreen.id;
    } else {
      return Register.id;
    }
  }
}
