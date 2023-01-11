import 'package:flutter/material.dart';
import './quest.dart';
import './Answer.dart';



class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function qustionIndx;
  Quiz({
        @required this.question,
      @required this.questionIndex,
      @required this.qustionIndx
      });
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        // ignore: prefer_const_constructors
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(()=>qustionIndx(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
