import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutory_v2/Models/category.dart';

class Practice_Question_Category extends StatelessWidget {
  const Practice_Question_Category({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: Text("Select category",style: TextStyle(letterSpacing: 5,
            fontSize: 20,color: Colors.white),),
            centerTitle: true,
        backgroundColor: Colors.deepPurple[700],
        elevation: 0,
        
      ),
    body: ListView.builder(itemCount:categories.length,
        itemBuilder: (context,length){
          return Card(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/level',arguments: {'id':categories[length].id});
              },
             title: Text(categories[length].name,style: TextStyle(color: Colors.black),),
            leading: CircleAvatar(
              child: FaIcon(categories[length].icon,color: Colors.white,),
            ),
            tileColor: Colors.transparent,
          ),
          );

        }
      ),
    );
  }
  
  
}