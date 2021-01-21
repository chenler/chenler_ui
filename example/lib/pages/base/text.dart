import 'package:chenler_ui/chenler_ui.dart';
import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(

              children: [
                titleView()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget titleView() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CUIText("主标题", type: CUITextType.TitleMain,),
          CUIText("次级标题", type: CUITextType.TitleSub),
          CUIText("小标题", type: CUITextType.TitleSmall,),
          CUIText("正文", type: CUITextType.TextContent,),
          CUIText("辅助文字", type: CUITextType.TextHelp,),
          CUIText("失效文字", type: CUITextType.TextDisabled,),
          CUIText("链接文字", type: CUITextType.TextLink,),
          CUIText("可选颜色正文", type: CUITextType.TextContent, fontColor: Colors.amber,),
          CUIText("可选文字大小", type: CUITextType.TextContent, fontSize: 60,),
          CUIText("默认文字样式",),
          FlatButton(onPressed: null, child: null)
        ],
      ),
    );
  }
}
