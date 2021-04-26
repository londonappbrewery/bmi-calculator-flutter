

import 'package:flutter/material.dart';

class Roundiconbutton extends StatelessWidget {
  //const Roundiconbutton({Key key}) : super(key: key);
  final IconData childicon;
  final Function onpressed;
  Roundiconbutton({@required this.childicon, @required this.onpressed});
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return RawMaterialButton(
      child: Icon(childicon),
      //shape border
      // the buttons are disables by default set the onpressed function to enable them
      onPressed: onpressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF3E4044),
    );
  }
}