import 'package:flutter/material.dart';
 class Homepage extends StatelessWidget {
   const Homepage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Center(child: Text('Catalog App',style: TextStyle(color: Colors.white),)),
       ),
       body: Center(
         child: Container(
           child: Text('welcome to project'),
         ),
       ),
       drawer: Drawer(backgroundColor: Colors.white,),
     );
   }
 }
 