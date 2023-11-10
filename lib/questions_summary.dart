import 'package:flutter/material.dart';
// import 'package:second_app/results_screem.dart';

class Questionssummary extends StatelessWidget{
  Questionssummary(this.summarydata,{super.key});
  final List<Map<String,Object>> summarydata;
  @override
  Widget build(BuildContext context) {
   return Column(
    children: summarydata.map((data){
      return Row(
        children: [
          Text(((data['question_index'] as int)+1).toString()),
          Expanded(
            child: Column(
              children: [
                Text(data['questions'] as String),
                const SizedBox(height: 11,),
                Text(data['user_answers'] as String),
                Text(data['correct_answers'] as String)
              ],
            ),
          )
        ],
      );
    }).toList()
   ); 
  }
}