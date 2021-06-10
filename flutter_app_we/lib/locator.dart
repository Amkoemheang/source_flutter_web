import 'package:flutter/services.dart';
import 'package:flutter_app_we/service/postService.dart';
import 'package:flutter_app_we/view_model/postVM.dart';
import 'package:get_it/get_it.dart';
import 'api/api.dart';
import 'navigation/navigationService.dart';

GetIt locator = GetIt.instance;
void setupLocator() {

  // register api
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => PostApi());
  locator.registerLazySingleton(() => UpdateApi());
  locator.registerLazySingleton(() => DeleteApi());

  // register service
  locator.registerLazySingleton(() => PostService());
  locator.registerLazySingleton(() => UpdateService());
  locator.registerLazySingleton(() => DeleteService());

  // register VM
  locator.registerLazySingleton(() => PostVM());

}