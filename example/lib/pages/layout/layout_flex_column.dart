import 'package:flutter/material.dart';

class LayoutFlexColumnPage extends StatefulWidget {
  @override
  _LayoutFlexColumnPage createState() => _LayoutFlexColumnPage();
}

class _LayoutFlexColumnPage extends State<LayoutFlexColumnPage> {
  final descTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  final smallTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Column布局"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Column列布局"),
                columnLayout(),
                Text("Column上下排版方向"),
                columnVerticalDirectionLayout("verticalDirection: VerticalDirection.down", VerticalDirection.down),
                columnVerticalDirectionLayout("verticalDirection: VerticalDirection.up", VerticalDirection.up),
                Container(
                  height: 16,
                ),
                Text("Column主轴竖直方向排列方式"),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.start", MainAxisAlignment.start),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.center", MainAxisAlignment.center),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.end", MainAxisAlignment.end),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceAround\n将主轴空白区域均分，使中间各个子控件间距相等，首尾子控件间距为中间子控件间距的一半", MainAxisAlignment.spaceAround),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceBetween\n将主轴空白位置进行均分，排列子元素，手尾没有空隙", MainAxisAlignment.spaceBetween),
                columnMainAxisAlignmentLayout("mainAxisAlignment: MainAxisAlignment.spaceEvenly\n将主轴空白区域均分，使各个子控件间距相等", MainAxisAlignment.spaceEvenly),
                Container(
                  height: 16,
                ),
                Text("column主轴水平方向排列方式"),
                columnCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.start", CrossAxisAlignment.start),
                columnCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.center", CrossAxisAlignment.center),
                columnCrossAxisAlignmentLayout("crossAxisAlignment: CrossAxisAlignment.center", CrossAxisAlignment.end),
              ],
            ),
          ),
        ]));
  }

  // row
  Widget columnLayout() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
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
          Column(
            verticalDirection: f,
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

  // column 主轴竖直方向排列方式
  Widget columnMainAxisAlignmentLayout(String configStr, MainAxisAlignment f) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            configStr,
            style: descTextStyle,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.white70,
            height: 350,
            width: double.infinity,
            child: Column(
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
            ),
          )
        ],
      ),
    );
  }

  // column 主轴水平方向排列方式
  Widget columnCrossAxisAlignmentLayout(String configStr, CrossAxisAlignment f) {
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
          Container(
            width: double.infinity,
            color: Colors.white70,
            child: Column(
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
            ),
          ),

        ],
      ),
    );
  }

}
