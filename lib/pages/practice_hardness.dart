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
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("Select the level",textAlign: TextAlign.left,style: TextStyle(letterSpacing: 5,
            fontSize: 20,color: Colors.white),),
            centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
        elevation: 0,
        
      ),
    body:Column(  
      children: <Widget>[  
        Card(
          child: ListTile(
            title: Text("Easy",style: TextStyle(color: Colors.black),),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceSmile,color: Colors.white,),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'easy'});
            },
            tileColor: Colors.transparent,
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Medium",style: TextStyle(color: Colors.black)),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceAngry,color: Colors.white,),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'medium'});
            },
            tileColor: Colors.transparent,
          ),
        ),
        Card(
          child: ListTile(
            title: Text("Hard",style: TextStyle(color: Colors.black)),
            leading: CircleAvatar(
              child:FaIcon(FontAwesomeIcons.faceGrimace,color: Colors.white,),
            ),
            onTap:(){
              Navigator.pushNamed(context, '/loading',arguments: {'id':data['id'],'level':'hard'});
            },
            tileColor: Colors.transparent,
          ),
        ),  
      ],  
    ),
    );
  
  }
}