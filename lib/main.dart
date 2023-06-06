import 'package:fast_defense/Start%20Page/home_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Home(),   //type your page name here
      debugShowCheckedModeBanner: false,
    );
  }
}