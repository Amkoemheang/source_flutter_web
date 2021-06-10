import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LayoutForm extends StatefulWidget {
  @override
  _LayoutFormState createState() => _LayoutFormState();
}

class _LayoutFormState extends State<LayoutForm> {
  @override
  Widget build(BuildContext context) {
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    MySource mySource = new MySource(["ab","bc","de","ef"]);
    return Scaffold(
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
      body: SafeArea(
        child: Column(
          children: [
            PaginatedDataTable(
              header: Center(child: Text('List Data')),
              columns: <DataColumn>[
                DataColumn(label: Text('No.')),
                DataColumn(label: Text('Data 1')),
                DataColumn(label: Text('Action')),
              ],
              source: mySource,
            ),
          ],
        ),
      ),
    );
  }
}
class MySource extends DataTableSource{
  List<String> value;
  MySource(this.value) {
    print("this is info value $value");
  }
  @override
  DataRow getRow(int index) {
   return DataRow.byIndex(index:index,
       cells: [
         DataCell(Text('$index')),
         DataCell(Text(value[index])),
         DataCell(InkWell(
           onTap:(){
             //fill the form above the table and after user fill it, the data inside the table will be refreshed
           },
           child: Text("Click"),
         ),),
   ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => value.length;

  @override

  int get selectedRowCount => 0;

}
