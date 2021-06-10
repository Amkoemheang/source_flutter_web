import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/todoController.dart';
import 'package:getx/services/models/model_post.dart';
import 'package:getx/web/user/create_new_user.dart';
import 'package:getx/web/user/update_info.dart';

class Document extends StatefulWidget {
  @override
  _DocumentState createState() => _DocumentState();
}
final  TodoController _controller = Get.put(TodoController());
class _DocumentState extends State<Document> {
  DTS dts = DTS(postModel:_controller.postModel);
  int _roePaperPage = PaginatedDataTable.defaultRowsPerPage;
  @override
  Widget build(BuildContext context) {
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return Scaffold(
      backgroundColor: Colors.white,
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
                      badgeContent: Text('7',style: TextStyle(fontSize: 10.0,color: Colors.white),),
                      child: Icon(Icons.all_inbox,color: Colors.white,),
                    ),
                    onPressed: (){

                    }),
                SizedBox(width: 1.0,),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Badge(
                      badgeContent: Text('5',style: TextStyle(fontSize: 10.0,color: Colors.white),),
                      child: Icon(Icons.notifications,color: Colors.white,),
                    ),
                    onPressed: (){

                    }),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Badge(
                      badgeContent: Text('1',style: TextStyle(fontSize: 10.0,color: Colors.white),),
                      child: Icon(Icons.flag,color: Colors.white,),
                    ),
                    onPressed: (){

                    }),
                // SizedBox(width: 1.0,),
                // MaterialButton(
                //     height: MediaQuery.of(context).size.height,
                //     hoverColor: Colors.grey,
                //     child: Row(
                //       children: [
                //         SizedBox(width: 2.0,),
                //         Container(
                //           width: 30.0,
                //           height: 30.0,
                //           child: ClipRRect(
                //             borderRadius: BorderRadius.circular(50.0),
                //             child: Image.network(src),
                //           ),
                //         ),
                //         SizedBox(width: 5.0,),
                //         Text("Alexander Pierce",style: TextStyle(color: Colors.white),)
                //       ],
                //     ),
                //     onPressed: (){
                //
                //     }),
                // SizedBox(width: 1.0,),
                // SizedBox(width: 1.0,),
                // MaterialButton(
                //     height: MediaQuery.of(context).size.height,
                //     hoverColor: Colors.grey,
                //     child: Icon(Icons.share_rounded,color: Colors.white,),
                //     onPressed: (){
                //
                //     })
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Container(
          color: Colors.white,
              child: PaginatedDataTable(
                  columnSpacing: 80.0,
                  horizontalMargin:100.0,
                  sortAscending:true,
                  showFirstLastButtons:false,

                header: Text("Welcome"),
                columns: [
                  DataColumn(label: Text("UserId")),
                  DataColumn(label: Text("Id")),
                  DataColumn(label: Text("Title")),
                  DataColumn(label: Text("Body")),
                  DataColumn(label: Text("Other")),
                ],
                source: dts,
                onRowsPerPageChanged: (r){
                  setState(() {
                    _roePaperPage = r;
                  });
                },
              rowsPerPage: _roePaperPage,
              ),
        ),
      ),
    );
  }
}
class DTS extends DataTableSource{
 final BuildContext context;
 List <PostModel> postModel;
 DTS({@required this.postModel,this.context}):_postModel = postModel,assert(postModel !=null);
 final List<PostModel> _postModel;
  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if(index >= _postModel.length){
      return null;
    }
    final _temp = _postModel[index];
    return DataRow.byIndex(
        index:index,
        cells: [
          DataCell(Text(_temp.userId.toString())),
          DataCell(Text(_temp.id.toString())),
          DataCell(Text(_temp.title)),
          DataCell(Text(_temp.body )),
          DataCell(Row(
            children: [
               GestureDetector(
                 onTap:(){
                   print("Information GestureDetector Container ");
                   Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewUser()));
                  },
                 child: Container(
                    width: 70.0,
                    height: 40.0,
                    color: Colors.redAccent,
                    // child: MaterialButton(
                    //   onPressed: (){
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => CreateNewUser()));
                    //     //)
                    //     //print("Hello Update MaterialButton $index");
                    //     //postModel.removeAt(index);
                    //     //_controller.postModel.removeAt(index);
                    //     //_controller.deleteTodoTesting(postModel[index].id);
                    //     //   showDialog(
                    //     //       context: context,
                    //     //       builder: (BuildContext context){
                    //     //         return AlertDialog(
                    //     //           title: Text("Deleted Data"),
                    //     //           content: Text("Are you sure deleted this data?"),
                    //     //           actions: [
                    //     //             // ignore: deprecated_member_use
                    //     //             FlatButton(
                    //     //                 onPressed: (){
                    //     //                   Navigator.of(context).pop(context);
                    //     //                   print("Hello No");
                    //     //                 },
                    //     //                 child: Text("No",style: TextStyle(color: Colors.blue),)),
                    //     //             // ignore: deprecated_member_use
                    //     //             FlatButton(
                    //     //                 onPressed: () async{
                    //     //                   _controller.postModel.removeAt(index);
                    //     //                   _controller.deleteTodoTesting(postModel[index].id);
                    //     //                   Navigator.pop(context);
                    //     //                 },
                    //     //                 child: Text("Yes",style: TextStyle(color: Colors.red),))],
                    //     //         );
                    //     // });
                    //   },
                    //   //child: Text("Delete",style: TextStyle(color: Colors.black),),
                    // ),
              ),
               ),
              GestureDetector(
                onTap: (){
                  print("Hello Deleted");
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => CreateNewUser()));
                },
                child:
                Container(
                  width: 70.0,
                  height: 40.0,
                  color: Colors.green,
                  child: MaterialButton(
                    onPressed: (){
                      print("Information key $index");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => UpdateInfo(id: _temp.id.toString(),userId: _temp.userId.toString(),body:_temp.body.toString(),title: _temp.title,)),
                      // ).then((value) => {
                      //   if(value is PostModel){
                      //     _controller.postModel[index] = value,
                      //     print("result ${value.body}")
                      //   }
                      //
                      // });
                    },
                    child: Text("Update",style: TextStyle(color: Colors.black),),
                  ),
                ),
              ),
            ],
          )),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => postModel.length;

  @override
  int get selectedRowCount => 0;

}
