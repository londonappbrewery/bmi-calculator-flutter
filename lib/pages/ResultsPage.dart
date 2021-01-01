import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import '../widgetBuilder/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    this.weightLabel,
    this.weight,
    this.weightDescription,
  });

  String weightLabel;
  String weight;
  String weightDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: new DarkContainer(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      (weightLabel != null)
                          ? weightLabel
                          : "No weight provided",
                      style: resultTextStyle,
                    ),
                    Text(
                      (weight != null) ? weight : "N/A",
                      style: BMITextStyle,
                    ),
                    Text(
                      (weightDescription != null)
                          ? weightDescription
                          : "No weight description",
                      style: BMIDescriptionTextStyle,
                    )
                  ],
                ),
                color: activeCardColor,
              ),
            ),
            Container(
                child: BottomButton(
                    title: "RE-CALCULATE",
                    onClick: () {
                      Navigator.pop(context);
                    }),
                width: double.infinity,
                height: bottomContainerHeight,
                margin: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  color: bottomContainerColor,
                ))
          ],
        ),
      ),
    );
  }
}
