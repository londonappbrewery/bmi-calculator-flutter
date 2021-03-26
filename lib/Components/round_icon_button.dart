import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(@required this.icon, this.onpressed);
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 7.0,
      constraints: BoxConstraints.tightFor(
        width: 60.0,
        height: 60.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5C),
    );
  }
}
