// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  double value = 20.0;
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:EdgeInsets.all(value),
      padding: EdgeInsets.fromLTRB(15, 150, 15, 40),
      width: double.infinity,
      child: Text(
        question,
        style: TextStyle(fontSize: 28,fontStyle: FontStyle.italic,color: Color.fromARGB(255, 1, 47, 68)
        
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
