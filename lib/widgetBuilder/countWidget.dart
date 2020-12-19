import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  CountWidget({@required this.firstCallBack, @required this.secondCallBack});
  final Function firstCallBack;
  final Function secondCallBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(
          onPressed: firstCallBack,
          child: Icon(Icons.add),
        ),
        FlatButton(onPressed: secondCallBack, child: Icon(Icons.remove))
      ],
    );
  }
}
