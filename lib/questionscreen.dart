import 'package:flutter/material.dart';
import 'package:second_app/answers_button.dart';
import 'package:second_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onselectedanswer});
  final void Function(String answer) onselectedanswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
   var currentquestionsindex = 0;
  void answerquestions(String selectedanswers) {
    widget.onselectedanswer(selectedanswers);
    setState(() {
      currentquestionsindex = currentquestionsindex + 1;
      print('$currentquestionsindex');
      // var currentquestions=questions[currentquestionsindex];
    });
  }
 @override
  Widget build(BuildContext context) {
    final currentquestions = questions[currentquestionsindex];
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestions.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 11,
            ),
            ...currentquestions.getshuffledanswers().map((item) {
              return Answerbutton(answertext: item, ontap:(){
                answerquestions(item);
              });
            })
          ],
        ),
      ),
    );
  }
}
