import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  Answerbutton({
    super.key,
    required this.answertext,
    required this.ontap,
  });
  final String answertext;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
        child: Text(answertext,textAlign: TextAlign.center,));
  }
}
