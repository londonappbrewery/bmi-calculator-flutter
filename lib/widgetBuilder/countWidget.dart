import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  CountWidget({@required this.firstCallBack, @required this.secondCallBack});
  final Function firstCallBack;
  final Function secondCallBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundIconButton(callBack: firstCallBack, icon: Icons.add),
        SizedBox(
          width: 20.0,
        ),
        RoundIconButton(callBack: secondCallBack, icon: Icons.remove)
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.callBack, this.icon});

  final Function callBack;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: callBack,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
