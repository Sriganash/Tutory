import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:tutory_v2/pages/Quiz.dart';

import '../Models/question.dart';

class LoadingShared extends StatelessWidget {
  const LoadingShared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  List<Question>  questions=[];
   final Map data = ModalRoute.of(context)?.settings.arguments as Map;
  Loader().startQuiz(data);
    return Container(
      color: Colors.white,
      child: SpinKitCubeGrid(
        color: Colors.purple,
      ),
    );
  }
}

class Loader {

  Future<List<Question>>  getQuestions(int category, String difficulty) async {
  String url = "https://opentdb.com/api.php?amount=10&category=$category&difficulty=$difficulty";

  Response response=await(get(Uri.parse('$url')));
  List<Map<String, dynamic>> question = List<Map<String,dynamic>>.from(json.decode(response.body)["results"]);
  return Question.fromData(question);
}

  Future<void> startQuiz(Map data) async {
    try {
      List<Question> questions =  await getQuestions(data['id'],data['level']);
      print(questions[1].question);
      Quiz(questions);
    } catch (e) {
     print(e);
  }
}

}