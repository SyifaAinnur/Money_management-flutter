import 'package:flutter/material.dart';
import 'package:money_bangking/screen/beranda.dart';
import 'screen/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}