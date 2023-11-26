// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answers;
  final String answerText;

  const Answer(this.answers, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: answers,
        child: Text(answerText),
      ),
    );
  }
}
