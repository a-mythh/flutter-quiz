import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionBlock extends StatelessWidget {
  const QuestionBlock(
      {required this.questionNo,
      required this.question,
      required this.userAnswer,
      required this.correctAnswer,
      super.key});

  final String questionNo, question, userAnswer, correctAnswer;

  @override
  Widget build(context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: userAnswer == correctAnswer
                ? const Color.fromARGB(255, 72, 241, 11)
                : const Color.fromARGB(255, 255, 123, 191),
          ),
          child: Text(
            questionNo,
            style: GoogleFonts.notoSans(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(question,
                    style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  userAnswer,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 255, 228, 191),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  correctAnswer,
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 162, 255, 169),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
