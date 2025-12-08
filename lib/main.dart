import 'package:flutter/material.dart';

import 'Second.dart';
import 'Third.dart';
import 'Forms.dart';
import 'First.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/':(context)=> const Second(),
        '/third':(context)=>const Third(),
        '/forms':(context)=>const Forms(),
        '/first':(context)=> const First(),
      }
    );
  }
}


