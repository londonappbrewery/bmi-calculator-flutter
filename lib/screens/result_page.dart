import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your Result',
                  style: ktitlefont,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'normal',
                      style: kresulttext,
                    ),
                    Text(
                      '66',
                      style: kbmitext,
                    ),
                    Text(
                      'you\'re a fat bitch.stop eating when you\'re bored and workout a bit.',
                      textAlign: TextAlign.center,
                      style: kbodytextstyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(() {
              Navigator.pop(context);
            }, 'RE-CALCULATE'),
          ],
        ));
  }
}
