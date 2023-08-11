library plain_button;

import 'package:flutter/material.dart';

class PlainButton extends StatefulWidget {
  final String title;
  final Function buttonTap;
  final bool hasPadding;

  PlainButton({
    Key? key,
    required this.title,
    required this.buttonTap,
    required this.hasPadding,
  }) : super(key: key);

  @override
  _PlainButtonState createState() => _PlainButtonState();
}

class _PlainButtonState extends State<PlainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.hasPadding ? const EdgeInsets.all(16) : const EdgeInsets.all(0), 
      child: SizedBox(
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
      );
  }
}
