import 'package:flutter/material.dart';

class LayoutWrapPage extends StatefulWidget {
  @override
  _LayoutWrapPage createState() => _LayoutWrapPage();
}

class _LayoutWrapPage extends State<LayoutWrapPage> {
  final descTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  final smallTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wrap布局"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wrap布局"),
                wrapLayoutView(),
                Container(
                  height: 16,
                ),
                Text("Wrap spacing 20 水平方向间隔"),
                wrapSpacingLayoutView(),
                Container(
                  height: 16,
                ),
                Text("Wrap runSpacing 垂直方向间隔"),
                wrapRunSpacingLayoutView(),
                Container(
                  height: 16,
                ),
                Text("Wrap alignment 水平方向对齐方式"),
                Container(
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      wrapAlignmentLayoutView("alignment: WrapAlignment.start", WrapAlignment.start),
                      wrapAlignmentLayoutView("alignment: WrapAlignment.center", WrapAlignment.center),
                      wrapAlignmentLayoutView("alignment: WrapAlignment.end", WrapAlignment.end),
                      wrapAlignmentLayoutView("alignment: WrapAlignment.spaceBetween", WrapAlignment.spaceBetween),
                      wrapAlignmentLayoutView("alignment: WrapAlignment.spaceAround", WrapAlignment.spaceAround),
                      wrapAlignmentLayoutView("alignment: WrapAlignment.spaceEvenly", WrapAlignment.spaceEvenly)
                    ],
                  ),
                ),
                Container(
                  height: 16,
                ),
                Text("Wrap runAlignment 垂直方向对齐方式"),
                Container(
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: Column(
                    children: [
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.start", WrapAlignment.start),
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.center", WrapAlignment.center),
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.end", WrapAlignment.end),
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.spaceBetween", WrapAlignment.spaceBetween),
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.spaceAround", WrapAlignment.spaceAround),
                      wrapRunAlignmentLayoutView("alignment: WrapAlignment.spaceEvenly", WrapAlignment.spaceEvenly)
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }

  Widget wrapLayout() {
    return Wrap(
      children: <Widget>[
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
          label: new Text('1.Hamilton'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
          label: new Text('2.Lafayette'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
          label: new Text('3.Mulligan'),
        ),
        new Chip(
          avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
          label: new Text('4.Laurens'),
        ),
      ],
    );
  }

  Widget wrapLayoutView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: wrapLayout(),
    );
  }

  Widget wrapSpacingLayoutView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: Wrap(
        spacing: 20,
        children: <Widget>[
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
            label: new Text('1.Hamilton'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
            label: new Text('2.Lafayette'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
            label: new Text('3.Mulligan'),
          ),
          new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
            label: new Text('4.Laurens'),
          ),
        ],
      ),
    );
  }

  Widget wrapRunSpacingLayoutView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("runSpacing: 10"),
          Wrap(
            runSpacing: 10,
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('1.Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('2.Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('3.Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('4.Laurens'),
              ),
            ],
          ),
        ],
      )
    );
  }

  Widget wrapAlignmentLayoutView(String desc, WrapAlignment f) {
    return Container(
        width: double.infinity,
        color: Colors.lightBlueAccent,
        height: 180,
        margin: EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            Text(desc),
            Container(
              color: Colors.white70,
              height: 150,
              child:  Wrap(
                spacing: 8.0, // 主轴(水平)方向间距
                runSpacing: 4.0,
                alignment: f,
                children: <Widget>[
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                    label: new Text('1.Hamilton'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                    label: new Text('2.Lafayette'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                    label: new Text('3.Mulligan'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                    label: new Text('4.Laurens'),
                  ),
                ],
              ),
            ),

          ],
        )
    );
  }

  Widget wrapRunAlignmentLayoutView(String desc, WrapAlignment f) {
    return Container(
        width: double.infinity,
        color: Colors.lightBlueAccent,
        height: 180,
        margin: EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            Text(desc),
            Container(
              color: Colors.white70,
              height: 150,
              child:  Wrap(
                spacing: 8.0, // 主轴(水平)方向间距
                runSpacing: 4.0,
                runAlignment: f,
                children: <Widget>[
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                    label: new Text('1.Hamilton'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                    label: new Text('2.Lafayette'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                    label: new Text('3.Mulligan'),
                  ),
                  new Chip(
                    avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                    label: new Text('4.Laurens'),
                  ),
                ],
              ),
            ),

          ],
        )
    );
  }
}
