import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'main.dart';

class Quiz extends StatelessWidget {
  final question;
  final questionIndex;
  final Function(int s) answerText;

  const Quiz(this.question, this.questionIndex, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Asnwer( () => answerText(int.parse(answer['score'].toString())), answer['text'].toString());
        }).toList(),
      ],
    );
  }
}
