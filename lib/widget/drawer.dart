import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
     final imageUrl ="https://pm1.aminoapps.com/7205/7fbad95c44bf0b2be18cf8243cffb9c4ee54facdr1-398-398v2_00.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Sahil Sardhara"),
                
                accountEmail: Text("sardharasahil47@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Home",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.mail,color: Colors.white,),
              title: Text("Email Me",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),


    );
  }
}
