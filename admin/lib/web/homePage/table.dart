import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LayoutTable extends StatefulWidget {
  @override
  _LayoutTableState createState() => _LayoutTableState();
}

class _LayoutTableState extends State<LayoutTable> {
  @override
  Widget build(BuildContext context) {
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
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
                SizedBox(width: 1.0,),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(width: 2.0,),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.network(src),
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        Text("Alexander Pierce",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    onPressed: (){

                    }),
                SizedBox(width: 1.0,),
                SizedBox(width: 1.0,),
                MaterialButton(
                    height: MediaQuery.of(context).size.height,
                    hoverColor: Colors.grey,
                    child: Icon(Icons.share_rounded,color: Colors.white,),
                    onPressed: (){

                    })
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 12.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            color:Colors.red,
            child: DataTable(
                columns: [
                  DataColumn(
                    label: Text('No'),
                    tooltip: 'No'
                  ),
                  DataColumn(
                      label: Text('Id'),
                      tooltip: 'Id'
                  ),
                  DataColumn(
                      label: Text('Photo'),
                      tooltip: 'Photo'
                  ),
                  DataColumn(
                      label: Text('Name'),
                      tooltip: 'Name'
                  ),
                  DataColumn(
                      label: Text('Phone'),
                      tooltip: 'Phone'
                  ),
                  DataColumn(
                      label: Text('Date'),
                      tooltip: 'Date'
                  ),
                  DataColumn(
                      label: Text('Status'),
                      tooltip: 'Status'
                  ),
                  DataColumn(
                      label: Text('Feature'),
                      tooltip: 'Feature'
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("No")),
                    DataCell(Text("Id")),
                    DataCell(Text("Photo")),
                    DataCell(Text("Name")),
                    DataCell(Text("Phone")),
                    DataCell(Text("Date")),
                    DataCell(Text("Status")),
                    DataCell(Text("Feature")),

                  ])
                ]),
          ),
        ),
      ),
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.width,
      // color: Colors.lightGreenAccent,
    );
  }
}
