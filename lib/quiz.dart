import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final Function updateQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Quiz(this.updateQuestion,this.questions, this.questionIndex);
  Widget build(BuildContext context) {
    return Column
    (children:[
    Question(questions[questionIndex]['questionText']),
    
    ...(questions[questionIndex]['answerText'] as List<Map<String,Object>>).map((answer) {
      return Answer(()=>updateQuestion(answer['score']), answer['answer']);

    }
    ).toList()

    ]);
    }
}
