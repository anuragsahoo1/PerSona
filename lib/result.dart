// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetPage;
  Result(this.totalScore, this.resetPage);
  String get resultScore {
    var resulttext = 'Answer the QS to Know uR personality';
    if (totalScore == 62) {
      resulttext = 'confident,cheerfull  🥳';
    } else if (totalScore == 41) {
      resulttext = 'shy and calculated 🥸';
    } else if (totalScore == 49) {
      resulttext = 'mediocore 😒';
    } else if (totalScore == 60) {
      resulttext = 'Serious atitude 🤯';
    }
    else if (totalScore == 40) {
      resulttext = 'confused 😵‍💫';
    }
    else if (totalScore == 35) {
      resulttext = 'low Confidence 😥';
    }
    else if (totalScore == 46) {
      resulttext = 'self centeered 🤥';
    }
    else if (totalScore == 70) {
      resulttext = 'Stickler 😴';
    }
    else if (totalScore == 48) {
      resulttext = 'Boring and Lazy 🥱';
    }
    else if (totalScore == 71) {
      resulttext = 'old school 🫥';
    }
    return resulttext;
  }



  @override
  Widget build(BuildContext context) {
    return Container(
        
        width: double.infinity,
        height:double.infinity,
        padding: EdgeInsets.fromLTRB(150, 250, 150, 150),
        
        child: Column(
          
          children: [

            Text(
              resultScore,
              // ignore: prefer_const_constructors
              style: TextStyle(
                
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            TextButton(
              onPressed: resetPage,
              child: const Text('ReSet'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side:
                            BorderSide(color: Color.fromARGB(255, 81, 2, 93)))),
                textStyle:
                    MaterialStateProperty.all(const TextStyle(fontSize: 28)),
                foregroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 9, 4, 67)),
                overlayColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 10, 94, 4)),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shadowColor: MaterialStateProperty.all(
                    const Color.fromARGB(225, 95, 2, 146)),
                minimumSize: MaterialStateProperty.all(const Size(65, 30)),
              ),
            )
          ],
        ));
  }
}
