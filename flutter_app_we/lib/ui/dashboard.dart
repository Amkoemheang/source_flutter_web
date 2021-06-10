import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/navigation/navBarItem.dart';
import 'package:flutter_app_we/route/route.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: NavBarItem('Dashboard', RouteName.DETAIL_ONE,Icons.settings),
    );

  }
}
