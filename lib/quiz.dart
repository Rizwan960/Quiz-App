import 'package:basic_quiz_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> question;
  final questionIndex;
  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.question,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]["answerText"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
