import 'package:flutter/material.dart';
import 'package:flutter_basics/response.dart';
import 'package:flutter_basics/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'Answers': [['Red', 1], ['Blue', 2], ['Green', 3], ['Yellow', 4]],
      // 'Answers': ['Pop', 'Rock', 'Jazz', 'Bass'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'Answers': [['Dog', 1], ['Cat', 2], ['Cow', 3], ['Goat', 4]],
      // 'Answers': ['Pop', 'Rock', 'Jazz', 'Bass'],
    },
    {
      'questionText': 'What is your favorite song?',
      // 'Answers': ['Pop', 'Rock', 'Jazz', 'Bass'],
      'Answers': [['Pop', 1], ['Rock', 2], ['Jazz', 3], ['Bass', 4]],
    }
  ];

  var _questionPos = 0, _answered = false, _total = 0;

  void _answerQuestions(mark) {
    _total += mark;

    if (_questionPos < _questions.length - 1) {
      setState(() {
        _questionPos += 1;
      });
    } else {
      setState(() {
        _answered = true;
      });
    }
  }

  void _restart() {
    setState(() {
      _questionPos = 0;
      _answered = false;
      _total = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions App'),
        ),
        body: Container(
          child: !this._answered
              ? Response(
                questions: this._questions,
                questionPos: this._questionPos,
                answerQuestion: this._answerQuestions,
              )
              : Result(
                restart: this._restart,
                total: this._total,
              )
        ),
      ),
    );
  }
}
