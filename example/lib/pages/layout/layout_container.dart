import 'package:flutter/material.dart';

class LayoutContainerPage extends StatefulWidget {
  @override
  _LayoutContainerPage createState() => _LayoutContainerPage();
}

class _LayoutContainerPage extends State<LayoutContainerPage> {
  final descTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  final smallTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container布局"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Container宽度100%"),
                containerWidthFull(),
                Text("Container圆角和边框"),
                containerBorderRadius(),
                Text("Container对齐方式"),
                containerAlignment(),
                Text("Container内外边距"),
                containerMarginPadding(),
                Text("Container中使用Align"),
                containerAlignView(),
              ],
            ),
          ),
        ]));
  }

  // Container 宽高
  Widget containerWidthFull() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "height: 200",
            style: descTextStyle,
          ),
          Text(
            "width: double.infinity",
            style: descTextStyle,
          ),
        ],
      ),
    );
  }

  // Container 对齐方式
  Widget containerAlignment() {
    return Container(
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border:
          Border.all(color: Colors.lightBlueAccent, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: [
                Text("alignment: Alignment.center,", style: descTextStyle,),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("topLeft", style: smallTextStyle),
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                alignment: Alignment.topLeft,
              ),
              Container(
                child: Text("topCenter", style: smallTextStyle),
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                alignment: Alignment.topCenter,
              ),
              Container(
                child: Text("topRight", style: smallTextStyle),
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                alignment: Alignment.topRight,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("centerLeft", style: smallTextStyle),
                alignment: Alignment.centerLeft,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("center", style: smallTextStyle),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("centerRight", style: smallTextStyle),
                alignment: Alignment.centerRight,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("bottomLeft", style: smallTextStyle),
                alignment: Alignment.bottomLeft,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("bottomCenter", style: smallTextStyle),
                alignment: Alignment.bottomCenter,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("bottomRight", style: smallTextStyle,),
                alignment: Alignment.bottomRight,
              )
            ],
          )
        ],
      ),
    );
  }

  // Container 圆角和边框
  Widget containerBorderRadius() {
    return Container(
      height: 80,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "decoration: new BoxDecoration(",
            style: descTextStyle,
          ),
          Text(
            "  borderRadius: BorderRadius.all(Radius.circular(8)),",
            style: descTextStyle,
          ),
          Text(
            "  border: new Border.all(width: 1, color: Colors.blue)",
            style: descTextStyle,
          ),
          Text(
            "),",
            style: descTextStyle,
          ),
          // Text("decoration: new BoxDecoration(", style: descTextStyle,),
        ],
      ),
      decoration: new BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: new Border.all(width: 1, color: Colors.blue)),
    );
  }

  Widget containerMarginPadding() {
    return Container(
      color: Colors.lightBlueAccent,
      height: 150,
      width: double.infinity,
      padding: EdgeInsets.only(left: 15),
      alignment: Alignment.topLeft,
      child: Container(
        color: Colors.white38,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("padding: EdgeInsets.only(left: 15)", style: descTextStyle,),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              margin: EdgeInsets.all(15),
              child: Text("margin: EdgeInsets.all(15)"),
            ),
          ],
        ),
      )
    );
  }

  Widget containerAlignView() {
    return Container(
      width: double.infinity,
      height: 400,
      padding: EdgeInsets.all(5),
      color: Colors.lightBlueAccent,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0
        ),
        children: [
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("topLeft", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text("topCenter", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.topRight,
              child: Text("topRight", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("centerLeft", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.center,
              child: Text("center", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("centerRight", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("bottomLeft", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text("bottomCenter", style: smallTextStyle,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white70,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("bottomRight", style: smallTextStyle,),
            ),
          ),
        ],
      ),
    );
  }

}
