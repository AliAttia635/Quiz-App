import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

Color b = Colors.black;
Color w = Colors.white;

class _MyAppState extends State<MyApp> {
  bool isSwitched = false;
  int _totalScore = 0;
  int _questionIndex = 0;
  int num0 = 0, num1 = 0, num2 = 0, num3 = 0, num4 = 0;

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s you favourite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 20},
        {'text': 'red', 'score': 30},
        {'text': 'green', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s you favourite animal?',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 20},
        {'text': 'rabbit', 'score': 30},
        {'text': 'cheetah', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s you favourite Departement?',
      'answers': [
        {'text': 'Computer Science', 'score': 10},
        {'text': 'Information System', 'score': 20},
        {'text': 'Information technology', 'score': 30},
        {'text': 'Artificial intelligence', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s you favourite player?',
      'answers': [
        {'text': 'messi 2011', 'score': 10},
        {'text': 'messi 2015', 'score': 20},
        {'text': 'messi 2019', 'score': 30},
        {'text': 'messi 2022', 'score': 40}
      ]
    },
    {
      'questionText': 'What\'s you favourite Team?',
      'answers': [
        {'text': 'Barcelona 2009', 'score': 10},
        {'text': 'Barcelona 2010', 'score': 20},
        {'text': 'Barcelona 2011', 'score': 30},
        {'text': 'Barcelona 2015', 'score': 40}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
      num3 = 0;
      num4 = 0;
    });
  }

  void answerText(int score) {
    if (_questionIndex == 0) {
      num0 = score;
    } else if (_questionIndex == 1) {
      num1 = score;
    } else if (_questionIndex == 2) {
      num2 = score;
    } else if (_questionIndex == 3) {
      num3 = score;
    } else if (_questionIndex == 4) {
      num4 = score;
    }
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
    print(_questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz app"),
            actions: [
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(value);
                    if (isSwitched == true) {
                      w = Colors.black;
                      b = Colors.white;
                    } else {
                      w = Colors.white;
                      b = Colors.black;
                    }
                  });
                },
                activeColor: Colors.black,
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.white,
              ),
            ],
          ),
          body: Container(
              color: w,
              child: _questionIndex < _question.length
                  ? Quiz(_question, _questionIndex, answerText)
                  : Result(_resetQuiz, _totalScore)),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.arrow_back, color: w, size: 30),
              onPressed: () {
                if (_questionIndex == 1) _totalScore -= num0;
                if (_questionIndex == 2) _totalScore -= num1;
                if (_questionIndex == 3) _totalScore -= num2;
                if (_questionIndex == 4) _totalScore -= num3;
                if (_questionIndex == 5) _totalScore -= num4;
                setState(() {
                  if (_questionIndex > 0) {
                    _questionIndex--;
                  }
                });
              }),
        ));
  }
}