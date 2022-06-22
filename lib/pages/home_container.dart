import 'package:flutter/material.dart';

class Home_Container extends StatefulWidget {
  const Home_Container({Key? key}) : super(key: key);

  @override
  State<Home_Container> createState() => _Home_ContainerState();
}

class _Home_ContainerState extends State<Home_Container> {
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