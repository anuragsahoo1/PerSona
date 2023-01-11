// ignore_for_file: sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const PrimaryColor=Color(0xFF66BB6A);
  final _question = const [
    {
      'questionText': 'Do you make friends easily',
      'answers': [
        {'text': 'YES', 'score': 9},
        {'text': 'NO', 'score': 1},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 7}
      ],
    },
    {
      'questionText': 'Do you trust others',
      'answers': [
        {'text': 'YES', 'score': 8},
        {'text': 'NO', 'score': 4},
        {'text': 'MayBe', 'score':5 },
        {'text': 'SomeTime', 'score':10 }
      ],
    },
    {
      'questionText': 'Do you help others',
      'answers': [
        {'text': 'YES', 'score': 10},
        {'text': 'NO', 'score': 1},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 2}
      ],
    },
      {
      'questionText': 'Do you feel comfortable with others',
      'answers': [
        {'text': 'YES', 'score': 10},
        {'text': 'NO', 'score': 1},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 8}
      ],
    },
      {
      'questionText': 'Do you get irritated easily',
      'answers': [
        {'text': 'YES', 'score': 1},
        {'text': 'NO', 'score': 8},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 6}
      ],
    },
      {
      'questionText': 'Do you think cheating as good',
      'answers': [
        {'text': 'YES', 'score': 4},
        {'text': 'NO', 'score': 8},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 5}
      ],
    },
      {
      'questionText': 'Do I think highly of yourshelf',
      'answers': [
        {'text': 'YES', 'score': 6},
        {'text': 'NO', 'score': 2},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 5}
      ],
    },
     {
      'questionText': 'Do you make rash decision',
      'answers': [
        {'text': 'YES', 'score': 1},
        {'text': 'NO', 'score': 9},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 4}
      ],
    },
      {
      'questionText': 'You love to dayDream??',
      'answers': [
        {'text': 'YES', 'score': 6},
        {'text': 'NO', 'score': 3},
        {'text': 'MayBe', 'score': 4},
        {'text': 'SomeTime', 'score': 5}
      ],
    },
      {
      'questionText': 'Do you prefer to be alone',
      'answers': [
        {'text': 'YES', 'score': 7},
        {'text': 'NO', 'score': 4},
        {'text': 'MayBe', 'score': 5},
        {'text': 'SomeTime', 'score': 8}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetPage() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _qustionIndx(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(title:const Text('PerSona'),
        centerTitle: true,
        
        
        actions: [
          IconButton(icon: const Icon(Icons.notifications),onPressed: (){},)
        ],
        backgroundColor: Color.fromARGB(255, 130, 89, 2),
        leading: IconButton(onPressed: (){}, icon: IconButton(icon: const Icon(Icons.menu),
        onPressed: (){},)),
       
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                question: _question,
                questionIndex: _questionIndex,
                qustionIndx: _qustionIndx)
            : Result(_totalScore, _resetPage),
      ),
    );
  }
}
