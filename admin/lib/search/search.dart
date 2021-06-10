import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final  TodoController _controller = Get.put(TodoController());
  final searchTextController = TextEditingController();
  List<PostModel> newPostModel = List<PostModel>();
  @override
  void initState() {
    newPostModel = [];
    super.initState();
  }
  searchMethod(String title){
    print("Information title $title");
    searchTextController.addListener(() {
      if(searchTextController.text.length % 3 == 0 && searchTextController.text.length != 0){
        print("Information length zero ${newPostModel.length}");
        setState(() {
          print("Information length one ${newPostModel.length}");
          newPostModel = _controller.postModel.where((element) {
           print("Information length two ${newPostModel.length}");
           print("Information length searchController${searchTextController.text}");
            return element.title.toLowerCase().contains(searchTextController.text);
          }).toList();
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: searchTextController.text.isEmpty ? Container(
        child: Container(
          child:Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                TextField(
                  controller: searchTextController,
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                        onTap:(){
                          print("Hello searchController ${searchTextController.text}");
                          searchMethod(searchTextController.text);
                        },
                        child: Icon(Icons.search)),
                  ),
                  onChanged: (value){
                    print("Information value $value");
                  },
                ),
                Center(
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/2,
                      alignment: Alignment.center,
                      child: Text("No result"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ):
      Column(
        children: [
          TextField(
             controller: searchTextController,
            decoration: InputDecoration(
              prefixIcon: GestureDetector(
                  onTap:(){
                    print("Hello searchController ${searchTextController.text}");
                    searchMethod(searchTextController.text);
                  },
                  child: Icon(Icons.search)),
            ),
            onChanged: (value){
               print("Information value $value");
            },
          ),
          Expanded(
            child:Center(
              child: ListView.builder(
                  itemCount:newPostModel.length,
                  itemBuilder: (context, index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        color: index % 2 == 0 ? Colors.white : Colors.grey.withOpacity(0.5),
                        child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50.0,
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Container(
                                          alignment: Alignment.center,
                                          width: 200,
                                          child: Text(newPostModel[index].userId.toString(),style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)),
                                    Container(
                                          alignment: Alignment.center,
                                          width: 200,
                                          child: Text(newPostModel[index].id.toString(),style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)),
                                     Container(
                                          alignment: Alignment.centerLeft,
                                           width: MediaQuery.of(context).size.width/3,
                                          child: Text(newPostModel[index].title,style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)),
                                      Expanded(
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width/2,
                                            child: Text(newPostModel[index].body,style: TextStyle(color: Colors.black),textAlign: TextAlign.left,)),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            )
          )
        ],
      ),
    );
  }
}
