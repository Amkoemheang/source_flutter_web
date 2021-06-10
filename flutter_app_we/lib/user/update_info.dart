import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/model/model_post.dart';
import 'package:flutter_app_we/view_model/base_view.dart';
import 'package:flutter_app_we/view_model/postVM.dart';

class UpdateTodoBody {
  int id;
  int userId;
  String body;
  String title;
  UpdateTodoBody(this.id, this.userId, this.body, this.title);

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'userId': this.userId,
    'body': this.body,
    'title': this.title
  };
}

class UpdateInfo extends StatefulWidget {
  final UpdateTodoBody updateBody;
  UpdateInfo( this.updateBody);
  @override
  _UpdateInfoState createState() => _UpdateInfoState();
}
  final _formKey = GlobalKey<FormState>();
class _UpdateInfoState extends State<UpdateInfo> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BaseView<PostVM>(onModelReady: (model) async => {
      model.passData(widget.updateBody.userId, widget.updateBody.id, widget.updateBody.title, widget.updateBody.body)
    },builder: (context,model,child){
      return model.isLoading ? Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ): Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blueGrey,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
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
                                                            controller: model.textControllerId,
                                                            obscureText: false,
                                                            onSaved: (nameVale) {
                                                              print ("Information nameVale $nameVale");
                                                            },
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
                                                            controller: model.textControllerTitle,
                                                            obscureText: false,
                                                            onSaved: (priceVale) {
                                                              print("Information numberVal $priceVale");
                                                            },
                                                            validator: (titleValue) {
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
                                                                    controller: model.textControllerUserId,
                                                                    obscureText: false,
                                                                    onSaved: (numberVal) {
                                                                      print("Information numberVal $numberVal");
                                                                    },
                                                                    validator: (userIdValue){
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
                                                            controller: model.textControllerComplete,
                                                            obscureText: false,
                                                            onSaved: (numberVal) {},
                                                            validator: (bodyValue){
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
                                            print("Hello information");
                                            Navigator.pop(context);
                                          }),
                                      SizedBox(width: 20.0,),
                                      MaterialButton(
                                          height: MediaQuery.of(context).size.height,
                                          hoverColor: Colors.green,
                                          color: Colors.white,
                                          child: Text("Update",style:TextStyle(color: Colors.black,fontSize: 14.0,fontWeight: FontWeight.bold),),
                                          onPressed: () async {
                                            print("Information click");
                                            var _id = model.textControllerId.text;
                                            var _title = model.textControllerTitle.text;
                                            var _body = model.textControllerComplete.text;
                                            var _userId = model.textControllerUserId.text;

                                            if(_formKey.currentState!.validate()){
                                              _formKey.currentState!.save();
                                              if(_id.toString() != widget.updateBody.id.toString() || _title.toString() != widget.updateBody.title || _body.toString() != widget.updateBody.body || _userId.toString() != widget.updateBody.userId.toString()){
                                                PostModel postModel = await model.updateInfo(int.parse(_userId.toString()),int.parse(_id.toString()), _title, _body);
                                                Navigator.pop(context, postModel);
                                              }
                                              else{
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    title: Text("Update Info"),
                                                    content: Text("You cannot update your info... Plz Input new data in TextFiled"),
                                                    actions: [
                                                      FlatButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        child: Text("Yes"),
                                                      ),
                                                      FlatButton(onPressed: (){
                                                           Navigator.pop(context);
                                                      }, child: Text("No"))
                                                    ],
                                                  );
                                                });
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
     });
  }
}
