import 'package:flutter/material.dart';
import 'package:getx/routes/page_route.dart';
import 'package:getx/services/constants/route_constant.dart';


import 'generate_route.dart';
import 'mainView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (_, child) => MainView(
        child: child,
      ),
      initialRoute: Routes.routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}