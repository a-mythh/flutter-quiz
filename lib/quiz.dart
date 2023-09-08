import 'package:flutter/material.dart';

// widgets
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget
{
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>
{
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  @override
  void initState() 
  {  
    activeScreen = StartScreen(changeScreen);
    
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length)
    {
      setState(() {
        activeScreen = ResultsScreen(restartQuiz: restartQuiz, chosenAnswers: selectedAnswers,);
      });
    }
  }

  void restartQuiz()
  {
    setState(() {
      activeScreen = StartScreen(changeScreen);
      selectedAnswers = [];
    });
  }


  void changeScreen()
  {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAns: chooseAnswer);
    });
  }

  @override
  Widget build(context)
  {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 0, 136, 255),
              Color.fromARGB(255, 67, 222, 209)
            ],
          ),
        ),
        child: activeScreen,
      ),
    ));
  }
}