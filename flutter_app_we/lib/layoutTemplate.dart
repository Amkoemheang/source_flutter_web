import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation/navItem.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  LayoutTemplate({required this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web Application",style: TextStyle(color: Colors.blue),),
      backgroundColor: Colors.white54,
        actions: [
              Row(
                 children: [
                   Icon(Icons.search,color: Colors.blue,),
                   SizedBox(width: 30.0,),
                   Icon(Icons.people,color: Colors.blue,),
                   SizedBox(width: 20.0,),
                 ],
               ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            Container(
              width: 190.0,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: NavigationItem(),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
