import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/product_screen.dart';

import 'binds.dart';
void main() {
  binds().dependencies();
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return    GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home:  ProductPage(),
     );
   }
 }
