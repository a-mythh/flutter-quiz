import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget
{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context)
  {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(183, 255, 255, 255),
            ),
            const SizedBox(height: 80,),
            Center(
              child: Text('Learn Flutter the fun way!',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              icon: const Icon(
                Icons.arrow_circle_right_rounded,
                size: 28,
                color: Color.fromARGB(183, 255, 255, 255),
              ),
              onPressed: startQuiz,
              label: Text(
                'Start Quiz',
                style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        );
  }
}