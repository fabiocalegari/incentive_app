import 'package:flutter/material.dart';

class IncentiveAppBar {
  AppBar appBar(String title) {
    return AppBar(
      leading: const Icon(Icons.arrow_back),
      title: Text(title),
      actions: const [Icon(Icons.arrow_forward)],
    );
  }
}
