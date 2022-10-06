import 'package:flutter/material.dart';
import 'package:test_app/home/Login.dart';
import 'package:test_app/home/Register.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context)=> Login(),
        'register':(context)=> Register()
      },
    );
  }
}