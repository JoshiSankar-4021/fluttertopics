import 'package:flutter/material.dart';

class Lists extends StatefulWidget{
  const Lists({super.key});

  @override
  State<StatefulWidget> createState()=>_ListsState();
}

class _ListsState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(""),
      ),
    );
  }
}