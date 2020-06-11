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
class _MyAppState extends State<MyApp>{
  var _questionIndex =0;
  int _totalScore = 0;
  final _questions = const[
    {
      'questionText':"What's you favourite color?",
      'answerText':[{'answer':'Pink','score':1},{'answer':'Red','score':9},{'answer':'Blue','score':7},{'answer':'Green','score':5},],
    },
    {
      'questionText':"Which is your favourite animal?",
      'answerText':[{'answer':'Dog','score':7},{'answer':'Cat','score':5},{'answer':'Rabbit','score':3},{'answer':'Tiger','score':9},],
    },
    {
      'questionText':"Which is your travel destination ",
      'answerText':[{'answer':'Mountains','score':9},{'answer':'Beaches','score':7},{'answer':'Island','score':11},{'answer':'Historical','score':5},],
    },
  ];
  void _answerquestion1(int score){
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      if(_questionIndex < _questions.length) {
        print("We have more questions");
      }
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My First App Appbar'),),
      body: (_questionIndex < _questions.length)
          ? Quiz(_answerquestion1,_questions, _questionIndex ,)
      : Result(_totalScore)
    ));
  }
}