import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/locator.dart';
import 'package:flutter_app_we/share/dataTableWidget.dart';
import 'package:flutter_app_we/view_model/base_view.dart';
import 'package:flutter_app_we/view_model/postVM.dart';
import 'dart:convert';

class TableOne extends StatefulWidget {
  @override
  _TableOneState createState() => _TableOneState();
}
class _TableOneState extends State<TableOne> {
  final _formKey = GlobalKey<FormState>();
  final _openDropDownProgKey = GlobalKey<DropdownSearchState<String>>();
  PostVM postOne = PostVM();
  @override
  void initState() {
    var vm = locator.get<PostVM>();
    var jsonEn = jsonEncode(vm.postModel);
    print("Json En $jsonEn");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<PostVM>(
      onModelReady: (model) async {
        await model.fetchFinalTodoTesting();
        var jsonEn = jsonEncode(model.postModel);
        print("Json Encode ---$jsonEn");
      },
      builder: (context, model, child) {
        return model.isLoading
            ? Center(
                child: Text("isLoading"),
              )
            : Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 90,
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total User: 24K",
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 55.0,
                                alignment: Alignment.center,
                                child: Form(
                                    key: _formKey,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    child: ListView(
                                      padding: EdgeInsets.all(4),
                                      children: [
                                        GestureDetector(
                                          onTap:(){
                                            print("Hello GestureDetector");
                                          },
                                          child: DropdownSearch<String>(
                                              hint: "Select info",
                                              mode: Mode.MENU,
                                              items: model.postModel.map((e) => e.title).toList(),
                                              label: "Search info",
                                              showClearButton: true,
                                              showSearchBox: true,
                                              onChanged: print,
                                              onBeforeChange: (a, b) {
                                                print("hello a $a and b $b");
                                                if (b == null) {
                                                  AlertDialog alert = AlertDialog(
                                                    title: Text("Are you sure..."),
                                                    content: Text(
                                                        "...you want to clear the selection"),
                                                    actions: [
                                                      TextButton(
                                                        child: Text("OK"),
                                                        onPressed: () {
                                                          Navigator.of(context).pop(true);
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text("NOT OK"),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop(false);
                                                        },
                                                      ),
                                                    ],
                                                  );

                                                  return showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (BuildContext context) {
                                                        return alert;
                                                      });
                                                }

                                                return Future.value(true);
                                              },
                                          ),
                                        ),
                                      ],
                                     )
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            MaterialButton(
                                height: 50.0,
                                color: Colors.blueGrey,
                                child: Text("Search"),
                                onPressed: () {
                                }),
                            SizedBox(
                              width: 5.0,
                            ),
                            MaterialButton(
                                child: Text("+  Create User"),
                                minWidth: 150.0,
                                height: 50.0,
                                color: Colors.grey.shade300,
                                onPressed: () {
                                  postOne.navigateToCreateUser();
                                })
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          // color: Colors.redAccent,
                          child: DataTableWidget(model.postModel)),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 8.0),
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
                                  onPressed: () {
                                    if (model.page > 1) {
                                      model.page -= 1;
                                      print("res page -= ${model.page}");
                                    } else {
                                      model.updatePageAndLimit(model.page);
                                      setState(() {});
                                    }
                                  }),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text("Page ${model.page}"),
                              SizedBox(
                                width: 15.0,
                              ),
                              MaterialButton(
                                  minWidth: 15.0,
                                  color: Colors.grey,
                                  child: Icon(Icons.arrow_right),
                                  onPressed: () {
                                    setState(() {
                                      model.page += 1;
                                    });
                                    model.updatePageAndLimit(model.page);
                                  }),
                              SizedBox(
                                width: 8.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }
}
