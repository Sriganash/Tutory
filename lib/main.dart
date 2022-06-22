import 'package:flutter/material.dart';
import 'package:tutory_v2/pages/Quiz.dart';
import 'package:tutory_v2/pages/competition.dart';
import 'package:tutory_v2/pages/home.dart';
import 'package:tutory_v2/pages/practice.dart';
import 'package:tutory_v2/pages/practice_hardness.dart';
import 'package:tutory_v2/pages/practice_question_category.dart';
import 'package:tutory_v2/pages/profile.dart';
import 'package:tutory_v2/pages/study.dart';
import 'package:tutory_v2/shared/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
    darkTheme: ThemeData.dark(),
    theme: ThemeData(
    brightness: Brightness.dark,
   visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
   primaryColor: const Color(0xff03203C),
   primaryColorDark: const Color(0xff242B2E),
            
   iconTheme:
   const IconThemeData(color: Colors.amber, size: 15.0, opacity: 10),
    accentColor: Colors.amber,
    accentColorBrightness: Brightness.light),
    initialRoute: '/home',
    routes: {
      '/home':(context)=>const Home(),
      '/study':(context)=>const Study(),
      '/practice':(context)=>const Practice(),
      '/competition':(context) => const Competition(),
      '/profile':(context)=>const Profile(),
      '/level':(context) => const Level_scrn(),
      '/category':(context) => const Practice_Question_Category(),
      '/loading':(context) => const LoadingShared()

    },
    );
  }
}