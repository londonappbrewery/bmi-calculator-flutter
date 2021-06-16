import 'package:bmi_calculator/widgets/MyPanel.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeColor = Color(0xFF1D1E33);
const accentColor = Color(0xFFEB1555);

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
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: MyPanel(
                  color: activeColor,
                  widget: GenderWidget(
                    icon: FaIcon(FontAwesomeIcons.mars),
                    iconText: 'Male'
                  ),
                ),
              ),
              Expanded(
                child: MyPanel(
                  color: activeColor,
                  widget: GenderWidget(
                    icon: FaIcon(FontAwesomeIcons.venus),
                    iconText: 'Female',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyPanel(
            color: activeColor,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: MyPanel(
                  color: activeColor,
                ),
              ),
              Expanded(
                child: MyPanel(
                  color: activeColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: accentColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}
