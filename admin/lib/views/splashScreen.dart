import 'package:flutter/cupertino.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.asset("assets/images/download.png",
        fit: BoxFit.fitHeight,
        width: MediaQuery.of(context).size.width,),
    );
  }
}
