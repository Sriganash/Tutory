// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  int i=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Practice",style: TextStyle(fontSize: 40,color:Colors.blue[600],fontWeight:FontWeight.w800),),
            SizedBox(height:20),
            TextButton.icon(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bookMedical), label: Text("Previous Year Questions",style: TextStyle(fontSize: 20,color:Colors.blue[600]),)),
            TextButton.icon(onPressed: (){Navigator.pushNamed(context, '/category');}, icon: FaIcon(FontAwesomeIcons.paperclip), label: Text("Practice Questions",style: TextStyle(fontSize: 20,color:Colors.blue[600]),)),
          ],)
      ),
    );
  }
}