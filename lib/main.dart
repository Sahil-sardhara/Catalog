import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
          fontFamily:GoogleFonts.lato().fontFamily),

      initialRoute: "/home",


      routes: {
        Myroutes.homeroute:(context)=> Homepage(),
        Myroutes.loginroute:(context)=> Mylogin(),
      },
      
    );

  }
}
