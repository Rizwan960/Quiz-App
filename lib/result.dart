// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final VoidCallback reset;

  const Result({Key? key, required this.finalResult, required this.reset})
      : super(key: key);

  String get resultPhrase {
    var text = "No more Question";
    if (finalResult >= 50 && finalResult <= 60) {
      text = "You are Awesome and Innocent";
    } else if (finalResult >= 40 && finalResult <= 50) {
      text = "You are pretty Likeable";
    } else if (finalResult >= 30 && finalResult <= 40) {
      text = "You are .....Strange";
    } else {
      text = "You are so Bad";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: double.infinity,
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: reset,
            child: const Text(
              "Restart Quiz",
            ),
          )
        ],
      ),
    );
  }
}
