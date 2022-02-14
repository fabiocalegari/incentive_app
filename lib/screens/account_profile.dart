import 'package:flutter/material.dart';
import 'package:incentive_app/constants.dart' as cons;
import 'package:incentive_app/service/user_settings.dart';
import 'package:incentive_app/widgets/account_type_widget.dart';

import 'register.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);
  static String id = 'account_profile';

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          children: [
            AccountTypeWidget(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Register.id);
              },
              child: const Text(cons.register),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    if (UserSettings.isLoggedUser()) {
      Navigator.pushNamed(context, Register.id);
    }
    super.initState();
  }
}
