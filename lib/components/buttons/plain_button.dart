library plain_button;

import 'package:flutter/material.dart';

class PlainButton extends StatefulWidget {
  @override
  _PlainButtonState createState() => _PlainButtonState();
}

class _PlainButtonState extends State<PlainButton> {
  String title = "";

  void changeTitle() {
    setState(() {
      title = "Mudado...";
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: changeTitle,
        style: TextButton.styleFrom(minimumSize: const Size.fromHeight(50)),
        child: const Text(
          "Mudar",
          style: TextStyle(color: Colors.white),
        ));
  }
}
