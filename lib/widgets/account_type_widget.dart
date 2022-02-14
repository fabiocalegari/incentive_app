import 'package:flutter/material.dart';
import 'package:incentive_app/model/perfil.dart';

class AccountTypeWidget extends StatelessWidget {
  int value = Perfil.acompanhado.index;

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
                groupValue: value,
                onChanged: (int? value) {
                  this.value = value!;
                },
              ),
            ),
            ListTile(
              title: Text(Perfil.responsavel.name),
              trailing: Radio(
                value: Perfil.responsavel.index,
                groupValue: value,
                onChanged: (int? value) {
                  value = value!;
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    ));
  }
}
