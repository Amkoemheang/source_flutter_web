import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/web/homePage/calender.dart';
import 'package:getx/web/homePage/dashboard.dart';
import 'package:getx/web/homePage/main_box.dart';
import 'services/constants/route_constant.dart';
import 'web/homePage/document.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.routeHome:
        return MaterialPageRoute(builder: (_) => Dashboard());
        break;
      case Routes.routeForm:
        return MaterialPageRoute(builder: (_) => Calender(id: "id", title: "title", body: "body", userId: "userId"));
        break;
      case Routes.routeMainBox:
        return MaterialPageRoute(builder: (_) => MainBox());
        break;
      case Routes.routeFormTwo:
        return MaterialPageRoute(builder: (_) => Document());
        break;
    }
  }
}