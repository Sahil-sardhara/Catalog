import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: "/",


      routes: {
        "/":(context)=> Homepage(),
        "/login":(context)=> Mylogin(),
      },
      
    );

  }
}
