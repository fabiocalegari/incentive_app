import 'package:flutter/material.dart';

class BottomNavigation {
  BottomNavigationBar bottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.app_registration), label: "Minhas atividades"),
        BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings_outlined),
            label: "Atividades")
      ],
    );
  }
}
