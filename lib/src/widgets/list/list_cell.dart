import 'package:chenler_ui/chenler_ui.dart';
import 'package:flutter/material.dart';

/// ListCell is a component that include [ListTile],
/// just handle gesture to change background color.
class CUIListCell extends StatelessWidget {
  CUIListCell({
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
  final String title;
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
    return Column(
      children: [
        Divider(
          height: 1,
          indent: 0,
          color: CUIColor.borderColor,
        ),
        Material(
          color: backgroundColor,
          child: InkWell(
            onTap: onTap,
            onLongPress: onLongPress,
            child: ListTile(
              leading: leading,
              title: CUIText(
                title,
                type: CUITextType.TextContent,
                fontColor: CUIColor.colorContent,
              ),
              subtitle: subtitle,
              trailing: trailing,
              isThreeLine: isThreeLine,
              dense: dense,
              contentPadding: contentPadding,
              enabled: enabled,
              selected: selected,
            ),
          ),
        ),
        // decoration: BoxDecoration(
        //     border: Border(
        //         bottom: BorderSide(
        //       width: 1,
        //       color: CUIColor.borderColor,
        //     ))),
        Divider(
          height: 1,
          indent: 0,
          color: CUIColor.borderColor,
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
