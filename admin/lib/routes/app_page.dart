import 'package:get/get.dart';
import 'package:getx/services/constants/route_constant.dart';
import 'package:getx/views/detailScreen.dart';
import 'package:getx/views/splashScreen.dart';
import 'package:getx/web/user/create_new_user.dart';

import '../views/homeScreen.dart';

class AppPage{
  static final pages = [
    GetPage(name: Routes.INITIAL, page: ()=> HomeScreen(),),
    GetPage(name: Routes.DETAILS, page: ()=> DetailScreen(),),
    GetPage(name: Routes.SPLASHSCREEN, page: ()=> SplashScreen(),),
    GetPage(name: Routes.USER, page: ()=> CreateNewUser()),
  ];
}