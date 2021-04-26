import 'package:bmi_calculator/logic.dart';
import 'package:bmi_calculator/reusable/calculatebmi.dart';
import 'package:bmi_calculator/constants/conatants.dart';
import 'package:bmi_calculator/reusable/icon_content.dart';
//import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/reusable/reusable_cards.dart';
import 'package:bmi_calculator/reusable/roundbuttons.dart';
import 'package:bmi_calculator/screens/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'secondscreen.dart';

//the usercan select the gender form this enum
enum SetGender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  SetGender selectedgender;
  int height = 50;
  int weight = 30;
  int age = 15;
  //this variables can chamge --mutable
  // Color malecolorchange = inactivecolor;
  // Color femalecolorchange = inactivecolor;

  // void changeThecolor(SetGender selectedgender) {
  //     //i is for male
  //     // ignore: unrelated_type_equality_checks
  //     if (selectedgender == SetGender.male) {
  //       if (malecolorchange == inactivecolor) {
  //         //change
  //         malecolorchange = activecolor;
  //         femalecolorchange = inactivecolor;
  //       }
  //     } else {
  //       // ignore: unrelated_type_equality_checks
  //       if (selectedgender == SetGender.female) {
  //         if (femalecolorchange == inactivecolor) {
  //           //change
  //           femalecolorchange = activecolor;
  //           malecolorchange = inactivecolor;
  //         }
  //       }
  //     }
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('B-M-I')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                //first card
                child: new Reusable(
                  onpressed: () {
                    setState(() {
                      selectedgender = SetGender.male;
                    });
                  },
                  //use of tenary
                  color: selectedgender == SetGender.male
                      ? activecolor
                      : inactivecolor,
                  cardChild: ReuseIcon(
                      gender: 'MALE', icon_type: FontAwesomeIcons.male),
                ),
              ),
              Expanded(
                //second card
                child: new Reusable(
                  //use of tenary operators
                  onpressed: () {
                    setState(() {
                      selectedgender = SetGender.female;
                    });
                  },
                  color: selectedgender == SetGender.female
                      ? activecolor
                      : inactivecolor,
                  cardChild: ReuseIcon(
                    gender: 'FEMALE',
                    icon_type: FontAwesomeIcons.female,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            //third card
            child: new Reusable(
              color: activecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kSliderformat,
                      ),
                      Text(
                        'cm',
                        style: kSliderformat,
                      )
                    ],
                  ),
                  SliderTheme(
                    //changing the theme of the slider
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: bottomactivecolor,
                      //activeTrackColor: activecolor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 50,
                      max: 250,
                      onChanged: (double newval) {
                        print(newval);
                        setState(() {
                          height = newval.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            //fourth card with two inside
            children: [
              Expanded(
                child: new Reusable(
                  color: activecolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'weight',
                        style: kbottomstyle,
                      ),
                      Text(weight.toString(), style: kSliderformat),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Roundiconbutton(
                              childicon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  if (weight <= 0) {
                                    weight = weight;
                                  } else {
                                    weight--;
                                  }
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: Roundiconbutton(
                              childicon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: new Reusable(
                  color: activecolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kbottomstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kSliderformat,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Roundiconbutton(
                                childicon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    if (age <= 0) {
                                      age = age;
                                    } else {
                                      age--;
                                    }
                                  });
                                }),
                          ),
                          Expanded(
                            child: Roundiconbutton(
                                childicon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          BmicalculateReuse(
            onclicked: () {
              setState(() {
                CalculationLogic calc =
                    new CalculationLogic(height: height, weight: weight);
                Navigator.push(context,MaterialPageRoute(builder: (context) => Resultscreen(
                  bmivalue: calc.calculateBMI(),
                  condition: calc.getCondition(),
                  advice: calc.getAdvice(),
                ),) );
                //pass the values to the next screen
               
              });
            },
            height: height,
            weight: weight,
            btntxtname: 'CALCULATE',
          )
        ],
      ),
    );
  }
}
