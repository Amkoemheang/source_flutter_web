import 'package:flutter/cupertino.dart';
import 'package:flutter_app_we/locator.dart';
import 'package:flutter_app_we/navigation/navigationService.dart';
import 'package:flutter_app_we/route/route.dart';

class NavigationDetail extends ChangeNotifier{
  final NavigationService _navigationService = locator<NavigationService>();
  void navigationDetail(int index){
    _navigationService.navigateTo(RouteName.DETAIL, queryParams: {'id': index.toString()});
  }
}