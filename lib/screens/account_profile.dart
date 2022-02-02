import 'package:flutter/material.dart';
import 'package:incentive_app/constants.dart' as cons;
import 'package:incentive_app/model/perfil.dart';
import 'package:incentive_app/service/user_settings.dart';

import 'register.dart';

class AccountProfile extends StatefulWidget {
  const AccountProfile({Key? key}) : super(key: key);
  static String id = 'account_profile';

  @override
  _AccountProfileState createState() => _AccountProfileState();
}

class _AccountProfileState extends State<AccountProfile> {
  int _value = Perfil.acompanhado.index;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Perfil da conta',
          style: TextStyle(color: Colors.white70, fontSize: 20),
        ),
        ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text(Perfil.acompanhado.name),
              trailing: Radio(
                value: Perfil.acompanhado.index,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(Perfil.responsavel.name),
              trailing: Radio(
                value: Perfil.responsavel.index,
                groupValue: _value,
                onChanged: (int? value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, Register.id);
          },
          child: const Text(cons.register),
        ),
      ],
    ));
  }

  @override
  void initState() {
    if (UserSettings.isLoggedUser()) {
      Navigator.pushNamed(context, Register.id);
    }
    super.initState();
  }
}
