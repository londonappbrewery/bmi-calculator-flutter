import 'package:flutter/cupertino.dart';

class DarkContainer extends StatelessWidget {
  DarkContainer({@required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
