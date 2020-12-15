import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import 'package:bmi_calculator/widgetBuilder/fontAwesomeWidget.dart';

const bottomContainerHeight = 80.0;
const inactiveCardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: new DarkContainer(
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
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: new DarkContainer(
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
                      children: [],
                    ),
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
                  cardChild: Column(
                    children: [],
                  ),
                )),
                Expanded(
                    child: new DarkContainer(
                  color: inactiveCardColor,
                  cardChild: Column(
                    children: [],
                  ),
                ))
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 5.0),
              decoration: BoxDecoration(
                color: bottomContainerColor,
              )),
        ],
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
