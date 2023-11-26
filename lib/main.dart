import 'package:basic_quiz_app/quiz.dart';
import 'package:basic_quiz_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': "What's Your Favorite Color?",
      'answerText': [
        {'text': 'Blue', 'score': 7},
        {'text': 'Yellow', 'score': 5},
        {'text': 'black', 'score': 10},
      ]
    },
    {
      'questionText': "What's Your Favorite Animal",
      'answerText': [
        {'text': 'Cat', 'score': 9},
        {'text': 'Dog', 'score': 10},
        {'text': 'Parrot', 'score': 7},
      ]
    },
    {
      'questionText': "What's Your Favorite Hobby?",
      'answerText': [
        {'text': "Book Reading", 'score': 9},
        {'text': "Movies", 'score': 5},
        {'text': "Cricket", 'score': 8},
      ]
    },
    {
      'questionText': "You almost always Complete What you started?",
      'answerText': [
        {'text': 'Agree', 'score': 10},
        {'text': "Neither Agree Nor Disagree", 'score': 5},
        {'text': 'Disagree', 'score': 0},
      ]
    },
    {
      'questionText':
          "It is better to be polite and rule obiedient rather than carefull?",
      'answerText': [
        {'text': 'Agree', 'score': 10},
        {'text': "Neither Agree Nor Disagree", 'score': 5},
        {'text': 'Disagree', 'score': 0},
      ]
    },
    {
      'questionText':
          "Are you good at at making sure that small details are not overlooked?",
      'answerText': [
        {'text': 'Agree', 'score': 10},
        {'text': "Neither Agree Nor Disagree", 'score': 5},
        {'text': 'Disagree', 'score': 0},
      ]
    }
  ];
  var _questionIndex = 0;
  int _total = 0;
  void _restart() {
    setState(() {
      _questionIndex = 0;
      _total = 0;
    });
  }

  void _answerQuestion(int score) {
    _total += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Basic Quiz Application"),
          ),
          body: _questionIndex < _question.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  question: _question,
                  questionIndex: _questionIndex)
              : Result(finalResult: _total, reset: _restart)),
    );
  }
}
