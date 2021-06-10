import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/route/route.dart';
import 'navBarItem.dart';
class NavigationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //NavBarLogo(),
          Column(
            children: <Widget>[
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Dashboard', RouteName.DASHBOARD,Icons.dashboard),
                    onPressed: (){
                    }),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Graph', RouteName.GRAPH,Icons.graphic_eq_rounded),
                    onPressed: (){
                      print("Hello world two");
                    }),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Analysis', RouteName.ANALYSIS,Icons.analytics),
                    onPressed: (){
                      print("Hello world two");
                    }),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Message', RouteName.MESSAGE,Icons.message),
                    onPressed: (){
                      print("Hello world two");
                    }),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Report', RouteName.REPORT,Icons.report),
                    onPressed: (){
                      print("Hello world two");
                    }),
              ),
              SizedBox(height: 5,),
              Container(
                color: Colors.grey,
                width: 190.0,
                child: MaterialButton(
                    height: 50.0,
                    child: NavBarItem('Table', RouteName.TABLE,Icons.table_chart_sharp),
                    onPressed: (){
                      print("Hello world two");
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
