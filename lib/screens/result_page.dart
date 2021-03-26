import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../Components/reusable_card.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(@required this.bmiresult, this.resulttext, this.interpretation);

  final String bmiresult;
  final String resulttext;
  final String interpretation;
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
                padding: EdgeInsets.all(30.0),
                alignment: Alignment.bottomLeft,
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
                      resulttext.toUpperCase(),
                      style: kresulttext,
                    ),
                    Text(
                      bmiresult,
                      style: kbmitext,
                    ),
                    Text(
                      interpretation,
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
