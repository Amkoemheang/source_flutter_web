import 'package:flutter/cupertino.dart';

class AnimatingBar extends AnimatedWidget {
  final Color color;
  AnimatingBar(
      {Key key, Animation<double> animation, this.color})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Container(
      height: animation.value,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(2.0),
        color: color,
      ),
      width: 5.0,
    );
  }
}