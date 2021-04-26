//import 'dart:html';

import 'package:bmi_calculator/reusable/calculatebmi.dart';
import 'package:bmi_calculator/constants/conatants.dart';
import 'package:bmi_calculator/reusable/reusable_cards.dart';
//import 'package:bmi_calculator/logic.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  //const Resultscreen({Key key}) : super(key: key);
  final String bmivalue;
  final String condition;
  final String advice;
  Resultscreen({this.bmivalue, this.advice, this.condition});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('B-M-I')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Your Result',
                  style: kSliderformat,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Reusable(
              color: inactivecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.condition,
                    style: kresultcondition,
                  ),
                  Text(
                    this.bmivalue,
                    style: kbmitextstyle,
                  ),
                  Text(
                    this.advice,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          BmicalculateReuse(
              onclicked: () {
                Navigator.pop(context);
              },
              btntxtname: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
