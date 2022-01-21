// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ecommerce/screens/cart_screen.dart';
import 'package:ecommerce/screens/details_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce App",
      home: CartPage(),
    );
  }
}
