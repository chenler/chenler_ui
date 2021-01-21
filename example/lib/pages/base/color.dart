import 'dart:ui';

import 'package:chenler_ui/chenler_ui.dart';
import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget {
  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  final descTextStyle =
  TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
  final msgTextStyle =
  TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                primaryColorView(),
                secondaryColorView(),
                colorView(),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget primaryColor(String desc, Color c, String msg) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 8),
      decoration: new BoxDecoration(
        color: c,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(desc, style:  msg == '背景色' ? null : descTextStyle,),
          Text(msg, style:  msg == '背景色' ? null : msgTextStyle,)
        ],
      ),
    );
  }

  Widget primaryColorView() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("主色"),
          CUIText("主标题", type: CUITextType.TitleMain),
          Column(
            children: [
              primaryColor("CUIColor.primaryColorNormal", CUIColor.primaryColorNormal, ""),
              primaryColor("CUIColor.primaryColorLight", CUIColor.primaryColorLight, ""),
              primaryColor("CUIColor.primaryColorDark", CUIColor.primaryColorDark, ""),
            ],
          )
        ],
      ),
    );
  }

  Widget secondaryColorView() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("辅助色"),
          Column(
            children: [
              primaryColor("CUIColor.secondaryColorInfo", CUIColor.secondaryColorInfo, ""),
              primaryColor("CUIColor.secondaryColorSuccess", CUIColor.secondaryColorSuccess, ""),
              primaryColor("CUIColor.secondaryColorWarning", CUIColor.secondaryColorWarning, ""),
              primaryColor("CUIColor.secondaryColorError", CUIColor.secondaryColorError, ""),
            ],
          )
        ],
      ),
    );
  }

  Widget colorView() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("中性色"),
          Column(
            children: [
              primaryColor("CUIColor.colorTitle", CUIColor.colorTitle, "标题文字颜色"),
              primaryColor("CUIColor.colorTitle", CUIColor.colorTitle, "正文文字颜色"),
              primaryColor("CUIColor.colorSub", CUIColor.colorSub, "辅助/图标颜色"),
              primaryColor("CUIColor.colorDisabled", CUIColor.colorDisabled, "失效颜色"),
              primaryColor("CUIColor.backgroundColor", CUIColor.backgroundColor, "背景色"),
              primaryColor("CUIColor.dividerColor", CUIColor.dividerColor, "分隔符颜色"),
              primaryColor("CUIColor.borderColor", CUIColor.borderColor, "边框颜色"),
            ],
          )
        ],
      ),
    );
  }

  Widget otherColorView() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("中性色"),
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
