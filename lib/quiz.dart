import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questionscreen.dart';
import 'package:second_app/results_screem.dart';
import 'package:second_app/start_screen.dart';

class quiz extends StatefulWidget {
  quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return quizstate();
  }
}

class quizstate extends State<quiz> {
  List<String> selectedanswers = [];
  var activescreen = 'starts-screen';
  @override
  void switchscreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  void chooseanswers(String answer) {
    selectedanswers.add(answer);
    if (selectedanswers.length == questions.length) {
      setState(() {
        
        activescreen='results-screen';
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget=Startscreen(switchscreen);
    if (activescreen=='questions-screen'){
      screenwidget=QuestionScreen(onselectedanswer: chooseanswers);
    }
    if(activescreen=='results-screen'){
      screenwidget=Resultsscreen(choosenanwers: selectedanswers,);}
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 84, 29, 180),
          const Color.fromARGB(255, 187, 49, 7),
        ], begin: Alignment.bottomRight, end: Alignment.center)),
      child: screenwidget,),
      ),
    );
  }
}

