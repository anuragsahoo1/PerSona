// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
      
        style: ButtonStyle(
          
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color:Colors.amber)
              )
            ),
            
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 21)),
            foregroundColor: MaterialStateProperty.all(Colors.greenAccent),
            overlayColor: MaterialStateProperty.all(Colors.amber),
            shadowColor: MaterialStateProperty.all(Color.fromARGB(255, 128, 4, 4)),
            elevation: MaterialStateProperty.all(17),
            padding: MaterialStateProperty.all(EdgeInsets.all(14)),
            minimumSize: MaterialStateProperty.all(Size(21, 50)),
            // minimumSize: MaterialStateProperty.all(Size.fromWidth(1)),
            
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
            

        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
