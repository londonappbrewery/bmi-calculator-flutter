import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import '../widgetBuilder/bottomButton.dart';

class ResultsPage extends StatelessWidget {
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
                      "Weight label",
                      style: resultTextStyle,
                    ),
                    Text(
                      "18.3",
                      style: BMITextStyle,
                    ),
                    Text(
                      "Description",
                      style: BMIDescriptionTextStyle,
                    )
                  ],
                ),
                color: activeCardColor,
              ),
            ),
            Container(
                child: BottomButton(title: "CALCULATE AGAIN"),
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
