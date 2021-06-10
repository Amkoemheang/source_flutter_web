import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_bar.dart';
class MainView extends StatefulWidget {
  final Widget child;
  MainView({@required this.child});
  @override
  _MainViewState createState() => _MainViewState();
}
class _MainViewState extends State<MainView> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.black54,
        child:Row(
          children: [
            NavigationBar(),
            Expanded(
                child:Container(
                  color: Colors.black,
                  child:  widget.child,
                ))],
        ),
      ),
    );
  }
}
