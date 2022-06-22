import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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