import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restart;
  final int total;

  const Result({Key key, @required this.restart, @required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Text(
                'Yay!, You have answered all our questions',
                style: TextStyle(fontSize: 20, fontFamily: 'Times New Roman'),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Text(
                  'The total answer is: ' + this.total.toString(),
                  style: TextStyle(fontSize: 23, fontFamily: 'Times New Roman'),
                ),
              ),
              RaisedButton(
                child: Text(
                  'Restart?',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: this.restart,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
