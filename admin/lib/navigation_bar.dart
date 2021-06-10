import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/navigation_item.dart';
import 'package:getx/services/constants/route_constant.dart';


class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return
      Container(
      color: Colors.black54,
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250.0,
            height: 50.0,
            color: Colors.blueGrey,
          ),
          Container(
            width: 250,
            height: 150.0,
            //color: Colors.black54,
            //color: Colors.grey,
            child: Row(
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(src),
                  ),
                ),
                SizedBox(width: 10.0,height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alexander Pierce",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                      Row(
                        children: [
                          Icon(Icons.brightness_1,color: Colors.green,size: 14.0,),
                          SizedBox(width: 5.0,),
                          Text("Online",style: TextStyle(fontSize: 16.0,color: Colors.white),),
                        ],
                      ),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 250,
            height: 35.0,
            color: Colors.black54,
            child: Text("Main Navigation",style: TextStyle(fontSize: 16.0,color: Colors.white),),
          ),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 50.0,
                child: NavigationItem(
                  icon: Icons.bar_chart,
                  selected: index == 0,
                  title: "Dashboard",
                  routeName: Routes.routeHome,
                  onHighlight: onHighlight,
                ),

          ),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 50.0,
                child:  NavigationItem(
                  icon: Icons.format_list_numbered_rtl,
                  selected: index == 1,
                  title: 'Form',
                  routeName: Routes.routeForm,
                  onHighlight: onHighlight,

                ),
          ),
               Container(
                 alignment: Alignment.center,
                 width: 250,
                 height: 50.0,
                 child: NavigationItem(
                   icon: Icons.mail_outline,
                     selected: index == 2,
                     title: 'MainBox',
                     routeName: Routes.routeMainBox,
                     onHighlight: onHighlight

                 ),
           ),
                Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50.0,
                  child: NavigationItem(
                    icon: Icons.message,
                    selected: index == 3,
                    title: 'FormTwo',
                    routeName: Routes.routeFormTwo,
                    onHighlight: onHighlight,

                  ),
                ),
        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case Routes.routeHome:
        changeHighlight(0);
        break;
      case Routes.routeForm:
        changeHighlight(1);
        break;
      case Routes.routeMainBox:
        changeHighlight(2);
        break;
      case Routes.routeFormTwo:
        changeHighlight(3);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
