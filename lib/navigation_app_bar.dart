import 'package:flutter/material.dart';
import 'package:tcsflutterds/components/labels/app_bar_label.dart';

class NavigationAppBar extends StatefulWidget {
  final String title;
  final Icon? leadingIcon;
  final Function? leadingAction;

  const NavigationAppBar({
    Key? key,
    required this.title,
    this.leadingIcon,
    this.leadingAction,
  }) : super(key: key);

  @override
  _NavigationAppBar createState() => _NavigationAppBar();
}

class _NavigationAppBar extends State<NavigationAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      centerTitle: false,
      title: AppBarLabel(title: widget.title),
      leading: GestureDetector(
        onTap: () => widget.leadingAction,
        child: widget.leadingIcon,
      ),
    );
  }
}
