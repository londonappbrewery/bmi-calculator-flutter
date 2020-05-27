import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(

            buttonTitle,
            style: kBottomButton,
          ),
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomAccentColor,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}