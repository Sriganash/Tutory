import 'package:flutter/material.dart';

class Competition extends StatefulWidget {
  const Competition({Key? key}) : super(key: key);

  @override
  State<Competition> createState() => _CompetitionState();
}

class _CompetitionState extends State<Competition> {
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