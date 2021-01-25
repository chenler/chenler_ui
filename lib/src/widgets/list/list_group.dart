import 'package:chenler_ui/chenler_ui.dart';
import 'package:chenler_ui/src/widgets/list/list_item.dart';
import 'package:flutter/material.dart';

class CUIListGroup extends StatelessWidget {
  CUIListGroup(
    this.groupName, {
    Key key,
    this.children,
  }) : super(key: key);

  final String groupName;
  final List<CUIListItem> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(top: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 14, bottom: 4),
            child: CUIText(
              groupName,
              type: CUITextType.TextContent,
              fontColor: CUIColor.colorSub,
            ),
          ),
          Divider(height: 1, indent: 0, color: CUIColor.borderColor,),
          ...children
        ],
      ),
    );
  }

}
