import 'package:flutter/material.dart';
import 'package:quiz_app/question_block.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summary, super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            final String questionNo = data['question_index'].toString();
            final String question = data['question'] as String;
            final String userAnswer = data['user_answer'] as String;
            final String correctAnswer = data['correct_answer'] as String;

            return QuestionBlock(
              questionNo: questionNo,
              question: question,
              userAnswer: userAnswer,
              correctAnswer: correctAnswer,
            );
          }).toList(),
        ),
      ),
    );
  }
}
