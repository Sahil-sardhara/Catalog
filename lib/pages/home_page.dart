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

     await Future.delayed(Duration(seconds: 2));

     var catalogjson = await rootBundle.loadString("assets/files/catalog.json");
     var decodedata = jsonDecode(catalogjson);
     var productsdata = decodedata["products"];
     catalogmodel.items=List.from(productsdata).map<Item>((item)=>Item.formMap(item)).toList();
     setState(() {

     });


  }

   @override
   Widget build(BuildContext context) {

     return Scaffold(
       appBar: AppBar(
         title: Center(child: Text('Catalog App',)),
       ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: (catalogmodel.items!=null && catalogmodel.items.isNotEmpty)?
         GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount:2,
           mainAxisSpacing: 16,
           crossAxisSpacing: 16
         ),
             itemBuilder: (context , index){
           final item = catalogmodel.items[index];
           return Card(
             clipBehavior: Clip.antiAlias,
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             child: GridTile(child: Image.network(item.image),
               header: Center(child: Text(item.name,style: TextStyle(color: Colors.deepPurple,fontSize: 16),)),
               footer: Text(item.price.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
             ),
           );


             })
             :Center(child: CircularProgressIndicator(),),
       ),
       drawer: Mydrawer(),
     );
   }
}
 