import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/view_model/base_view.dart';
import 'package:flutter_app_we/view_model/postVM.dart';

class CreateUser extends StatefulWidget {
  @override
  _CreateUserState createState() => _CreateUserState();
}

TextEditingController textControllerId = new TextEditingController();
TextEditingController textControllerTitle = new TextEditingController();
TextEditingController textControllerComplete = new TextEditingController();
TextEditingController textControllerUserId = new TextEditingController();

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return BaseView<PostVM>(
      onModelReady: (model) {},
      builder: (context, model, child) {
        return Center(
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
                                                              // if(idValue.isEmpty){
                                                              //   return "Please input id";                                                              }
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
                                                              // if(titleValue.isEmpty){
                                                              //   return "Please input title";
                                                              // }
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
                                                                    // if(userIdValue.isEmpty){
                                                                    //   return "Please input title";
                                                                    // }
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
                                                              // if(bodyValue.isEmpty){
                                                              //   return "Please input body";
                                                              // }
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
                                            // if(_formKey.currentState.validate()){
                                            //   _formKey.currentState.save();
                                            //   PostModel _postModelInsert = await _controller.insertTodoTesting(int.parse(textControllerId.text),int.parse(textControllerUserId.text) ,textControllerTitle.text,textControllerComplete.text.toString());
                                            //   print("Information value _postModelInsert ${_postModelInsert.id}");
                                            //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data saved successfully')));
                                            //   Navigator.pop(context,PostModel);
                                            // }else{
                                            //   // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data saved not success')));
                                            // }
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
        );
      },
    );
  }
}
