import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import 'package:bmi_calculator/widgetBuilder/fontAwesomeWidget.dart';
import '../widgetBuilder/slider.dart';
import '../constants.dart';
import '../widgetBuilder/threelevelsWidget.dart';
import '../widgetBuilder/countWidget.dart';
import 'ResultsPage.dart';

double _sliderCurrentValue = 130.0;
double _weightCurrentValue = 50.0;
double _ageCurrentValue = 22.0;
enum Gender { male, female }
Gender selectedGender;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = activeCardColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: new DarkContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? inactiveCardColor
                        : activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FontAwesomeWidget(
                          margin: EdgeInsets.only(bottom: 8.0),
                          icon: FontAwesomeIcons.mars,
                          size: 60.0,
                          textColor: Color(0xFF8D8E98),
                          textSize: 18.0,
                          iconText: 'MALE',
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: new DarkContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? inactiveCardColor
                        : activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FontAwesomeWidget(
                          margin: EdgeInsets.only(bottom: 8.0),
                          icon: FontAwesomeIcons.venus,
                          size: 60.0,
                          iconText: 'FEMALE',
                          textColor: Color(0xFF8D8E98),
                          textSize: 18.0,
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: new DarkContainer(
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style: LabelTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(_sliderCurrentValue.round().toString(),
                                    style: NumberTextStyle),
                                Text(
                                  'cm',
                                  style: LabelTextStyle,
                                ),
                              ],
                            ),
                            new CustomSlider(
                              currentValue: _sliderCurrentValue,
                              minValue: 120.0,
                              maxValue: 220.0,
                              onPress: (double value) {
                                setState(() {
                                  _sliderCurrentValue = value;
                                });
                              },
                            )
                          ]),
                      color: inactiveCardColor,
                    ),
                  )
                  // change the DarkContainer width and height to have percentage sizes
                  // Solve this instead of using fixed sizes I had to use Expanded widgets
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: new DarkContainer(
                    color: inactiveCardColor,
                    cardChild: new ThreeLevelWidget(
                        // had to end up building the countWidget
                        labelText: 'WEIGHT',
                        numberText: _weightCurrentValue.round().toString(),
                        customChild: new CountWidget(firstCallBack: () {
                          if (_weightCurrentValue < 200) {
                            print(_weightCurrentValue);
                            setState(() {
                              _weightCurrentValue++;
                            });
                          }
                        }, secondCallBack: () {
                          if (_weightCurrentValue > 0) {
                            setState(() {
                              _weightCurrentValue--;
                            });
                          }
                        })),
                  )),
                  Expanded(
                      child: new DarkContainer(
                    color: inactiveCardColor,
                    cardChild: new ThreeLevelWidget(
                      labelText: 'AGE',
                      numberText: _ageCurrentValue.round().toString(),
                      customChild: new CountWidget(firstCallBack: () {
                        if (_ageCurrentValue < 100) {
                          setState(() {
                            _ageCurrentValue++;
                          });
                        }
                      }, secondCallBack: () {
                        if (_ageCurrentValue > 0) {
                          setState(() {
                            _ageCurrentValue--;
                          });
                        }
                      }),
                    ),
                  ))
                ],
              ),
            ),
            Container(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/results');
                    },
                    child: Center(
                        child: Text(
                      "CALCULATE",
                      style: LargeButtonStyle,
                    ))),
                width: double.infinity,
                height: bottomContainerHeight,
                margin: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  color: bottomContainerColor,
                )),
          ],
        ),
      ),
    );
  }

  // selectedGender(Gender gender) {
  //   if (gender == Gender.male) {
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //   } else {
  //     femaleCardColor = activeCardColor;
  //     maleCardColor = inactiveCardColor;
  //   }
  // }
}
