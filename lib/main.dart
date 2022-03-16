import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) 
  {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  final _questions = const [
    {
      'question': 'Number of primitive data types in Java are?',
      'answer': [
        {'text': '8', 'score': 1},
        {'text': '7', 'score': 0},
        {'text': '6', 'score': 0},
        {'text': '9', 'score': 0},
      ]
    },
    {
      'question': 'What is the size of float and double in java?',
      'answer': [
        {'text': '32 and 32', 'score': 0},
        {'text': '64 and 32', 'score': 0},
        {'text': '32 and 64', 'score': 1},
        {'text': '64 and 64', 'score': 0},
      ]
    },
    {
      'question': 'To which of the following does the class string belong to?',
      'answer': [
        {'text': 'java.string', 'score': 0},
        {'text': 'java.lang', 'score': 1},
        {'text': 'java.applet', 'score': 0},
        {'text': 'java.awt', 'score': 0},
      ]
    },
    {
      'question': 'Total constructor string class have?',
      'answer': [
        {'text': '3', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '13', 'score': 1},
        {'text': '20', 'score': 0},
      ]
    },
    {
      'question': 'Identify the return type of a method that does not return any value.',
      'answer': [
        {'text': 'int', 'score': 0},
        {'text': 'void', 'score': 1},
        {'text': 'double', 'score': 0},
        {'text': 'None', 'score': 0},
      ]
    },
    {
      'question': 'Output of Math.floor(3.6)?',
      'answer': [
        {'text': '4.0', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '3.0', 'score': 1},
      ]
    },
    {
      'question': 'Where does the system stores parameters and local variables whenever a method is invoked?',
      'answer': [
        {'text': 'stack', 'score': 1},
        {'text': 'array', 'score': 0},
        {'text': 'heap', 'score': 0},
        {'text': 'tree', 'score': 0},
      ]
    },
    {
      'question': 'Identify the modifier which cannot be used for constructor.',
      'answer': [
        {'text': 'public', 'score': 0},
        {'text': 'static', 'score': 1},
        {'text': 'private', 'score': 0},
        {'text': 'protected', 'score': 0},
      ]
    },
    {
      'question': 'What is the variables declared in a class for the use of all methods of the class called?',
      'answer': [
        {'text': 'Object', 'score': 0},
        {'text': 'Reference variable', 'score': 0},
        {'text': 'Instance variable', 'score': 1},
        {'text': 'None', 'score': 0},
      ]
    },
    {
      'question': 'Identify the infinite loop',
      'answer': [
        {'text': 'for( ; ; )', 'score':0},
        {'text': 'for(int i=0 ; i<1 ; i--)', 'score': 0},
        {'text': 'for(int i=0 ; ; i++)', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    int a = _questionIndex + 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                a: a,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
