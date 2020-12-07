import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';

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
                new DarkContainer(color: Color(0xFF1D1E33)),
                new DarkContainer(color: Color(0xFF1D1E33))
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new DarkContainer(color: Color(0xFF1D1E33))
                // change the DarkContainer width and height to have percentage sizes
                // Solve this instead of using fixed sizes I had to use Expanded widgets
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                new DarkContainer(color: Color(0xFF1D1E33)),
                new DarkContainer(color: Color(0xFF1D1E33))
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
