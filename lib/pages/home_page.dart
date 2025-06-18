import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widget/drawer.dart';
import 'dart:convert';
import 'package:untitled/widget/item_widget.dart';

 class Homepage extends StatefulWidget {
   const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {

     var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
     var decodedata = jsonDecode(catalogjson);
     var productsdata = decodedata["products"];


  }

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
 