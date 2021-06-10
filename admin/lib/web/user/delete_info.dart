import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/shares/loading.dart';
class DeleteInfo extends StatefulWidget {
  @override
  _DeleteInfoState createState() => _DeleteInfoState();
}
TextEditingController textControllerId = new TextEditingController();
TextEditingController textControllerTitle = new TextEditingController();
TextEditingController textControllerBody = new TextEditingController();
TextEditingController textControllerUserId = new TextEditingController();



class _DeleteInfoState extends State<DeleteInfo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final TodoController _controller = Get.put(TodoController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Deleted"),
        centerTitle: true,
        backgroundColor: Colors.brown,
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
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 150.0,
                                          alignment: Alignment.center,
                                          color: Colors.grey.shade300,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text("Upload Logo")
                                            ],
                                          ),
                                        )
                                      ],
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
                                                            Text("User Id :",
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
                                                                    Text("Title :",
                                                                      style: TextStyle(fontSize: 16.0),
                                                                    )
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child: TextFormField(
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
                                                            Text("Body :",
                                                              style: TextStyle(fontSize: 16.0),
                                                            )
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: TextFormField(
                                                            style: TextStyle(
                                                                color: Colors.grey,fontSize: 14.0),
                                                            controller: textControllerBody,
                                                            onSaved: (numberVal) {},
                                                            validator: (bodyValue){
                                                              if(bodyValue.isEmpty){
                                                                return "Please input body";
                                                              }
                                                              return null;

                                                              // child:FormField<String>(
                                                              //   builder: (FormFieldState<String> state){
                                                              //     return InputDecorator(
                                                              //       decoration:InputDecoration(
                                                              //         border: OutlineInputBorder(
                                                              //             borderRadius: BorderRadius.circular(6.0)),
                                                              //       ),
                                                              //       child: DropdownButtonHideUnderline(
                                                              //         child:DropdownButton<ListItem>(
                                                              //             value: _selectedItem,
                                                              //             items: _dropdownMenuItems,
                                                              //             onChanged: (value) {
                                                              //               setState((){
                                                              //                 _selectedItem = value;
                                                              //               });
                                                              //             }),
                                                              //         // DropdownButton(
                                                              //         //   hint: Text("Select Device",style: TextStyle(fontSize: 14.0),),
                                                              //         //   value: _selectedItem,
                                                              //         //   isDense: true,
                                                              //         //   onChanged: (newValue) {
                                                              //         //     setState(() {
                                                              //         //       _selectedItem = newValue;
                                                              //         //     });
                                                              //         //     print(currentSelectedValue);
                                                              //         //   },
                                                              //         //   items: _dropdownMenuItems,
                                                              //         //   // items: deviceTypes.map((value) {
                                                              //         //   //   print("Information value $value");
                                                              //         //   //   return DropdownMenuItem(
                                                              //         //   //     value: value,
                                                              //         //   //     child: Text(value),
                                                              //         //   //   );
                                                              //         //   // }).toList(),
                                                              //         // ),
                                                              //       ),
                                                              //     );
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
                                              _controller.insertTodoTesting(int.parse(textControllerId.text),int.parse(textControllerUserId.text),textControllerTitle.text,textControllerBody.text);
                                              Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data saved successfully')));

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
    }),
    );
  }
  showAlertDialog(BuildContext context){
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {},
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed:  () {},
    );
    AlertDialog alert = AlertDialog(
      title: Text("Deleted Data"),
      content: Text("Are you sure deleted this data?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
