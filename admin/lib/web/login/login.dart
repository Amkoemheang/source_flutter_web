import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getx/web/homePage/homePage.dart';
import '../../mainView.dart';
import '../../views/homeScreen.dart';
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent.shade100,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(color: Colors.blue.withOpacity(0.5), borderRadius: BorderRadius.circular(3)),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Welcome",style: TextStyle(fontSize: 32.0,color: Colors.white),)),
              Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{LogicalKeySet(LogicalKeyboardKey.space): const NextFocusIntent(),},
                child: FocusTraversalGroup(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    onChanged: () {Form.of(primaryFocus.context).save();},
                    child: Wrap(
                      children: List<Widget>.generate(2, (int index) {
                        return Padding(
                          padding:EdgeInsets.only(left: 8.0,right: 8.0,top: 20),
                          child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                                hintText: index % 2 == 0  ? "Email":"Password",
                                hintStyle: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Poppins',
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                                ),
                              )
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              SizedBox(width:12.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                   // MaterialPageRoute(builder: (context) => HomePage())
                   MaterialPageRoute(builder: (context) => MainView(child: null,))
                    // MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 30.0),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.redAccent, borderRadius: BorderRadius.circular(6)),
                      child: Text("Login")
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
