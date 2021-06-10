import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/web/user/create_new_user.dart';
import 'calender.dart';
import 'dashboard.dart';
import 'document.dart';
import 'main_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  final List res2 = [
    {
      "name":"Dashboard",
      "icon":"assets/images/dashboard.png"
    },
    {
      "name":"Form",
      "icon":"assets/images/form.png"
    },
    {
      "name":"MainBox",
      "icon":"assets/images/chart.png"
    },
    {
      "name":"FormTwo",
      "icon":"assets/images/form.png"
    },
    {
      "name":"Create User",
      "icon":"assets/images/document.png"
    },
  ];
  var indexSelect = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 250.0,
                height: MediaQuery.of(context).size.height,
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 250.0,
                      height: 50.0,
                      color: Colors.blueGrey,
                      child: Text("AdminLTE",style: TextStyle(color: Colors.white,fontSize: 24.0),),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 10.0,
                          left: 12.0,
                          right: 12.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 30.0,
                            decoration: BoxDecoration(
                                // color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            // child: TextFormField(
                            //
                            // )
                            // TextField(
                            //   style: TextStyle(fontSize: 14.0,color: Colors.white),
                            //   decoration: new InputDecoration(
                            //       border: InputBorder.none,
                            //       focusedBorder: InputBorder.none,
                            //       // enabledBorder: InputBorder.none,
                            //       // errorBorder: InputBorder.none,
                            //       // disabledBorder: InputBorder.none,
                            //       //prefixIcon: Icon(Icons.search,size: 18.0,),
                            //       suffixIcon: Icon(Icons.search,size: 18.0,color: Colors.white,),
                            //       contentPadding:
                            //       EdgeInsets.only(left: 15, bottom: 0.0, top: 2.5, right: 15),
                            //       hintText: "Search...",
                            //       hintStyle: TextStyle(color: Colors.white)),
                            // ),
                          ),
                        ),
                        Container(
                          width: 250.0,
                          color: Colors.black54,
                          height: 130,
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0,top: 20.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.network(src),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,top: 25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Alexander Pierce",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                    SizedBox(height: 5.0,),
                                    Row(
                                      children: [
                                        Icon(Icons.brightness_1,size: 14.0,color: Colors.green,),
                                        SizedBox(width: 5.0,),
                                        Text("Online",style: TextStyle(color: Colors.white,fontSize: 12.0),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 18.0),
                      alignment: Alignment.centerLeft,
                       //color: Color(0xFF333333),
                       color: Colors.redAccent,
                      width: MediaQuery.of(context).size.width,
                      height: 35.0,
                      child: Text("MAIN NAVIGATION",style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black54,
                            child: ListView.builder(
                                itemCount: res2.length,
                                itemBuilder: (context,index){
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 0.0,right: 0.0),
                                        child: GestureDetector(
                                          onTap: (){
                                            print("Hello world $index");
                                            setState(() {
                                              indexSelect = index;
                                            });
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 45.0,
                                            child: MaterialButton(
                                              color: indexSelect == index ? Colors.blueGrey :null,
                                                  onPressed: (){
                                                    setState(() {
                                                      indexSelect = index;
                                                    });
                                                     },
                                              child: Row(
                                                children: [
                                                  Image(image: AssetImage('${res2[index]['icon']}'),width: 20.0,height: 20.0,color: Colors.white,),
                                                  SizedBox(width: 15.0,),
                                                  Text("${res2[index]['name']}",style: TextStyle(fontSize: 14.0,color: Colors.white),),
                                                  Spacer(),
                                                  Icon(Icons.add,size: 16.0,color: Colors.white,),
                                                ],
                                              ),
                                            ),
                                          )
                                          // Container(
                                          //   alignment: Alignment.center,
                                          //   width: MediaQuery.of(context).size.width,
                                          //   height: 35.0,
                                          //   decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.circular(0.0),
                                          //   ),
                                          //   child: Row(
                                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //     children: [
                                          //       Image(image: AssetImage('${res2[index]['icon']}'),width: 20.0,height: 20.0,color: Colors.white,),
                                          //       SizedBox(width: 15.0,),
                                          //       Text("${res2[index]['name']}",style: TextStyle(fontSize: 14.0,color: Colors.white),),
                                          //       Spacer(),
                                          //       Icon(Icons.add,size: 16.0,color: Colors.white,),
                                          //     ],
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                      Divider(color: Colors.grey,thickness: 0.1,),
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      // color: Colors.blueGrey,
                      color: Colors.redAccent,
                    ),
                    Expanded(
                      child: indexSelect == 0 ? Dashboard() :
                          indexSelect == 1 ? Calender(userId: "",id: "",title: "",body: "",) :
                          indexSelect == 2 ? MainBox() :
                          indexSelect == 3 ? Document():
                          indexSelect == 4 ? CreateNewUser(): Center(),

                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
