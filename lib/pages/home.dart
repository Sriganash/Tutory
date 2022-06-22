// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'home_container.dart';
import 'study.dart';
import 'practice.dart';
import 'competition.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int _selecteditem=0;
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutory",textAlign: TextAlign.right,style: TextStyle(letterSpacing: 5,
            fontSize: 35,color:Color.fromARGB(255, 167, 255, 3)),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[700],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            CircleAvatar(
              backgroundImage:AssetImage('assets/avatar.png',),
              radius: 40,
            ),
            SizedBox(height: 10,),
            Text("Hello...",style: TextStyle(fontSize: 20),),
            SizedBox(height: 100,),
            TextButton.icon(onPressed: (){changeTab(0);}, icon: FaIcon(FontAwesomeIcons.house), label: Text("Home",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 5,),
            TextButton.icon(onPressed: (){changeTab(1);}, icon: FaIcon(FontAwesomeIcons.book), label: Text("Materials",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 5,),
            TextButton.icon(onPressed: (){changeTab(2);}, icon: Icon(Icons.track_changes), label: Text("Practice",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 5,),
            TextButton.icon(onPressed: (){changeTab(3);}, icon: FaIcon(FontAwesomeIcons.globe), label: Text("Compete",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 5,),
            TextButton.icon(onPressed: (){changeTab(4);}, icon: FaIcon(FontAwesomeIcons.person), label: Text("Profile",style: TextStyle(fontSize: 20),)),
            SizedBox(height: 50,),
            Text("Tutory",textAlign: TextAlign.right,style: TextStyle(letterSpacing: 5,
            fontSize: 35,color:Color.fromARGB(255, 167, 255, 3)),),
            ],
        ),
      ),
      body: PageView(
      controller: pageController,
      children: [
        Home_Container(),
        Study(),
        Practice(),
        Competition(),
        Profile(),
      ],
    ),
    );
  }
  void changeTab(int index) {
    setState(() {
      _selecteditem=index;
      
    });
    pageController.jumpToPage(_selecteditem);
  }
}