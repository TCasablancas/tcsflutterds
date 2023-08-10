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
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey)),
        child: Text("Inicial"));
  }
}
