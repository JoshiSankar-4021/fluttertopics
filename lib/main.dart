import 'package:flutter/material.dart';

import 'Message.dart';
import 'Second.dart';
import 'Third.dart';
import 'Forms.dart';
import 'First.dart';
import 'Exampleforms.dart';
import 'Guestures.dart';
import 'BottomNavigation.dart';
import 'Lists.dart';
import 'NavDrawer.dart';
import 'Listbuild.dart';
import 'Cam_vid.dart';
import 'Screen_saver.dart';
import 'Login_page.dart';

void main() {
  runApp(const MyApp());
}
//inheritance
//classes - class -extends or interfaces-interface extends
//class-interface or interface-class--->implements

class MyApp extends StatelessWidget {
  //constructor--a function or method named with same class name is called constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        '/second':(context)=> const Second(),
        '/third':(context)=>const Third(),
        '/forms':(context)=>const Forms(),
        '/first':(context)=> const First(),
        '/message':(context)=>const Message(),
        '/example':(context)=> const Example(),
        '/guesturs':(context)=> const Guestures(),
        '/lists':(context)=>const Lists(),
        '/drawer':(context)=>const Navdrawer(),
        '/listbuild':(context)=>const Listbuild(),
        '/cam_vid':(context)=>const Camera(),
        '/screen_saver':(context)=>const Screen(),
        '/login_page':(context)=>const Login(),
        '/':(context)=> const BottomNavigation()
      }
    );
  }
}


