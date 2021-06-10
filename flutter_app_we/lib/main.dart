import 'package:flutter/material.dart';
import 'package:flutter_app_we/locator.dart';
import 'package:flutter_app_we/route/route.dart';

import 'generatRoute/generateRoute.dart';
import 'layoutTemplate.dart';
import 'navigation/navigationService.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) => LayoutTemplate(child: child ?? Container()),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: RouteName.DASHBOARD,
    );
  }
}