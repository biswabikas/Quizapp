import 'package:flutter/material.dart';
import 'package:second_app/data/questions.dart';
import 'package:second_app/questions_summary.dart';

class Resultsscreen extends StatelessWidget{
  Resultsscreen({super.key,required this.choosenanwers});
  final List<String>choosenanwers;
  List<Map<String,Object>>getsummarydata(){
    final List<Map<String,Object>>summary=[];
  for(var i=0;i<choosenanwers.length;i++){
    summary.add({
      'question_index':i,
      'questions':questions[i].text,
      'correct_answers':questions[i].answers[0],
      'user_answers':choosenanwers[i]
    });
  }
  return summary;
    
  }
  @override
  Widget build(BuildContext context) {
    final summarydata=getsummarydata();
    final numtotalquestions=questions.length;
    final numcorrectquestions=summarydata.where((element){
      return element['user_answers']==element['correct_answers'];
    }).length;
    return Center(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You answers $numcorrectquestions out of $numtotalquestions questions correctly'),
                SizedBox(height: 11,),
                Questionssummary(summarydata),
                SizedBox(height: 11,),
                TextButton(onPressed: (){
              
                }, child: Text('Restart quiz'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}