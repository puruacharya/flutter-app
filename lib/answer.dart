import 'package:flutter/material.dart';

class Answer extends StatelessWidget{

  final Function fun;
  final String option;
  Answer(this.fun, this.option);
  Widget build(BuildContext context){
  return Container(
  width:double.infinity,
  child: RaisedButton(
    textColor: Colors.white,
    color : Colors.blueAccent,
    child: Text(option),
    onPressed: fun,),
  );

}
}