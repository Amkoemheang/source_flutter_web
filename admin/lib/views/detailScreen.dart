import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/base/seachBase.dart';
import 'package:getx/shares/loading.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(("Detail Screen")),
        actions: [
          GestureDetector(
            onTap: ()=>{
              showSearch(context: context,delegate: SearchDemoSearchDelegate())
            },
              child: Icon(Icons.search))
        ],
      ),
      body: Obx((){
      return Center(
        child: BarProgressIndicator(
          numberOfBars: 4,
          color: Colors.grey,
          fontSize: 10.0,
          barSpacing: 2.0,
          beginTweenValue: 5.0,
          endTweenValue: 10.0,
          milliseconds: 200,
        ),
      );
      }),
    );
  }
}