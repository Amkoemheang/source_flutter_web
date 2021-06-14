import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/model/model_post.dart';
import 'package:flutter_app_we/route/route.dart';
import 'package:flutter_app_we/user/update_info.dart';
import 'package:flutter_app_we/view_model/postVM.dart';


class DataTableWidget extends StatefulWidget {
  final List<PostModel> postModels;
  DataTableWidget(this.postModels);

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}
  @override
  void initState(){

  }
  PostVM postVM = PostVM();
class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
        headingRowColor:
        MaterialStateColor.resolveWith(
                (states) => Colors.blueGrey),
        sortAscending: true,
        columns: [
          DataColumn(label: Text("Id")),
          DataColumn(label: Text("UserId")),
          DataColumn(label: Text("Title")),
          DataColumn(label: Text("body")),
          DataColumn(label: Text("Other...."))
        ],
        rows: widget.postModels.asMap().entries.map((e) {
          int index = e.key;
          return
            DataRow(cells: [
              DataCell(Text(e.value.id.toString())),
              DataCell(Text(e.value.userId.toString())),
              DataCell(Text(e.value.title.toString())),
              DataCell(Text(e.value.body.toString())),
              DataCell(Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 40.0,
                    color: Colors.redAccent,
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (BuildContext
                              context) {
                                return AlertDialog(
                                  title: Text(
                                      "Deleted Data"),
                                  content: Text(
                                      "Are you sure deleted this data?"),
                                  actions: [
                                    // ignore: deprecated_member_use
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(
                                              context)
                                              .pop(
                                              context);
                                          print(
                                              "Hello No");
                                        },
                                        child:Text(
                                          "No",
                                          style: TextStyle(
                                              color: Colors
                                                  .blue),
                                        )),
                                    // ignore: deprecated_member_use

                                    FlatButton(
                                        onPressed: () async {
                                              //_controller.postModel.removeAt(e.key);_controller.deleteTodoTesting(e.value.id);
                                          widget.postModels.removeAt(e.key);
                                          postVM.delete(e.value.id);
                                          Navigator.pop(context);
                                        },
                                        child:Text(
                                          "Yes",
                                          style: TextStyle(
                                              color: Colors
                                                  .red),
                                        ))
                                  ],
                                );
                              });
                        });
                      },
                      child: Text(
                        "Delete",
                        style: TextStyle(
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    width: 70.0,
                    height: 40.0,
                    child: MaterialButton(
                      color: Colors.green,
                      onPressed: () {
                        var gg = UpdateTodoBody(e.value.id, e.value.userId, e.value.body, e.value.title);
                        postVM.navigateToPage(RouteName.UPDATE, gg,e.value.id, (_model) {
                          setState(() {
                            widget.postModels[index] = _model;
                          });
                        });
                      },
                      child: Text(
                        "Update",
                        style: TextStyle(
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ))
            ]);
        }).toList());
  }
}
