import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/shares/loading.dart';

class CreateNewUser extends StatefulWidget {
  @override
  _CreateNewUserState createState() => _CreateNewUserState();
}

List<String> resDataFromDataBase = [];
TextEditingController textControllerId = new TextEditingController();
TextEditingController textControllerTitle = new TextEditingController();
TextEditingController textControllerComplete = new TextEditingController();
TextEditingController textControllerUserId = new TextEditingController();

class _CreateNewUserState extends State<CreateNewUser> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var currentSelectedValue;
    final TodoController _controller = Get.put(TodoController());
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return Scaffold(
        backgroundColor: Colors.blueGrey,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateNewUser()),
                      );
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
                SizedBox(
                  width: 1.0,
                ),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(src),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Alexander Pierce",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 1.0,
                ),
                SizedBox(
                  width: 1.0,
                ),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Icon(
                      Icons.share_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
      body:Obx((){
        if(_controller.isLoading.value){
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
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Container(
                      //   width: 200.0,
                      //   height: MediaQuery.of(context).size.height,
                      //   color: Colors.brown,
                      // ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print("Hello world");
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 300.0,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        // children: [
                                        //   Container(
                                        //     width: 150,
                                        //     height: 150.0,
                                        //     alignment: Alignment.center,
                                        //     color: Colors.grey.shade300,
                                        //     child: Column(
                                        //       crossAxisAlignment:
                                        //       CrossAxisAlignment.center,
                                        //       mainAxisAlignment:
                                        //       MainAxisAlignment.center,
                                        //       children: [
                                        //         Icon(Icons.add),
                                        //         SizedBox(
                                        //           height: 5.0,
                                        //         ),
                                        //         Text("Upload Logo")
                                        //       ],
                                        //     ),
                                        //   )
                                        // ],
                                      ),
                                    ),
                                  ),
                                  Form(
                                    key: _formKey,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 15.0,),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 100.0,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                      width: MediaQuery.of(context).size.width /2,
                                                     // height: 50.0,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text("*",
                                                                style: TextStyle(color: Colors.red, fontSize: 14.0),
                                                              ),
                                                              SizedBox(width: 5.0,),
                                                              Text("Id:",
                                                                style: TextStyle(fontSize: 16.0),
                                                              )
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child:TextFormField(
                                                              readOnly: false,
                                                              style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                                              controller: textControllerId,
                                                              onSaved: (nameVale) {},
                                                              validator: (idValue) {
                                                                if(idValue.isEmpty){
                                                                  return "Please input id";                                                              }
                                                                return null;
                                                              },
                                                              decoration:InputDecoration(
                                                                hintText: 'Input Id',
                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(6.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                                SizedBox(width: 10.0,),
                                                Expanded(
                                                  child: Container(
                                                      width: MediaQuery.of(context).size.width / 2,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text("*",
                                                                style: TextStyle(color: Colors.red, fontSize: 14.0),
                                                              ),
                                                              SizedBox(width: 5.0,),
                                                              Text("Body:",
                                                                style: TextStyle(fontSize: 16.0),
                                                              )
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              style: TextStyle(color: Colors.grey, fontSize: 14.0),
                                                              controller: textControllerTitle,
                                                              onSaved: (priceVale) {},
                                                              validator: (titleValue) {
                                                                if(titleValue.isEmpty){
                                                                  return "Please input title";
                                                                }
                                                                return null;
                                                              },
                                                              decoration:InputDecoration(
                                                                hintText: 'Input body',
                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(6.0)),
                                                              ),

                                                            ),

                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5.0,),
                                          Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 100.0,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: MediaQuery.of(context).size.width / 2,
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                              width: MediaQuery.of(context).size.width / 2,
                                                              height: 150.0,
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text("*",
                                                                        style: TextStyle(color: Colors.red,
                                                                            fontSize: 14.0),
                                                                      ),
                                                                      SizedBox(width: 5.0,),
                                                                      Text("User Id :",
                                                                        style: TextStyle(fontSize: 16.0),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child: TextFormField(
                                                                      readOnly: false,
                                                                      style: TextStyle(color: Colors.grey,fontSize: 14.0),
                                                                      controller: textControllerUserId,
                                                                      onSaved: (numberVal) {},
                                                                      validator: (userIdValue){
                                                                        if(userIdValue.isEmpty){
                                                                          return "Please input title";
                                                                        }
                                                                        return null;
                                                                      },
                                                                      decoration:InputDecoration(
                                                                        hintText: 'Input user id',
                                                                        border: OutlineInputBorder(
                                                                            borderRadius: BorderRadius.circular(6.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                      width: MediaQuery.of(context).size.width / 2,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text("*",
                                                                style: TextStyle(color: Colors.red, fontSize: 14.0),
                                                              ),
                                                              SizedBox(width: 5.0,),
                                                              Text("Title:",
                                                                style: TextStyle(fontSize: 16.0),
                                                              )
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              readOnly: false,
                                                              style: TextStyle(
                                                                  color: Colors.grey,fontSize: 14.0),
                                                              controller: textControllerComplete,
                                                              onSaved: (numberVal) {},
                                                              validator: (bodyValue){
                                                                if(bodyValue.isEmpty){
                                                                  return "Please input body";
                                                              }
                                                              return null;
                                                              },
                                                              decoration:InputDecoration(
                                                                hintText: 'Input title',
                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(6.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        MaterialButton(
                                            height: MediaQuery.of(context).size.height,
                                            hoverColor: Colors.grey,
                                            color: Colors.black12,
                                            child: Text("Cancel",style:TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
                                            onPressed: (){
                                              Navigator.pop(context);
                                            }),
                                        SizedBox(width: 20.0,),
                                        MaterialButton(
                                            height: MediaQuery.of(context).size.height,
                                            hoverColor: Colors.green,
                                            color: Colors.white,
                                            child: Text("Create",style:TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
                                            onPressed: () async{
                                              if(_formKey.currentState.validate()){
                                                _formKey.currentState.save();
                                               PostModel _postModelInsert = await _controller.insertTodoTesting(int.parse(textControllerId.text),int.parse(textControllerUserId.text) ,textControllerTitle.text,textControllerComplete.text.toString());
                                               print("Information value _postModelInsert ${_postModelInsert.id}");
                                                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data saved successfully')));
                                                Navigator.pop(context,PostModel);
                                              }else{
                                               // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data saved not success')));
                                              }
                                            }),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      })

    );
  }
}
