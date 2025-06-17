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
   final _keyvalue= GlobalKey<FormState>();

   movetohome(BuildContext context) async {
     if(_keyvalue.currentState!.validate()) {
       setState(() {
         changebtn = true;
       });
       await Future.delayed(Duration(seconds: 1));
       await Navigator.pushNamed(context, Myroutes.homeroute);
       setState(() {
         changebtn = false;
       });
     }
   }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _keyvalue,
          child: Column(
            children: [
              Image.asset("assets/image/login_image.jpg",fit: BoxFit.fill,height: 300,),
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                      },
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "password cannot be empty";
                        }
                        else if(value.length<6){
                          return "password length must be 6";
                        }

                        return null;
                      },
                    ),
                    SizedBox(height: 40,),
                    Material(
                      color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changebtn?50:8),
                      child: InkWell(
                        onTap: () => movetohome(context),

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changebtn?50 : 150,
                          alignment: Alignment.center,
                          child:changebtn?Icon(Icons.done,color: Colors.white,): Text("Login",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),


                          ),
                        ),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
