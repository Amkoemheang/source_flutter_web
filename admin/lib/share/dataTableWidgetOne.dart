import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/web/user/update_info.dart';
class DataTableWidget extends StatefulWidget {
  final List<PostModel> postModels;
  DataTableWidget(this.postModels);

  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  final  TodoController _controller = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return  DataTable(
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
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              color: Colors
                                                  .blue),
                                        )),
                                    // ignore: deprecated_member_use
                                    FlatButton(
                                        onPressed:
                                            () async {
                                              _controller.postModel
                                              .removeAt(
                                              e.key);
                                          _controller
                                              .deleteTodoTesting(e
                                              .value
                                              .id);
                                          Navigator.pop(
                                              context);
                                        },
                                        child: Text(
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
                    color: Colors.green,
                    child: MaterialButton(
                      onPressed: () {
                        print("Information key $index");
                        Navigator.push(context, MaterialPageRoute(
                              builder: (context) => UpdateInfo(
                                    id: e.value.id.toString(),
                                    userId: e.value.userId.toString(),
                                    body: e.value.body.toString(),
                                    title: e.value.title,
                                  )),
                        ).then((value) => {
                          if (value is PostModel)
                            {
                              _controller.postModel[index] = value,
                              print("result update ${value.body}")
                            }
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
