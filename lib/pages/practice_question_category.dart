import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tutory_v2/Models/category.dart';

class Practice_Question_Category extends StatelessWidget {
  const Practice_Question_Category({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        // ignore: prefer_const_constructors
        title: Text(
          "Select a category",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
    ),
    body: ListView.builder(itemCount:categories.length,
        itemBuilder: (context,length){
          return Card(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, '/level',arguments: {'id':categories[length].id});
              },
             title: Text(categories[length].name),
            leading: CircleAvatar(
              child: FaIcon(categories[length].icon),
            ),
            tileColor: Colors.white12,
          ),
          );

        }
      ),
    );
  }
  
  
}