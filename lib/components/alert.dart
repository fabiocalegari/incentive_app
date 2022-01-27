import 'package:flutter/material.dart';

class Alert {
  AlertDialog errorDialog(BuildContext context, String title, String message) {
    final AlertDialog dialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    );
    return dialog;
  }
}
