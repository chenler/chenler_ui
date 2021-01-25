import 'package:flutter/material.dart';

/// ListCell is a component that include [ListTile],
/// just handle gesture to change background color.
class ListCell extends StatelessWidget {
  ListCell({
    Key key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.isThreeLine = false,
    this.dense,
    this.contentPadding,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.selected = false,
    this.backgroundColor,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  final bool isThreeLine;
  final bool dense;
  final EdgeInsetsGeometry contentPadding;
  final bool enabled;
  final GestureTapCallback onTap;
  final GestureLongPressCallback onLongPress;
  final bool selected;
  final Color backgroundColor;

  Widget build(BuildContext context) {
    return Material(
        color: backgroundColor == null ? Colors.white : backgroundColor,
        child: InkWell(
          onTap: onTap,
          onLongPress: onLongPress,
          child: ListTile(
            leading: leading,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
            isThreeLine: isThreeLine,
            dense: dense,
            contentPadding: contentPadding,
            enabled: enabled,
            selected: selected,
          ),
        ));
  }
}