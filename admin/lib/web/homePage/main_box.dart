import 'package:badges/badges.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/web/table/tableTestingLibrary.dart';
class MainBox extends StatefulWidget {
  @override
  _MainBoxState createState() => _MainBoxState();
}

class _MainBoxState extends State<MainBox> {
  // final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  // final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
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
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 15.0),
                  child: Row(
                    children: [
                      Text("Mailbox",style: TextStyle(color: Colors.black,fontSize: 26.0),),
                      SizedBox(width: 20.0,),
                      Text("13 new messages",style: TextStyle(color: Colors.grey,fontSize: 16.0),),
                      Spacer(),
                      Icon(Icons.av_timer_outlined,size: 16,),
                      Text(" Home > ",style: TextStyle(color: Colors.black),),
                      Text("Dashboard",style: TextStyle(color: Colors.grey),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,top: 20.0,right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           // Column(
                           //   children: [
                           //     Container(
                           //       width: 300.0,
                           //       height: 35.0,
                           //       decoration: BoxDecoration(
                           //           color: Colors.lightBlue,
                           //           borderRadius: BorderRadius.circular(3.0)
                           //       ),
                           //       child: MaterialButton(
                           //           child: Text("Compose",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                           //           onPressed: (){}
                           //       ),
                           //     ),
                           //     SizedBox(height: 15.0,),
                           //     Container(
                           //       width: 300.0,
                           //       height: MediaQuery.of(context).size.height,
                           //       decoration: BoxDecoration(
                           //           color: Colors.redAccent,
                           //         borderRadius: BorderRadius.circular(3.0)
                           //       ),
                           //     )
                           //   ],
                           // ),
                          Container(
                              width: 300.0,
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 35.0,
                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                    borderRadius: BorderRadius.circular(3.0)
                                  ),
                                  child: MaterialButton(
                                    child: Text("Compose",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                    onPressed: (){

                                    },
                                  ),
                                ),
                                SizedBox(height:10.0,),
                                ExpansionTileCard(
                                  expandedTextColor: Colors.black,
                                  leading: CircleAvatar(child: Text('F')),
                                  title: Text("Folders"),
                                  children: [
                                    Divider(
                                      thickness: 1.0,
                                      height: 1.0,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 1.0,
                                          vertical: 1.0,
                                        ),
                                        child:Column(
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context).size.width,
                                                height:35.0,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 8.0),
                                                      child: Icon(Icons.message_rounded,size: 18,),
                                                    ),
                                                    SizedBox(width: 10.0,),
                                                    Text("Inbox"),
                                                    Spacer(),
                                                    Padding(
                                                      padding: const EdgeInsets.only(right: 8.0),
                                                      child: Container(
                                                        alignment: Alignment.center,
                                                        width: 30.0,
                                                        height: 20.0,
                                                        decoration: BoxDecoration(
                                                            color: Colors.deepPurple,
                                                            borderRadius: BorderRadius.circular(2)
                                                        ),
                                                        child: Text("12",style:TextStyle(fontSize: 16.0,color: Colors.red),),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ),
                                            Divider(thickness: 0.5,color: Colors.grey.withOpacity(0.5),),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 25.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.drafts_outlined,size: 18),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Send"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      width: 30.0,
                                                      height: 20.0,
                                                      decoration: BoxDecoration(
                                                          color: Colors.lightGreen,
                                                          borderRadius: BorderRadius.circular(2)
                                                      ),
                                                      child: Text("12",style:TextStyle(fontSize: 16.0,color: Colors.red),),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(thickness: 0.5,color: Colors.grey.withOpacity(0.5),),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 25.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.drafts,size: 18),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Drafts"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.deepPurple,
                                                      //     borderRadius: BorderRadius.circular(2)
                                                      // ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(thickness: 0.5,color: Colors.grey.withOpacity(0.5),),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 25.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.adjust,size: 18),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Junk"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      width: 30.0,
                                                      height: 20.0,
                                                      decoration: BoxDecoration(
                                                          color: Colors.yellowAccent.shade200,
                                                          borderRadius: BorderRadius.circular(2)
                                                      ),
                                                      child: Text("15",style:TextStyle(fontSize: 16.0,color: Colors.white),),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(thickness: 0.5,color: Colors.grey.withOpacity(0.5),),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 25.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.restore_from_trash_outlined,size: 18),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("trash"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.deepPurple,
                                                      //     borderRadius: BorderRadius.circular(2)
                                                      // ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(thickness: 0.1,color: Colors.grey.withOpacity(0.5),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0,),
                                ExpansionTileCard(
                                  expandedTextColor: Colors.black,
                                  leading: CircleAvatar(child: Text('L')),
                                  title: Text("Labels"),
                                  children: [
                                    Divider(
                                      thickness: 1.0,
                                      height: 1.0,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 1.0,
                                          vertical: 1.0,
                                        ),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 35.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.brightness_1_outlined,color: Colors.red,size: 18.0,),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Important"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.deepPurple,
                                                      //     borderRadius: BorderRadius.circular(2)
                                                      // ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              height: 1.0,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 35.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.brightness_1_outlined,color: Colors.yellow.shade500,size: 18.0,),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Promotions"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.deepPurple,
                                                      //     borderRadius: BorderRadius.circular(2)
                                                      // ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              height: 1.0,
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width,
                                              height: 35.0,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 8.0),
                                                    child: Icon(Icons.brightness_1_outlined,color: Colors.deepPurple,size: 18.0,),
                                                  ),
                                                  SizedBox(width: 10.0,),
                                                  Text("Social"),
                                                  Spacer(),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Container(
                                                      width: 20.0,
                                                      height: 20.0,
                                                      // decoration: BoxDecoration(
                                                      //     color: Colors.deepPurple,
                                                      //     borderRadius: BorderRadius.circular(2)
                                                      // ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                          SizedBox(width: 20.0,),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 696.0,
                              color: Colors.grey.shade300,
                              child: DataPage(),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
