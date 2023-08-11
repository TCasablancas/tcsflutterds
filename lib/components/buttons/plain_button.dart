library plain_button;

import 'package:flutter/material.dart';

class PlainButton extends StatefulWidget {
  final String title;
  final Function buttonTap;
  final bool hasPadding;
  final bool isActive;

  const PlainButton({
    Key? key,
    required this.title,
    required this.buttonTap,
    required this.hasPadding,
    required this.isActive,
  }) : super(key: key);

  @override
  _PlainButtonState createState() => _PlainButtonState();
}

class _PlainButtonState extends State<PlainButton> {
  var activeColor = MaterialStateProperty.all<Color>(Colors.blueAccent);
  var unactiveColor = MaterialStateProperty.all<Color>(
      const Color.fromARGB(221, 138, 138, 138));

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: widget.hasPadding
            ? const EdgeInsets.all(16)
            : const EdgeInsets.all(0),
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
                backgroundColor: widget.isActive ? activeColor : unactiveColor,
              ),
              onPressed: () {
                widget.isActive ? widget.buttonTap : null;
              },
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            )));
  }
}
