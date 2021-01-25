import 'package:example/pages/base/color.dart';
import 'package:example/pages/base/list.dart';
import 'package:example/pages/base/text.dart';
import 'package:example/pages/layout/layout_flex_column.dart';
import 'package:example/pages/layout/layout_flex_row.dart';
import 'package:example/pages/layout/layout_stack.dart';
import 'package:example/pages/layout/layout_wrap.dart';
import 'package:example/pages/map/location.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/layout/layout_container.dart';
import 'package:example/pages/home/home.dart';


Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return HomePage();
    }
);

Handler layoutContainerHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params) {
    return LayoutContainerPage();
  }
);

Handler layoutFlexRowHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return LayoutFlexRowPage();
    }
);

Handler layoutFlexColumnHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return LayoutFlexColumnPage();
    }
);

Handler layoutStackHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return LayoutStackPage();
    }
);

Handler layoutWrapHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return LayoutWrapPage();
    }
);

Handler colorHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return ColorPage();
    }
);

Handler textHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return TextPage();
    }
);

Handler locationHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return LocationPage();
    }
);

Handler listHandler = Handler(
    handlerFunc: (BuildContext context, Map<String,List<String>> params) {
      return ListPage();
    }
);