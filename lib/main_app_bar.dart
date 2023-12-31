import 'package:flutter/material.dart';
import 'package:tcsflutterds/components/labels/app_bar_label.dart';

class MainAppBar extends StatefulWidget {
  final String title;
  final Icon? rightIcon;
  final Function? rightAction;

  const MainAppBar({
    Key? key,
    required this.title,
    this.rightAction,
    this.rightIcon,
  }) : super(key: key);

  @override
  _MainAppBar createState() => _MainAppBar();
}

class _MainAppBar extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      centerTitle: false,
      title: AppBarLabel(title: widget.title),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () => widget.rightAction,
            child: widget.rightIcon,
          ),
        ),
      ],
    );
  }
}
