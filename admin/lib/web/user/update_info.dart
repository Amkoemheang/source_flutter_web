import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/shares/loading.dart';
class UpdateInfo extends StatefulWidget {
  String id;
  String title;
  String body;
  String userId;
  UpdateInfo({@required this.id,@required this.title,@required this.userId,@required this.body});
  @override
  _UpdateInfoState createState() => _UpdateInfoState();
}
  final _formKey = GlobalKey<FormState>();
  TextEditingController textControllerId = new TextEditingController();
  TextEditingController textControllerTitle = new TextEditingController();
  TextEditingController textControllerComplete = new TextEditingController();
  TextEditingController textControllerUserId = new TextEditingController();


class _UpdateInfoState extends State<UpdateInfo> {
  _showToast(){
    Fluttertoast.showToast(
        msg: "Update Success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1000,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 14.0);
  }
  @override
  Widget build(BuildContext context) {

    textControllerTitle.text = widget.title;
    textControllerId.text = widget.id;
    textControllerComplete.text = widget.body;
    textControllerUserId.text = widget.userId;

    void clearText(){
      textControllerTitle.text = '';
      textControllerComplete.text = '';
      textControllerUserId.text = '';
      textControllerId.text = '';
    }
    final TodoController _controller = Get.put(TodoController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Update"),
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
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
          padding: const EdgeInsets.only(left: 0.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blueGrey,
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
                          color: Colors.blueGrey,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0,bottom: 20.0),
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
                                                                readOnly: true,
                                                                style: TextStyle(color: Colors.black, fontSize: 14.0),
                                                                controller: textControllerId,
                                                                obscureText: false,
                                                                onSaved: (nameVale) {
                                                                  print ("Information nameVale $nameVale");
                                                                },
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
                                                              ), )
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
                                                                style: TextStyle(color: Colors.black, fontSize: 14.0),
                                                                controller: textControllerTitle,
                                                                obscureText: false,
                                                                onSaved: (priceVale) {
                                                                  print("Information numberVal $priceVale");
                                                                },
                                                                validator: (titleValue) {
                                                                  if(titleValue.isEmpty){
                                                                    print("information titleValue $titleValue and $textControllerTitle");
                                                                    return "Please input title";
                                                                  }
                                                                  return null;
                                                                },
                                                                decoration:InputDecoration(
                                                                  hintText: 'Input id',
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
                                                                      Text("UserId:",
                                                                        style: TextStyle(fontSize: 16.0),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child: TextFormField(
                                                                      readOnly: true,
                                                                      style: TextStyle(color: Colors.black,fontSize: 14.0),
                                                                      controller: textControllerUserId,
                                                                      obscureText: false,
                                                                      onSaved: (numberVal) {
                                                                        print("Information numberVal $numberVal");
                                                                      },
                                                                      validator: (userIdValue){
                                                                        if(userIdValue.isEmpty){
                                                                          return "Please input title";
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
                                                              Text("Title",
                                                                style: TextStyle(fontSize: 16.0),
                                                              )
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: TextFormField(
                                                              style: TextStyle(
                                                                  color: Colors.black,fontSize: 14.0),
                                                              controller: textControllerComplete,
                                                              obscureText: false,
                                                              onSaved: (numberVal) {},
                                                              validator: (bodyValue){
                                                                print("information bodyValue $bodyValue");
                                                                if(bodyValue.isEmpty){
                                                                  return "Please input body";
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
                                            child: Text("Update",style:TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
                                            onPressed: () async{
                                                 var _id = textControllerId.text;
                                                 var _title = textControllerTitle.text;
                                                 var _body = textControllerComplete.text;
                                                 var _userId = textControllerUserId.text;
                                                if(_formKey.currentState.validate()){
                                                  _formKey.currentState.save();
                                                  if(_id.toString() != widget.id || _title.toString() != widget.title || _body.toString() != widget.body || _userId.toString() != widget.userId){
                                                     PostModel  postModel = await _controller.updatePost(int.parse(textControllerUserId.text),int.parse(textControllerId.text),textControllerComplete.text.toString(),textControllerTitle.text.toString());
                                                    // clearText();
                                                    // _showToast();
                                                     print("result two ${postModel.body}");
                                                     Navigator.pop(context,postModel);
                                                  }else{
                                                    // _showToast();
                                                   // showDialog(context: context, builder: (BuildContext context){
                                                   //   return AlertDialog(
                                                   //     title: Text("Update Info"),
                                                   //     content: Text("You cannot update your info... Plz Input new data in TextFiled"),
                                                   //     actions: [
                                                   //       FlatButton(
                                                   //         onPressed: (){
                                                   //           Navigator.pop(context);
                                                   //         },
                                                   //         child: Text("Yes"),
                                                   //       ),
                                                   //       FlatButton(onPressed: (){
                                                   //            Navigator.pop(context);
                                                   //       }, child: Text("No"))
                                                   //     ],
                                                   //   );
                                                   // });
                                                  }
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
      }),
    );
  }
}
