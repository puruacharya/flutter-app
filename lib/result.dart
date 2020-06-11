import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  Result(this.finalScore);

  String get resultPhrase {
    String resultText ="You did It";
    if(finalScore < 8){
      resultText = "You are awesome and innocent";
    }
    else if(finalScore <15){
      resultText = "Little awesome";
    }
    else if(finalScore < 22){
      resultText = "You are common";
    }
    else{
      resultText ="You are bad";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return (
        Center(child : Text(resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),)
    );
  }
}
