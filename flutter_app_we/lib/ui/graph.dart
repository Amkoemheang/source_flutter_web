import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Graph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url = "https://www.leisureopportunities.co.uk/images/imagesX/249542_405534.jpg";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        automaticallyImplyLeading: false,
        elevation: 0.5,
        actions: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.cyan,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.menu),
                  ),
                  Spacer(),
                  Icon(Icons.message),
                  SizedBox(width: 10,),
                  CircleAvatar(),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text("Jonh Smit"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white54,
              height: 80.0,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.people),
                                  Text("Total User"),
                                ],
                              ),
                              SizedBox(height: 2.0,),
                              Text("2500"),
                              SizedBox(height: 3.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.refresh),
                                  Text("From last week"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.red,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.yellow,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.greenAccent,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.black54,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width/6,
                          height: 80.0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              )

          ),
        ],
      )
    );
  }
}
