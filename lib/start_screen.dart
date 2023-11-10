import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Startscreen extends StatelessWidget{
  Startscreen(this.startquiz,{super.key});
  final void Function() startquiz;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/images.jpg',width: 300,),
          SizedBox(height: 11,),
          Text('Learn flutter in a better way',style: GoogleFonts.lato(
            fontSize: 24,
            fontWeight: FontWeight.bold
          )),
          SizedBox(height: 11,),
          OutlinedButton.icon(onPressed: startquiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text('start quiz',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),))
        ],
      )
    );
  }
}