import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEb1555);
const containerColor = Color.fromARGB(255, 74, 45, 125);

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
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 5.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
