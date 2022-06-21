// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_course/result.dart';
import './quiz.dart';

//void main() {
//runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favoutite color?',
      'answers': [
        {'text': 'Rainbow color', 'score': 1},
        {'text': 'Red', 'score': 4},
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favoutite animal?',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'elephant', 'score': 8},
        {'text': 'horse', 'score': 5},
        {'text': 'cow', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favoutite Company?',
      'answers': [
        {'text': 'Jindal_stell', 'score': 8},
        {'text': 'TATA_ATEEL', 'score': 6},
        {'text': 'software', 'score': 1},
        {'text': 'None of the above', 'score': 6},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    } else {
      print("no more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY_Quiz_App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : result(_totalscore, _resetQuiz),
      ),
    );
  }
}
