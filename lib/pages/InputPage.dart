import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';

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
                Expanded(child: new DarkContainer(color: activeCardColor)),
                Expanded(child: new DarkContainer(color: activeCardColor))
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: new DarkContainer(
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
                Expanded(child: new DarkContainer(color: activeCardColor)),
                Expanded(child: new DarkContainer(color: activeCardColor))
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
