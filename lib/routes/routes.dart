import 'package:flutter/material.dart';

import '../pages/login.dart';
import '../pages/pages_index.dart';

final Map<String, Function> routes = {
  '/home': (context) => const PageIndex(),
  '/login': (context) => const MyHome(),
};

///路由传值
///固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
