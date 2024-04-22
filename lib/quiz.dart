import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
    }
  }

class _QuizState  extends State<Quiz> {
  List<String> selectedAnswers =[];
  var  activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    
    if(selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget =  QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }
    if(activeScreen == 'results-screen') {
      screenWidget =  ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(224, 9, 202, 240),
                Color.fromARGB(222, 234, 244, 254),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}