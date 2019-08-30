import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;
  final int marks;

  const Answer({Key key, @required this.answerQuestion, @required this.answerText, @required this.marks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: RaisedButton(
        onPressed: () => this.answerQuestion(this.marks),
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(this.answerText),
      ),
    );
  }
}
