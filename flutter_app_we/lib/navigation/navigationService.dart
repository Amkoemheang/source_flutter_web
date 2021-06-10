import 'package:flutter/material.dart';
import 'package:flutter_app_we/model/model_post.dart';

class NavigationService{
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> navigateTo(String routeName,
      {Map<String, String>? queryParams}) {
    print("Route name $routeName and args $queryParams");
    return navigatorKey.currentState!.pushNamed(routeName, arguments: queryParams);
  }

  Future<dynamic> navigateToPage(String routeName,model,int index, Function(PostModel model) onComplete) {
    if (model != null) {
      routeName = Uri(path: routeName, queryParameters: {'id':index.toString()}).toString();
    }
    return navigatorKey.currentState!.pushNamed(routeName, arguments: model).then((value) {
      if (value is PostModel) {
        onComplete(value);
      }
    });

  }
  goBack() {
    return navigatorKey.currentState!.pop();
  }
}