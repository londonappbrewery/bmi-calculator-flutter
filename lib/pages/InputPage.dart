import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import 'package:bmi_calculator/widgetBuilder/fontAwesomeWidget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: new DarkContainer(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FontAwesomeWidget(
                        margin: EdgeInsets.only(bottom: 8.0),
                        icon: FaIcon(FontAwesomeIcons.mars),
                        size: 60.0,
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(fontSize: 15.0),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: new DarkContainer(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FontAwesomeWidget(
                        margin: EdgeInsets.only(bottom: 8.0),
                        icon: FaIcon(FontAwesomeIcons.venus),
                        size: 60.0,
                      ),
                      Text(
                        'FEMALE',
                        style: TextStyle(fontSize: 15.0),
                      )
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
                      children: [],
                    ),
                    color: activeCardColor,
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
                  color: activeCardColor,
                  cardChild: Column(
                    children: [],
                  ),
                )),
                Expanded(
                    child: new DarkContainer(
                  color: activeCardColor,
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
}
