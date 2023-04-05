import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  color: Color(0xCCCCCCFF),
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

class cardDetails extends StatelessWidget {
  cardDetails({this.cardIcon, this.cardText});
  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 100,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          cardText,
          style: labelStyle,
        ),
      ],
    );
  }
}
