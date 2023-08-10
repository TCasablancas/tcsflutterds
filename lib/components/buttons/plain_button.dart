library plain_button;

import 'package:flutter/material.dart';

class PlainButton extends StatefulWidget {
  const PlainButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
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
        child: Text("Inicial"));
  }
}
