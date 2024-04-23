
import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionNumber;

  const QuestionIdentifier({super.key, required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'Question ${questionNumber.toString()}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
