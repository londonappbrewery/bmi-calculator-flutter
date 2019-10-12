import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResults,@required this.resultText,@required this.intrepretation});

  final String bmiResults;
  final String resultText;
  final String intrepretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("                  REPORT"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "->  Under   18.5 = Underweight . \n->  18.5 to 24.9 = Normal . \n->  25.0 to 29.9 = Overweight .\n->  Above  30.0 = Obese .",
                  style: kInstTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kinactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                     resultText.toUpperCase() ,//frominput page
                    style: kTitleTextStyle,
                  ),
                  Text(
                    bmiResults ,//from input page
                    style: kBMITextStyle,
                  ),
                  Text(
                    intrepretation , //from input page
                    style: kBodytextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RECALCULATE',
          ),
        ],
      ),
    );
  }
}
