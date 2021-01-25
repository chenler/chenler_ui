import 'package:chenler_ui/chenler_ui.dart';
import 'package:example/route/application.dart';
import 'package:example/widgets/list_cell/list_cell.dart';
import 'package:flutter/material.dart';

class ComponentsList extends StatefulWidget {
  @override
  _ComponentsListState createState() => _ComponentsListState();
}

class _ComponentsListState extends State<ComponentsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          layoutView(),
          baseView(),
          mapView(),
        ],
      ),
    );
  }

  Widget layoutView() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, bottom: 10),
            child: Text(
              "布局",
            ),
          ),
          Container(
            child: ListCell(
                title: Text("Container"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/layout_container");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)),
                    top: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("Row"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/layout_flex_row");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("Column"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/layout_flex_column");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("Stack"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/layout_stack");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("Wrap"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/layout_wrap");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
        ],
      ),
    );
  }

  Widget baseView() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, bottom: 10),
            child: Text(
              "基础",
            ),
          ),
          Container(
            child: ListCell(
                title: Text("Color"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/color");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)),
                    top: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("Text"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/text");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)),
                    top: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
          Container(
            child: ListCell(
                title: Text("List"),
                trailing: Icon(Icons.navigate_next),
                backgroundColor: Colors.white,
                onTap: () {
                  Application.router.navigateTo(context, "/list");
                }),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)),
                    top: BorderSide(
                        width: 1, color: Color.fromRGBO(247, 247, 248, 1.0)))),
          ),
        ],
      ),
    );
  }

  Widget mapView() {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(left: 16, bottom: 10),
            child: Text(
              "地图定位",
            ),
          ),
        ]));
  }
}
