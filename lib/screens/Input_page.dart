import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/reusable_card.dart';
import '../Components/icon_content.dart';
import 'result_page.dart';
import 'package:bmi_calculator/Components/bottom_button.dart';
import '../Components/round_icon_button.dart';
import 'package:bmi_calculator/calculator.dart';

enum Gender { male, female }

Gender selectedGender;
int height = 169;
int weight = 60;
int age = 20;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                        ? kCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      img: FontAwesomeIcons.mars,
                      nam: 'MALE',
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
                        ? kCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      img: FontAwesomeIcons.venus,
                      nam: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kNamTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kNamTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff8D8E98),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
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
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kNamTextStyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              FontAwesomeIcons.minus,
                              () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              FontAwesomeIcons.plus,
                              () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: kCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kNamTextStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            age.toString(),
                            style: kNumTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(FontAwesomeIcons.minus, () {
                                setState(() {
                                  age--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(FontAwesomeIcons.plus, () {
                                setState(() {
                                  age++;
                                });
                              })
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          BottomButton(() {
            Calculator calc = Calculator(height, weight);

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(calc.calBMI(),
                        calc.getResult(), calc.bmiInterpretation())));
          }, 'CALCULATE'),
        ],
      ),
    );
  }
}
