import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/route/route.dart';
import 'package:flutter_app_we/ui/analysis.dart';
import 'package:flutter_app_we/ui/dashboard.dart';
import 'package:flutter_app_we/ui/detail_one.dart';
import 'package:flutter_app_we/ui/graph.dart';
import 'package:flutter_app_we/ui/message.dart';
import 'package:flutter_app_we/ui/report.dart';
import 'package:flutter_app_we/ui/table.dart';
import 'package:flutter_app_we/user/update_info.dart';
import 'package:flutter_app_we/extensions/string_extention.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case RouteName.DASHBOARD:
      return _getPageRoute(Dashboard(), settings);
    case RouteName.GRAPH:
      return _getPageRoute(Graph(), settings);
    case RouteName.ANALYSIS:
      return _getPageRoute(Analysis(), settings);
    case RouteName.MESSAGE:
      return _getPageRoute(Message(), settings);
    case RouteName.REPORT:
      return _getPageRoute(Report(), settings);
    case RouteName.TABLE:
      return _getPageRoute(TableOne(), settings);
    case RouteName.UPDATE:
      return _getPageRoute(UpdateInfo(settings.arguments as UpdateTodoBody), settings);
    case RouteName.DETAIL_ONE:
      return _getPageRoute(DetailOne(), settings);
    default:
      return _getPageRoute(Dashboard(), settings);
  }
}
PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child,required this.routeName})
      : super(
    settings: RouteSettings(name: routeName),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}
