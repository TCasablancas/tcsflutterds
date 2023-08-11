import 'package:flutter/material.dart';
import 'package:tcsflutterds/components/labels/app_bar_label.dart';

class NavigationAppBar extends StatefulWidget {
  final String title;
  final bool? isNavigation;
  final Icon? rightIcon;
  final Icon? leadingIcon;
  final Function? rightAction;
  final Function? leadingAction;

  const NavigationAppBar({
    Key? key,
    required this.title,
    this.isNavigation,
    this.rightAction,
    this.rightIcon,
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
