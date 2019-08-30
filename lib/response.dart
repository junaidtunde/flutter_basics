import 'package:flutter/material.dart';
import 'package:flutter_basics/Question.dart';
import 'package:flutter_basics/answer.dart';

class Response extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionPos;
  final Function answerQuestion;

  const Response({Key key, @required this.questions, this.questionPos, this.answerQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(
            questionString: this.questions[this.questionPos]['questionText'],
          ),
          ...(this.questions[this.questionPos]['Answers'] as List<List>).map((answer) {
            return Answer(answerQuestion: this.answerQuestion, answerText: answer[0], marks: answer[1],);
          }).toList(),
        ],
      ),
    );
  }
}
