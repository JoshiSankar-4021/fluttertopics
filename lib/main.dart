import 'package:flutter/material.dart';

import 'Messages.dart';
import 'Second.dart';
import 'Third.dart';
import 'Forms.dart';
import 'First.dart';
import 'Exampleforms.dart';
import 'Guestures.dart';

void main() {
  runApp(const MyApp());
}
//inheritance
//clases - class -extends or interfaces-interface extends
//class-interface or interface-class--->implements

class MyApp extends StatelessWidget {
  //constructor--a funtion or method named with same class name is called constructor
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
        '/message':(context)=>const Messages(),
        '/example':(context)=> const Example(),
        '/guesturs':(context)=> const Guestures()
      }
    );
  }
}


