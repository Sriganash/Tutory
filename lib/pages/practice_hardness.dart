import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Level_scrn extends StatefulWidget {
  const Level_scrn({Key? key}) : super(key: key);

  @override
  State<Level_scrn> createState() => _Level_scrnState();
}

class _Level_scrnState extends State<Level_scrn> {
  late Map data;
  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data['id']);
    return Scaffold(
      appBar: AppBar(
        
        // ignore: prefer_const_constructors
        title: Text(
          "Select Level",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
    ),
    body:Column(  
      children: <Widget>[  
        Card(
          child: ListTile(
            title: Text("Easy"),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceSmile),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'easy'});
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Medium"),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceAngry),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'medium'});
            },
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Hard"),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceGrimace),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'hard'});
            },
          ),
        ),  
      ],  
    ),
    );
  
  }
}