import 'package:bmi_calculator/constants/conatants.dart';
import 'package:flutter/material.dart';
//import 'package:bmi_calculator/logic.dart';

class BmicalculateReuse extends StatelessWidget {
  final Function onclicked;
  final String btntxtname;
  final int height;
  final int weight;
  BmicalculateReuse({@required this.onclicked, @required this.btntxtname,this.height,this.weight});

  //const BmicalculateReuse({Key key, this.onclicked}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclicked,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            btntxtname,
            textAlign: TextAlign.center,
            style: kbottomstyle,
          ),
        ),
        color: kbottombtncolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomcontainer,
      ),
    );
  }
}
