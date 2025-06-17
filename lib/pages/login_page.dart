import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/utils/routes.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {

  String name="";
  bool changebtn =false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),

            Text('Welcome $name',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,

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
                        label: Text('Username'),
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {
                        
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText:('Enter Password'),
                        hintStyle: TextStyle(color: Colors.black),
                        label: Text('Password')
                    ),
                  ),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebtn=true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changebtn?50 : 150,
                      alignment: Alignment.center,
                      child:changebtn?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(changebtn?50:8),
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                  /*ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, Myroutes.homeroute);

                  }, child: Text('Login',style: TextStyle(color: Colors.white,),),
                    style: TextButton.styleFrom(backgroundColor: Colors.deepPurple,minimumSize: Size(150,40),

                    ),

                  )*/
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
