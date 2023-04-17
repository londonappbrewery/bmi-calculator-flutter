import 'package:flutter/material.dart';
import '../constants.dart';

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
          style: kLabelStyle,
        ),
      ],
    );
  }
}
