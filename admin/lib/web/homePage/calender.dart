import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/share/dataTableWidgetOne.dart';
import 'package:getx/shares/loading.dart';
import 'package:getx/web/user/create_new_user.dart';

// ignore: must_be_immutable
class Calender extends StatefulWidget {
  String id;
  String title;
  String body;
  String userId;
  Calender(
      {@required this.id,
      @required this.title,
      @required this.body,
      @required this.userId});
  @override
  _CalenderState createState() => _CalenderState();
}

TextEditingController textControllerId = new TextEditingController();
PostModel postModel;
class _CalenderState extends State<Calender> {
  final  TodoController _controller = Get.put(TodoController());
  final searchTextController = TextEditingController();
  List<PostModel> oo;
  List<PostModel> resDate = [] ;
  @override
  void initState() {
    _controller.fetchFinalTodoTesting();
    isLoadMore = false;
    super.initState();
  }

  bool isLoadMore = false;
  searchMethod(String title){
      if(title.isEmpty) {
      }else {
        for(var i in _controller.newArray){
          if (i.title.contains(title.toLowerCase())) {
            setState(() {
              _controller.searchPost.value.add(i);
            });
          }
        }
  }
  }
  int numPage = 1;
  int limit;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return
      Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueGrey,
          toolbarHeight: 50.0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: [
                  MaterialButton(
                      height: MediaQuery.of(context).size.height,
                      hoverColor: Colors.grey,
                      child: Badge(
                        badgeContent: Text(
                          '7',
                          style: TextStyle(fontSize: 10.0, color: Colors.white),
                        ),
                        child: Icon(
                          Icons.all_inbox,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        //forLoopNumber();
                        print("Hello everyone");
                      }),
                  SizedBox(
                    width: 1.0,
                  ),
                  MaterialButton(
                      height: MediaQuery.of(context).size.height,
                      hoverColor: Colors.grey,
                      child: Badge(
                        badgeContent: Text(
                          '5',
                          style: TextStyle(fontSize: 10.0, color: Colors.white),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {}),
                  MaterialButton(
                      height: MediaQuery.of(context).size.height,
                      hoverColor: Colors.grey,
                      child: Badge(
                        badgeContent: Text(
                          '1',
                          style: TextStyle(fontSize: 10.0, color: Colors.white),
                        ),
                        child: Icon(
                          Icons.flag,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
        body:Obx(() {
          if (_controller.isLoading.value) {
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
          }
          return Container(
            // color: Colors.white70,
            color: Colors.grey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Colors.grey,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total User: 24K",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Container(
                              width: 200.0,
                              height: 40.0,
                              alignment: Alignment.center,
                              color: Colors.grey.shade300,
                              child:TextField(
                                controller: searchTextController,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search...',
                                  hintStyle: TextStyle(color: Colors.grey,letterSpacing: 2.0),
                                ),
                                onChanged: (valueText){
                                  if(valueText.isEmpty){
                                    print("result valueText $valueText");
                                    setState(() {
                                      _controller.postModel.value = _controller.postModel.value;
                                      _controller.searchPost.value = [];
                                    });
                                  }
                                  print("Information value $valueText");
                                },
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            MaterialButton(
                                height: 45.0,
                                color: Colors.blueGrey,
                                child: Text("Search"),
                                onPressed: (){
                                  searchMethod(searchTextController.text);
                                }),
                            SizedBox(width: 5.0,),
                            MaterialButton(
                                child: Text("+  Create User"),
                                minWidth: 150.0,
                                height: 45.0,
                                color: Colors.grey.shade300,
                                onPressed: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CreateNewUser()),
                                  ).then((value) => {
                                    print("Information value $value"),
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white54,
                        child:DataTableWidget(_controller.searchPost.isEmpty ? _controller.postModel.value: _controller.searchPost.value )

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        color: Colors.grey.shade400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              minWidth: 15.0,
                              color: Colors.grey,
                              child: Icon(Icons.arrow_left_outlined),
                              onPressed: (){
                                if (_controller.page > 1) {
                                  _controller.page -= 1;
                                }
                                _controller.updatePageAndLimit(_controller.page);
                                setState(() {});
                              }),
                            SizedBox(width: 15.0,),
                           Text("Page ${_controller.page}"),
                            SizedBox(width: 15.0,),
                            MaterialButton(
                                minWidth: 15.0,
                                color: Colors.grey,
                                child: Icon(Icons.arrow_right),
                                onPressed: (){
                                  setState(() {
                                    _controller.page += 1;
                                  });
                                  _controller.updatePageAndLimit(_controller.page);
                                }),
                            SizedBox(width: 8.0,),
                          ],
                        ),
                      ),
                    )
                  ],
                ));
        }));
  }

}

