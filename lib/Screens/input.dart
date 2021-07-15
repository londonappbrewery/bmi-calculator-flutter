import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/Components/reusablecard.dart';
import 'package:bmi_calculator/Components/icon_content.dart';
import 'package:bmi_calculator/Components/RoundIconButton.dart';
import 'package:bmi_calculator/Components/bottombutton.dart';
import 'results_page.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Calculator_brain.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardClass: IconContent(
                      icon: FontAwesomeIcons.mars,
                      lable: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardClass: IconContent(
                      icon: FontAwesomeIcons.venus,
                      lable: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColour,
              cardClass: Column(
                children: <Widget>[
                  Text("HEIGHT", style: kLableTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text("$height", style: kNumberTextStyle),
                      Text("cm", style: kUnitTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 210.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardClass: Column(
                      children: <Widget>[
                        Text("WEIGHT", style: kLableTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("$weight", style: kNumberTextStyle)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight--;
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColour,
                    cardClass: Column(
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLableTextStyle,
                        ),
                        Text(
                          "$age",
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    if (age == 0) {
                                      age = 0;
                                    } else {
                                      age--;
                                    }
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            padding: EdgeInsets.only(bottom: 10.0),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: BottomButton(
              buttonTitle: "CALCULATE",
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBmi(),
                      resultText: calc.getResult(),
                      Interpetation: calc.getInterpretation(),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
