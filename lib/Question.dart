import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionString;

  const Question({Key key, @required this.questionString}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Text(
          this.questionString,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 20
          ),
        ));
  }
}
