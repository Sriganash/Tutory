import 'package:flutter/material.dart';

class Study extends StatefulWidget {
  const Study({Key? key}) : super(key: key);

  @override
  State<Study> createState() => _StudyState();
}

class _StudyState extends State<Study> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        ),
      ),
    );
  }
}