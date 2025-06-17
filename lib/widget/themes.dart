import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme{

   static ThemeData lighttheme(BuildContext context)=>ThemeData(
       primarySwatch: Colors.deepPurple,
       appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
       ),
       textTheme: Theme.of(context).textTheme,
       fontFamily:GoogleFonts.lato().fontFamily);


   static ThemeData darktheme(BuildContext context)=>ThemeData(
      brightness: Brightness.dark,
   );
}