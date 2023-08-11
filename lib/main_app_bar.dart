import 'package:flutter/material.dart';
import 'package:tcsflutterds/components/labels/app_bar_label.dart';

class MainAppBar extends StatelessWidget {
  final String title;

  const MainAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      centerTitle: false,
      title: AppBarLabel(title: title),
    );
  }
}
