//reusing a layout
// ignore: must_be_immutable
import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  Reusable({@required this.color, this.cardChild,this.onpressed});
  final Color color;
  final Widget cardChild; //this can be a property when using the reusable class
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        //custom widget
        
        child: cardChild,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(9)),
        height: 150,
        //width: 150,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    );
  }
}
