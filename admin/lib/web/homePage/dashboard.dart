import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/main.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final src = "http://3.bp.blogspot.com/-qWEFTRAiDPs/U9N7-I54mdI/AAAAAAAAP8A/3tBHU-tI7mo/s1600/CATWS_AlexanderPierce.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 50.0,
        actions: [
            Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                      // MaterialButton(
                      //     height: MediaQuery.of(context).size.height,
                      //     hoverColor: Colors.grey,
                      //     child: Row(
                      //       children: [
                      //         SizedBox(width: 2.0,),
                      //         Container(
                      //           width: 20.0,
                      //           height: 20.0,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(50.0),
                      //             child: Image.network(src),
                      //           ),
                      //         ),
                      //         SizedBox(width: 2.0,),
                      //         Text("Alexander ",style: TextStyle(color: Colors.white),)
                      //       ],
                      //     ),
                      //     onPressed: (){
                      //
                      //     }),
                     // MaterialButton(
                     //     height: MediaQuery.of(context).size.height,
                     //     hoverColor: Colors.grey,
                     //     child: Icon(Icons.share_rounded,color: Colors.white,),
                     //     onPressed: (){
                     //
                     //     })
                    ],
                  ),
                ),
              ),
        ],
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 14.0),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Text("Dashboard",style: TextStyle(color: Colors.black,fontSize: 26.0),),
                            SizedBox(width: 20.0,),
                            Expanded(child: Text("Panel",style: TextStyle(color: Colors.grey,fontSize: 18.0),)),
                            // Spacer(),
                            //Icon(Icons.av_timer_outlined,size: 16,),
                            //Text("Home >",style: TextStyle(color: Colors.black),),
                            //Text("Dashboard",style: TextStyle(color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width/4,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Column(
                                  children: [
                                    // Expanded(
                                    //   child: Row(
                                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Column(
                                    //         mainAxisAlignment: MainAxisAlignment.center,
                                    //         crossAxisAlignment: CrossAxisAlignment.start,
                                    //         children: [
                                    //           Padding(
                                    //             padding: const EdgeInsets.only(left: 12.0,top: 0.0),
                                    //             child: Text("150",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
                                    //           ),
                                    //           SizedBox(height: 3.0,),
                                    //           Padding(
                                    //               padding: EdgeInsets.only(left: 0.0),
                                    //               child: Expanded(child: Text("New order",style: TextStyle(color: Colors.white,fontSize: 16.0),))),
                                    //         ],
                                    //       ),
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(right: 20.0,top: 20.0),
                                    //         child: Container(
                                    //           width: 100.0,
                                    //           height: 100.0,
                                    //           //child: Icon(Icons.shopping_bag_outlined,size: 100,color: Colors.white24,),
                                    //         ),
                                    //       )
                                    //     ],
                                    //   ),
                                    // ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width,
                                      height: 30.0,
                                      color: Colors.black12,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Text("More Info",style: TextStyle(color: Colors.white),),
                                          // Icon(Icons.navigate_next,size: 19,color: Colors.white,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width/4,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Column(
                                  children: [
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Column(
                                    //       mainAxisAlignment: MainAxisAlignment.center,
                                    //       crossAxisAlignment: CrossAxisAlignment.start,
                                    //       children: [
                                    //         Padding(
                                    //           padding: const EdgeInsets.only(left: 12.0,top: 0.0),
                                    //           child: Text("53%",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
                                    //         ),
                                    //         SizedBox(height: 10.0,),
                                    //         Padding(
                                    //             padding: EdgeInsets.only(left: 12.0),
                                    //             child: Text("Bounce Rate",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
                                    //       ],
                                    //     ),
                                    //     Padding(
                                    //       padding: const EdgeInsets.only(right: 20.0,top: 20.0),
                                    //       child: Container(
                                    //         width: 100.0,
                                    //         height: 100.0,
                                    //         //child: Icon(Icons.bar_chart,size: 100,color: Colors.white24,),
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width,
                                      height: 30.0,
                                      color: Colors.black12,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Text("More Info",style: TextStyle(color: Colors.white),),
                                          // Icon(Icons.navigate_next,size: 19,color: Colors.white,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Expanded(
                              child: Container(
                                width: MediaQuery.of(context).size.width/4,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Column(
                                  children: [
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Column(
                                    //       mainAxisAlignment: MainAxisAlignment.center,
                                    //       crossAxisAlignment: CrossAxisAlignment.start,
                                    //       children: [
                                    //         Padding(
                                    //           padding: const EdgeInsets.only(left: 12.0,top: 0.0),
                                    //           child: Text("44",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
                                    //         ),
                                    //         SizedBox(height: 10.0,),
                                    //         Padding(
                                    //             padding: EdgeInsets.only(left: 12.0),
                                    //             child: Text("User Registrations",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
                                    //       ],
                                    //     ),
                                    //     Padding(
                                    //       padding: const EdgeInsets.only(right: 20.0,top: 20.0),
                                    //       child: Container(
                                    //         width: 100.0,
                                    //         height: 100.0,
                                    //        // child: Icon(Icons.people_alt,size: 100,color: Colors.white24,),
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width,
                                      height: 30.0,
                                      color: Colors.black12,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          // Text("More Info",style: TextStyle(color: Colors.white),),
                                          // Icon(Icons.navigate_next,size: 19,color: Colors.white,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Expanded(
                              child: Container(
                                //width: MediaQuery.of(context).size.width/4,
                                height: 150.0,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Column(
                                  children: [
                                     Row(
                                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Column(
                                          //   // mainAxisAlignment: MainAxisAlignment.center,
                                          //   crossAxisAlignment: CrossAxisAlignment.start,
                                          //   children: [
                                          //      Text("65",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
                                          //      Text("Unique Visitors",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                                          //   ],
                                          // ),
                                          // Container(
                                          //     width: 100.0,
                                          //     height: 100.0,
                                          //     //child: Icon(Icons.pie_chart,size: 100,color: Colors.white24,),
                                          //   ),
                                        ],

                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width,
                                      height: 30.0,
                                      color: Colors.black12,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          //  Text("More Info",style: TextStyle(color: Colors.white),),
                                          // Expanded(child: Icon(Icons.navigate_next,size: 19,color: Colors.white,))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5.0,),
                                        Icon(Icons.point_of_sale,color: Colors.white,),
                                        SizedBox(width: 15.0,),
                                        Text("Sale",style: TextStyle(color: Colors.white,fontSize: 18.0),),
                                        Spacer(),
                                        Expanded(child: Text("Donut",style: TextStyle(color: Colors.white,fontSize: 14.0),)),
                                        SizedBox(width: 5.0,),
                                        Expanded(child: Text("Area",style: TextStyle(color: Colors.white,fontSize: 14.0),)),
                                        SizedBox(width: 5.0,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5.0,),
                                        Icon(Icons.location_on,color: Colors.white,),
                                        SizedBox(width: 5.0,),
                                        Text("Visitors",style: TextStyle(color: Colors.white,fontSize: 18.0),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5.0,),
                                        Icon(Icons.chat,color: Colors.white,),
                                        SizedBox(width: 15.0,),
                                        Text("Chat",style: TextStyle(color: Colors.white,fontSize: 18.0),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                         Icon(Icons.graphic_eq_rounded,color: Colors.white,),
                                        SizedBox(width: 5.0,),
                                        Expanded(child: Text("Sale Grap",style: TextStyle(color: Colors.white,fontSize: 18.0),)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 40.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                        Icon(Icons.chat,color: Colors.white,),
                                        SizedBox(width: 5.0,),
                                        Expanded(child: Text("Todo List",style: TextStyle(color: Colors.white,fontSize: 18.0),)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15.0,),
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(3.0)
                                    ),
                                  ),
                                  Container(
                                    //width: MediaQuery.of(context).size.width,
                                    // height: 350.0,
                                    color: Colors.grey.shade400,
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5.0,),
                                        Icon(Icons.calendar_today_sharp,color: Colors.white,),
                                        SizedBox(width: 5.0,),
                                        Expanded(child: Text("Calender",style: TextStyle(color: Colors.white,fontSize: 18.0),)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )

      // Center(
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: MediaQuery.of(context).size.width,
      //     color: Colors.white,
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 14.0),
      //       child: Column(
      //         children: [
      //           SizedBox(height: 10.0,),
      //           Row(
      //             children: [
      //               Text("Dashboard",style: TextStyle(color: Colors.black,fontSize: 26.0),),
      //               SizedBox(width: 20.0,),
      //               Text("Control panel",style: TextStyle(color: Colors.grey,fontSize: 18.0),),
      //               Spacer(),
      //               Icon(Icons.av_timer_outlined,size: 16,),
      //               Text(" Home > ",style: TextStyle(color: Colors.black),),
      //               Text("Dashboard",style: TextStyle(color: Colors.grey),),
      //
      //             ],
      //           ),
      //           SizedBox(height: 15.0,),
      //           Row(
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/4,
      //                   height: 150.0,
      //                   decoration: BoxDecoration(
      //                     color: Colors.lightBlueAccent,
      //                     borderRadius: BorderRadius.circular(3.0),
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.only(left: 12.0,top: 0.0),
      //                                 child: Text("150",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
      //                               ),
      //                               SizedBox(height: 10.0,),
      //                               Padding(
      //                                   padding: EdgeInsets.only(left: 12.0),
      //                                   child: Text("New order",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
      //                             ],
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 20.0,top: 20.0),
      //                             child: Container(
      //                               width: 100.0,
      //                               height: 100.0,
      //                               child: Icon(Icons.shopping_bag_outlined,size: 100,color: Colors.white24,),
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                       Spacer(),
      //                       Container(
      //                         alignment: Alignment.center,
      //                         width: MediaQuery.of(context).size.width,
      //                         height: 30.0,
      //                         color: Colors.black12,
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text("More Info",style: TextStyle(color: Colors.white),),
      //                             Icon(Icons.navigate_next,size: 19,color: Colors.white,)
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(width: 8,),
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/4,
      //                   height: 150.0,
      //                   decoration: BoxDecoration(
      //                     color: Colors.green,
      //                     borderRadius: BorderRadius.circular(3.0),
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.only(left: 12.0,top: 0.0),
      //                                 child: Text("53%",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
      //                               ),
      //                               SizedBox(height: 10.0,),
      //                               Padding(
      //                                   padding: EdgeInsets.only(left: 12.0),
      //                                   child: Text("Bounce Rate",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
      //                             ],
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 20.0,top: 20.0),
      //                             child: Container(
      //                               width: 100.0,
      //                               height: 100.0,
      //                               child: Icon(Icons.bar_chart,size: 100,color: Colors.white24,),
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                       Spacer(),
      //                       Container(
      //                         alignment: Alignment.center,
      //                         width: MediaQuery.of(context).size.width,
      //                         height: 30.0,
      //                         color: Colors.black12,
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text("More Info",style: TextStyle(color: Colors.white),),
      //                             Icon(Icons.navigate_next,size: 19,color: Colors.white,)
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(width: 8,),
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/4,
      //                   height: 150.0,
      //                   decoration: BoxDecoration(
      //                     color: Colors.yellow.shade400,
      //                     borderRadius: BorderRadius.circular(3.0),
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.only(left: 12.0,top: 0.0),
      //                                 child: Text("44",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
      //                               ),
      //                               SizedBox(height: 10.0,),
      //                               Padding(
      //                                   padding: EdgeInsets.only(left: 12.0),
      //                                   child: Text("User Registrations",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
      //                             ],
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 20.0,top: 20.0),
      //                             child: Container(
      //                               width: 100.0,
      //                               height: 100.0,
      //                               child: Icon(Icons.people_alt,size: 100,color: Colors.white24,),
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                       Spacer(),
      //                       Container(
      //                         alignment: Alignment.center,
      //                         width: MediaQuery.of(context).size.width,
      //                         height: 30.0,
      //                         color: Colors.black12,
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text("More Info",style: TextStyle(color: Colors.white),),
      //                             Icon(Icons.navigate_next,size: 19,color: Colors.white,)
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //               SizedBox(width: 8,),
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/4,
      //                   height: 150.0,
      //                   decoration: BoxDecoration(
      //                     color: Colors.redAccent,
      //                     borderRadius: BorderRadius.circular(3.0),
      //                   ),
      //                   child: Column(
      //                     children: [
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.only(left: 12.0,top: 0.0),
      //                                 child: Text("65",style: TextStyle(color: Colors.white,fontSize: 32.0,fontWeight: FontWeight.bold),),
      //                               ),
      //                               SizedBox(height: 10.0,),
      //                               Padding(
      //                                   padding: EdgeInsets.only(left: 12.0),
      //                                   child: Text("Unique Visitors",style: TextStyle(color: Colors.white,fontSize: 16.0),)),
      //                             ],
      //                           ),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 20.0,top: 20.0),
      //                             child: Container(
      //                               width: 100.0,
      //                               height: 100.0,
      //                               child: Icon(Icons.pie_chart,size: 100,color: Colors.white24,),
      //                             ),
      //                           )
      //                         ],
      //                       ),
      //                       Spacer(),
      //                       Container(
      //                         alignment: Alignment.center,
      //                         width: MediaQuery.of(context).size.width,
      //                         height: 30.0,
      //                         color: Colors.black12,
      //                         child: Row(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           children: [
      //                             Text("More Info",style: TextStyle(color: Colors.white),),
      //                             Icon(Icons.navigate_next,size: 19,color: Colors.white,)
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 15.0,),
      //           Row(
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/2,
      //                   height: 300.0,
      //                   color: Colors.red,
      //                 ),
      //               ),
      //               SizedBox(width: 15.0,),
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/2,
      //                   height: 300.0,
      //                   color: Colors.greenAccent,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           SizedBox(height: 15.0,),
      //           Row(
      //             children: [
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/2,
      //                   height: 300.0,
      //                   color: Colors.red,
      //                 ),
      //               ),
      //               SizedBox(width: 15.0,),
      //               Expanded(
      //                 child: Container(
      //                   width: MediaQuery.of(context).size.width/2,
      //                   height: 300.0,
      //                   color: Colors.greenAccent,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
