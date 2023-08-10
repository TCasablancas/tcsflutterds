library plain_button;

import 'package:flutter/material.dart';

class PlainButton extends StatefulWidget {
  final String title;
  final void buttonTap;

  const PlainButton({
    Key? key,
    required this.title,
    required this.buttonTap,
  }) : super(key: key);

  @override
  _PlainButtonState createState() => _PlainButtonState();
}

class _PlainButtonState extends State<PlainButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          onPressed: () {
            widget.buttonTap;
          },
          child: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ));
  }
}
