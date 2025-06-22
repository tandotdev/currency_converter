import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const MyApp());
}

// type 1  statelesswidget
// type 2 statefullwidget 
// type 3 inherited widget 


// state

// 1. metarial design 
// 2. cupertino Design 

class MyApp extends  StatelessWidget{
  const MyApp({super.key});
   @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: CurrencyConverterMaterialPage(),
     );
  }
}