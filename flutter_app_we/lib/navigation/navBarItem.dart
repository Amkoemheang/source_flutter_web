import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../locator.dart';
import 'navigationService.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;
  const NavBarItem(this.title, this.navigationPath,this.icon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child:  Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            alignment: Alignment.center,
            child: Center(
              child:Container(
                child: Row(
                  children: [
                    Icon(icon),
                    Spacer(),
                    Text(title),
                  ],
                ),
              ),
            )
          ),
    );
  }
}