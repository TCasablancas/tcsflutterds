import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  final String title;

  const MainAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: MainAppBar(title: title),
    );
  }
}
