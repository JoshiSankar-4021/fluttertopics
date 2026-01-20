import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertopics/Message.dart';

import 'First.dart';
import 'Forms.dart';
import 'Lists.dart';
import 'Second.dart';
import 'Third.dart';
import 'Message.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();  // Fixed class name
}

class _BottomNavigationState extends State<BottomNavigation> {  // Fixed class name
   int _currentindex = 0;  // Fixed spelling
  final List<Widget> _tabs = [  // Fixed spelling
    const Second(),//0
    const First(),//1
    const Third(),//2
    const Forms(),//3
    const Message(),//4
    const Lists()//5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentindex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.deepOrange,
        currentIndex: _currentindex,
        onTap: (index) => setState(() => _currentindex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded), label: 'Second'),//0
          BottomNavigationBarItem(icon: Icon(Icons.add_home), label: 'First'),//1
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Third'),//2
          BottomNavigationBarItem(icon: Icon(Icons.add_home), label: 'Forms'),//3
          BottomNavigationBarItem(icon: Icon(Icons.pan_tool_alt_sharp), label: 'Message'),//4
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Render'),//5

        ],
      ),
    );
  }
}
