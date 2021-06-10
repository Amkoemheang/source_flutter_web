import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx/controller/todoController.dart';
import 'package:get/get.dart';
import 'package:getx/shares/loading.dart';
import 'package:getx/views/detailScreen.dart';
class HomeScreen extends StatelessWidget {
  _goTo(){
    Get.to(DetailScreen());
  }
  @override
  Widget build(BuildContext context) {
    final TodoController _controller = Get.put(TodoController());
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        title: Text('HomeScreen'),
        backgroundColor: Colors.brown,
      ),
      body: Obx(() {
          if (_controller.isLoading.value) {
            return Center(
              child:  BarProgressIndicator(
                numberOfBars: 4,
                color: Colors.grey,
                fontSize: 10.0,
                barSpacing: 2.0,
                beginTweenValue: 5.0,
                endTweenValue: 10.0,
                milliseconds: 200,
              ),
            );
          }
          return ListView.builder(
            itemCount: _controller.postModel.length,
            itemBuilder: (context, index) {
              print("information ${_controller.postModel.length}");
              return GestureDetector(
                onTap: (){
                  _goTo();
                },
                child: Container(
                  color: index % 2 == 0 ? Colors.white10: Colors.grey,
                  child: ListTile(
                    title: Text(_controller.postModel[index].title,style: TextStyle(fontSize: 16.0),),
                  ),
                ),
              );
            },
          );
        }),
    );
  }
}
