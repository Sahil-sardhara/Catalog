import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widget/drawer.dart';
import 'package:untitled/widget/item_widget.dart';
 class Homepage extends StatelessWidget {
   const Homepage({super.key});
 
   @override
   Widget build(BuildContext context) {
     final dumoylist = List.generate(5, (index)=> catalogmodel.items[0]);
     return Scaffold(
       appBar: AppBar(
         title: Center(child: Text('Catalog App',)),
       ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: ListView.builder(
           itemCount: dumoylist.length,
             itemBuilder: (context, index){
             return ItemWidget(
               item: dumoylist[index],


             );
             }
         ),
       ),
       drawer: Mydrawer(),
     );
   }
 }
 