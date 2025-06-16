import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/routes.dart';

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
        
            Text('Welcome',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,
        
            ),),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:('Enter Username'),
                        hintStyle: TextStyle(color: Colors.black),
                        label: Text('Username')
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText:('Enter Password'),
                        hintStyle: TextStyle(color: Colors.black),
                        label: Text('Password')
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, Myroutes.homeroute);
        
                  }, child: Text('Login',style: TextStyle(color: Colors.white,),),
                    style: TextButton.styleFrom(backgroundColor: Colors.deepPurple,minimumSize: Size(150,40),

                    ),
        
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
