import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widget/themes.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lighttheme(context),
      initialRoute: Myroutes.homeroute,
      debugShowCheckedModeBanner: false,


      routes: {
        Myroutes.homeroute:(context)=> Homepage(),
        Myroutes.loginroute:(context)=> Mylogin(),
      },
      
    );

  }
}
