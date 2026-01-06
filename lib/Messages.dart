import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Messages extends StatefulWidget{
  const Messages({super.key});
  @override
  State<StatefulWidget> createState()=>_MessageState();
}

class _MessageState extends State{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Toast Message"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "Hello! This is a toast message",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}