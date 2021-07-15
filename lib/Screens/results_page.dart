import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/reusablecard.dart';
import 'input.dart';
import '../Components/bottombutton.dart';
import 'package:bmi_calculator/Calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.Interpetation});

  final String bmiResult;
  final String resultText;
  final String Interpetation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                "Your Result",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Color(0xFFFFFFFF)),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardClass: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kTitleTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    Interpetation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RECALCULATE",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          ),
        ],
      ),
    );
  }
}
