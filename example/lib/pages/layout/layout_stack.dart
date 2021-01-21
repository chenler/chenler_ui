import 'package:flutter/material.dart';

class LayoutStackPage extends StatefulWidget {
  @override
  _LayoutStackPage createState() => _LayoutStackPage();
}

class _LayoutStackPage extends State<LayoutStackPage> {
  final descTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);
  final smallTextStyle = TextStyle(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack布局"),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Stack布局"),
                stackLayout(),
                Container(
                  height: 16,
                ),
                Text("Stack alignment"),
                stackAlignmentGridView(),
                Container(
                  height: 16,
                ),
                Text("Stack textDirection"),
                stackTextDirectionView(),
                Container(
                  height: 16,
                ),
                Text("Stack StackFit.expand "),
                stackFitView(),
                Container(
                  height: 16,
                ),
                Text("Stack overflow "),
                Container(
                  height: 16,
                ),
                stackOverflowView(),
                Container(
                  height: 16,
                ),
                Text("Positioned "),
                positionedView(),
              ],
            ),
          ),
        ]));
  }

  Widget stack() {
    return Stack(
      children: [
        Container(
          height: 50,
          color: Colors.red,
          width: 50,
        ),
        Container(
          height: 40,
          width: 40,
          color: Colors.green,
        ),
        Container(
          height: 30,
          width: 30,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget stackLayout() {
    return Container(
      height: 200,
      color: Colors.lightBlueAccent,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 150,
            color: Colors.red,
            width: 150,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Widget stackAlignmentLayout(String desc, Alignment f) {
    return Container(
        height: 100,
        width: 100,
        color: Colors.grey,
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(desc, style: descTextStyle),
              margin: EdgeInsets.only(bottom: 15),
            ),
            Stack(
              alignment: f,
              children: [
                Container(
                  height: 50,
                  color: Colors.red,
                  width: 50,
                ),
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.green,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ));
  }

  Widget stackAlignmentGridView() {
    return Container(
      height: 350,
      width: double.infinity,
      padding: EdgeInsets.all(5),
      color: Colors.lightBlueAccent,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              stackAlignmentLayout("topLeft", Alignment.topLeft),
              stackAlignmentLayout("topCenter", Alignment.topCenter),
              stackAlignmentLayout("topRight", Alignment.topRight),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              stackAlignmentLayout("centerLeft", Alignment.centerLeft),
              stackAlignmentLayout("center", Alignment.center),
              stackAlignmentLayout("centerRight", Alignment.centerRight),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              stackAlignmentLayout("bottomLeft", Alignment.bottomLeft),
              stackAlignmentLayout("bottomCenter", Alignment.bottomCenter),
              stackAlignmentLayout("bottomRight", Alignment.bottomRight),
            ],
          ),
        ],
      ),
    );
  }

  Widget stackTextDirectionLayout(TextDirection f) {
    return Stack(
      textDirection: f,
      children: [
        Container(
          height: 50,
          color: Colors.red,
          width: 50,
        ),
        Container(
          height: 40,
          width: 40,
          color: Colors.green,
        ),
        Container(
          height: 30,
          width: 30,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget stackTextDirectionView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          stackTextDirectionLayout(TextDirection.ltr),
          stackTextDirectionLayout(TextDirection.rtl),
        ],
      ),
    );
  }

  Widget stackFitView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 50,
            color: Colors.yellow,
            width: 50,
          ),
          Container(
            height: 40,
            width: 40,
            color: Colors.green,
            child: Text("未定位元素占满组件", style: descTextStyle,),
          ),
          Positioned(child: Container(
            color: Colors.red,
            child: Text("定位元素不占满组件", style: descTextStyle,),
          ),
          width: 100,
          right: 30,
          top: 10,
          bottom: 10,)
          // Container(
          //   height: 30,
          //   width: 30,
          //   color: Colors.yellow,
          // ),
        ],
      ),
    );
  }

  Widget stackOverflowView() {
    return Container(
      width: double.infinity,
      height: 150,
      color: Colors.lightBlueAccent,
      child: Column(
        children: [
          Text("overflow: clip"),
          Container(
            color: Colors.white54,
            height: 100,
            width: double.infinity,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(child: Container(
                  color: Colors.red,
                  width: 30,
                  height: 110,
                ),
                bottom: 0,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget positionedView() {
    return Container(
      width: double.infinity,
      color: Colors.lightBlueAccent,
      height: 150,
      child: Stack(
        children: [
          Positioned(
              top: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.white70,
                child: Row(
                  children: [Text("top20")],
                ),
              )),
          Positioned(
              right: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.white70,
                child: Row(
                  children: [Text("right20")],
                ),
              )),
          Positioned(
              bottom: 20,
              child: Container(
                height: 50,
                width: 150,
                color: Colors.white70,
                child: Row(
                  children: [Text("bottom20")],
                ),
              )),
          Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: 50,
                width: 150,
                color: Colors.white70,
                child: Column(
                  children: [Text("bottom20"),Text("right20")],
                ),
              )),
        ],
      ),
    );
  }
}
