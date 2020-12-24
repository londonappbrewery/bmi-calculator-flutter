import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import '../widgetBuilder/threelevelsWidget.dart';


class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: SafeArea(
        child: Center(
          child: new DarkContainer(color: null)
        ),
      ),
    );
  }
}
