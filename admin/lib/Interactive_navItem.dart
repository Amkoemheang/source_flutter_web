import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'services/constants/Text_constant.dart';


class InteractiveNavItem extends MouseRegion {
    static final appContainer = html.window.document.querySelectorAll('flt-glass-pane')[0];
  InteractiveNavItem(
      {Widget child, String text, String routeName, bool selected,IconData icon})
      : super(
    onHover: (PointerHoverEvent evt) {
      appContainer.style.cursor = 'pointer';
    },
    onExit: (PointerExitEvent evt) {
      appContainer.style.cursor = 'default';
    },
    child: InteractiveText(
      icon:icon,
      text: text,
      routeName: routeName,
      selected: selected,
    ),
  );
}

class InteractiveText extends StatefulWidget {
  final String text;
  final String routeName;
  final bool selected;
  final IconData icon;
  // final Icon icon1;

  const InteractiveText({
    @required this.text,
    this.routeName,
    this.selected,
    this.icon,
    // this.icon1,
  });

  @override
  InteractiveTextState createState() => InteractiveTextState();
}

class InteractiveTextState extends State<InteractiveText> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // hover on text....
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child:
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 50.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            height: 50.0,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(widget.icon,color: Colors.white,),
                SizedBox(width: 40.0,),Text(widget.text,
                    style: _hovering ? kPageTitleStyle.copyWith(color: Colors.indigo, decoration: TextDecoration.underline)
                        : (widget.selected) ? kPageTitleStyle.copyWith(color: Colors.white)
                        : kPageTitleStyle,textAlign: TextAlign.center,),
                Spacer(),
                Icon(Icons.add,size: 18,color: Colors.white,)
              ],
            )

          )
        )
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}