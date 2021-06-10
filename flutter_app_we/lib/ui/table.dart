import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_we/share/dataTableWidget.dart';
import 'package:flutter_app_we/view_model/base_view.dart';
import 'package:flutter_app_we/view_model/postVM.dart';

class TableOne extends StatefulWidget {
  @override
  _TableOneState createState() => _TableOneState();
}
  @override
  void initState() {

}
class _TableOneState extends State<TableOne> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PostVM>(
      onModelReady: (model) async => {
        model.fetchFinalTodoTesting()
      },
      builder: (context, model, child) {
        return model.isLoading ? Center(
          child: Text("isLoading"),
        ): Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
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
                      Container(
                        width: 200.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        color: Colors.grey.shade300,
                        child: TextField(
                          //controller: searchTextController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                                color: Colors.grey, letterSpacing: 1.0),
                          ),
                          onChanged: (valueText) {
                            if (valueText.isEmpty) {
                              print("result valueText $valueText");
                              setState(() {
                                // _controller.postModel.value = _controller.postModel.value;
                                // _controller.searchPost.value = [];
                              });
                            }
                            print("Information value $valueText");
                          },
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      MaterialButton(
                          height: 45.0,
                          color: Colors.blueGrey,
                          child: Text("Search"),
                          onPressed: () {
                            // searchMethod(searchTextController.text);
                          }),
                      SizedBox(
                        width: 5.0,
                      ),
                      MaterialButton(
                          child: Text("+  Create User"),
                          minWidth: 150.0,
                          height: 45.0,
                          color: Colors.grey.shade300,
                          onPressed: () {
                            // Navigator.push(context,
                            //   MaterialPageRoute(builder: (context) => CreateNewUser()),
                            // ).then((value) => {
                            //   print("Information value $value"),
                            // });
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
                    child: DataTableWidget(model.postModel)
                ),
              ),
              Container(
                child:   Padding(
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
                              if (model.page > 1) {
                                  model.page -= 1;
                                print("res page -= ${model.page}");
                              }else{
                                model.updatePageAndLimit(model.page);
                                setState(() {});
                              }
                             }
                            ),
                        SizedBox(width: 15.0,),
                        Text("Page ${model.page}"),
                        SizedBox(width: 15.0,),
                        MaterialButton(
                            minWidth: 15.0,
                            color: Colors.grey,
                            child: Icon(Icons.arrow_right),
                            onPressed: (){
                              setState(() {
                                model.page += 1;
                              });
                             model.updatePageAndLimit(model.page);
                            }),
                        SizedBox(width: 8.0,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },);
  }
}
