import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tutory_v2/Models/question.dart';

class ques
{
  List<Question> questions=[];
  ques(List<Question> questions)
  {
    this.questions=questions;
    print(questions[2].question);
  }
}

class Quiz extends StatefulWidget {
  
  const Quiz(List<Question> questions, {Key? key}) : super(key: key);
  
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  int i=1;
  Widget build(BuildContext context) {
    int random = Random().nextInt(1000);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       actions: [
        TextButton(onPressed: (){}, child: Text("Skip",style:TextStyle(color:Colors.white))),
       ], 
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 75,left:30),
          child: Text("Question $i/10",style: TextStyle(fontSize: 20,color:Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30,70,30,0),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.white,
              
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: ListTile(
                    title:Text("$i"),
                    tileColor: Colors.grey.shade300,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
    
    
    );
  }
  
  
}