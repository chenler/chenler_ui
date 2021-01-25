import 'package:chenler_ui/chenler_ui.dart';
import 'package:example/route/application.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            color: CUIColor.backgroundColor,
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Column(
              children: [listView()],
            ),
          )
        ],
      ),
    );
  }

  Widget listView() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CUIListCell(
              title: "CUIListCell",
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Application.router.navigateTo(context, "/list");
              }),
          CUIListGroup(
            "分组组名",
            children: [
              CUIListItem(
                title: "CUIListItem 1",
                trailing: Icon(Icons.navigate_next),
              ),
              CUIListItem(
                title: "CUIListItem 2",
                trailing: Icon(Icons.navigate_next),
              )
            ],
          ),
          CUIListGroup(
            "分组2",
            children: [
              CUIListItem(
                title: "CUIListItem 1",
              ),
              CUIListItem(
                title: "CUIListItem 2",
              )
            ],
          )
        ],
      ),
    );
  }

  void click() {
    print("hello");
  }
}
