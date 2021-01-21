import 'package:flutter/material.dart';

class LayoutFlexRowPage extends StatefulWidget {
  @override
  _LayoutFlexRowPage createState() => _LayoutFlexRowPage();
}

class _LayoutFlexRowPage extends State<LayoutFlexRowPage> {
  final descTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  final smallTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row布局"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Row行布局"),
                rowLayout(),
                Text("Row左右排版方向"),
                rowTextDirectionLayout("textDirection: TextDirection.ltr", TextDirection.ltr),
                rowTextDirectionLayout("textDirection: TextDirection.rtl", TextDirection.rtl),
                Container(
                  height: 16,
                ),
                Text("Row主轴水平方向排列方式"),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.start", MainAxisAlignment.start),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.center", MainAxisAlignment.center),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.end", MainAxisAlignment.end),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceAround\n将主轴空白区域均分，使中间各个子控件间距相等，首尾子控件间距为中间子控件间距的一半", MainAxisAlignment.spaceAround),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceBetween\n将主轴空白位置进行均分，排列子元素，手尾没有空隙", MainAxisAlignment.spaceBetween),
                rowMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceEvenly\n将主轴空白区域均分，使各个子控件间距相等", MainAxisAlignment.spaceEvenly),
                Container(
                  height: 16,
                ),
                Text("Row主轴水平方向排列方式"),
                rowCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.start", CrossAxisAlignment.start),
                rowCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.center", CrossAxisAlignment.center),
                rowCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.center", CrossAxisAlignment.end),
              ],
            ),
          ),
        ]));
  }

  // row
  Widget rowLayout() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("1"),
              ),
              Container(
                width: 80,
                height: 70,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("2"),
              ),
              Container(
                width: 70,
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("3"),
              )
            ],
          )
        ],
      ),
    );
  }

  // row左右排版方向
  Widget rowTextDirectionLayout(String configStr, TextDirection f) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            configStr,
            style: descTextStyle,
          ),
          Row(
            textDirection: f,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("1"),
              ),
              Container(
                width: 80,
                height: 70,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("2"),
              ),
              Container(
                width: 70,
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("3"),
              )
            ],
          )
        ],
      ),
    );
  }

  // row 主轴水平方向排列方式
  Widget rowMainAxisAlignmentLayout(String configStr, MainAxisAlignment f) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            configStr,
            style: descTextStyle,
          ),
          Row(
            mainAxisAlignment: f,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("1"),
              ),
              Container(
                width: 80,
                height: 70,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("2"),
              ),
              Container(
                width: 70,
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("3"),
              )
            ],
          )
        ],
      ),
    );
  }

  // row 主轴水平方向排列方式
  Widget rowCrossAxisAlignmentLayout(String configStr, CrossAxisAlignment f) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            configStr,
            style: descTextStyle,
          ),
          Row(
            crossAxisAlignment: f,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("1"),
              ),
              Container(
                width: 80,
                height: 70,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("2"),
              ),
              Container(
                width: 70,
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Text("3"),
              )
            ],
          )
        ],
      ),
    );
  }

  // column上下排版方向
  Widget columnVerticalDirectionLayout(String configStr, VerticalDirection f) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            configStr,
            style: descTextStyle,
          ),
          Row(
            verticalDirection: VerticalDirection.down,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
                margin: EdgeInsets.all(5),
              ),
              Container(
                width: 80,
                height: 70,
                color: Colors.white,
                margin: EdgeInsets.all(5),
              ),
              Container(
                width: 70,
                height: 60,
                color: Colors.white,
                margin: EdgeInsets.all(5),
              )
            ],
          )
        ],
      ),
    );
  }
}
