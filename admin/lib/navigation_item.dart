import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/Interactive_navItem.dart';
import 'package:getx/routes/page_route.dart';

// Custom class
class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;
  final IconData icon;
  // final Icon icons;
  const NavigationItem({
    @required this.title,
    @required this.routeName,
    @required this.selected,
    @required this.onHighlight,
    this.icon,
    // @required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50.0,
        alignment: Alignment.center,
        child: SizedBox(
          child: MaterialButton(
            color: selected == true ? Colors.blueGrey : Colors.transparent,
            onPressed: (){
              navKey.currentState.pushNamed(routeName);
              onHighlight(routeName);
            },
            child: InteractiveNavItem(
              icon: icon,
              text: title,
              routeName: routeName,
              selected: selected,
            ),
          ),
        ),
    );
  }
}
