import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {

  final String QuestionText;

  Question(this.QuestionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(7.0),
      child: Text(
          QuestionText,
          style: TextStyle(fontSize: 30,color: b),
          textAlign: TextAlign.center,
        ),
    );
  }
}



