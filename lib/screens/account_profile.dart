import 'package:flutter/material.dart';
import 'package:incentive_app/service/user_settings.dart';

import 'register.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    if (UserSettings.isLoggedUser()) {
      Navigator.pushNamed(context, Register.id);
    }
    super.initState();
  }
}
