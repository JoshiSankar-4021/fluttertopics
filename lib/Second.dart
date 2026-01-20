import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<Second> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.activeGreen,
          title: Text("SECOND"),
        ),
        body: Center(
          child: Column(
            children: [
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/third');
                }, child: Text("THIRD")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/forms');
              }, child: Text("Forms")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/first');
              }, child: Text("First")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/message');
              }, child: Text("Toast")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/example');
              }, child: Text("ExForm")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/guesturs');
              }, child: Text("Guestures")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/bottom');
              }
              , child: Text("Side nav drawer")),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/drawer');
              }, child: Text("DRAWER"))
            ],
          ),
        ),
      );
  }
}
