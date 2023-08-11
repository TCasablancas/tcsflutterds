import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarLabel extends StatelessWidget {
  final String title;

  const AppBarLabel({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 26,
      ),
    );
  }
}
