import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:example/route/router_handler.dart';

class Routes {
  static String root = "/";
  static String layoutContainerPage = '/layout_container';
  static String layoutFlexRowPage = "/layout_flex_row";
  static String layoutFlexColumnPage = "/layout_flex_column";
  static String layoutStackPage = "/layout_stack";
  static String layoutWrapPage = "/layout_wrap";
  static String colorPage = "/color";
  static String textPage = "/text";
  static String locationPage = "/map/location";
  static String listPage = "/list";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          print("route not found");
          return;
        }
    );
    router.define(root, handler: homeHandler);
    router.define(layoutContainerPage, handler: layoutContainerHandler, transitionType: TransitionType.inFromRight);
    router.define(layoutFlexRowPage, handler: layoutFlexRowHandler, transitionType: TransitionType.inFromRight);
    router.define(layoutFlexColumnPage, handler: layoutFlexColumnHandler, transitionType: TransitionType.inFromRight);
    router.define(layoutStackPage, handler: layoutStackHandler, transitionType: TransitionType.inFromRight);
    router.define(layoutWrapPage, handler: layoutWrapHandler, transitionType: TransitionType.inFromRight);
    router.define(colorPage, handler: colorHandler, transitionType: TransitionType.inFromRight);
    router.define(textPage, handler: textHandler, transitionType: TransitionType.inFromRight);
    router.define(locationPage, handler: locationHandler, transitionType: TransitionType.inFromRight);
    router.define(listPage, handler: listHandler, transitionType: TransitionType.inFromRight);
  }
}
