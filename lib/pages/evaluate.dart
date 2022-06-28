
import 'package:flutter/material.dart';
import 'package:tutory_v2/pages/Quiz.dart';

import '../Models/question.dart';

class Validate extends StatefulWidget {
  const Validate({Key? key}) : super(key: key);

  @override
  State<Validate> createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  @override
  int i=0;
  int r=0;
  dynamic green=Colors.green;
   dynamic red=Colors.red;
    dynamic c;
  Widget build(BuildContext context) {
    
    List<Question> questions = ModalRoute.of(context)?.settings.arguments as List<Question>;
    for(i=0;i<questions.length;i++)
      if(questions[i].correctAnswer==questions[i].incorrectAnswers[questions[i].answer])
        r++;
    i=0;
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: ListView(
          children: [
            Text("Your Result: $r/10",style: TextStyle(fontSize: 30,color: Colors.white),),
            for(int i=0;i<10;i++) Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10,),
                Container(color:Colors.white,padding:EdgeInsets.all(8),child:Column(
                  children: [
                    Text(questions[i].question,style: TextStyle(fontSize: 25)),
                    Row(children: [Text("Your Answer: ",style: TextStyle(fontSize: 20),),Text(questions[i].incorrectAnswers[questions[i].answer],style: TextStyle(fontSize: 20,color: check(i)),)],),
                    Row(children: [Text("Correct Answer: ",style: TextStyle(fontSize: 20),),Text(questions[i].correctAnswer,style: TextStyle(fontSize: 20,color: green),)],),
                    
                  ],  
                ),
                ),
              ],
            )
            ],),
      
        
    );
  }

  
  dynamic check(int i) {
    if(questions[i].correctAnswer==questions[i].incorrectAnswers[questions[i].answer])
      return green;
    else
      return red;  
    
  }
}