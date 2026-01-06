import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Guestures extends StatefulWidget{
  const Guestures({super.key});

  @override
  State<Guestures> createState() => _Guestures();

}

class _Guestures extends State<Guestures>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guesturs"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
        GestureDetector(
          child: Text("TAP ME",
          style: TextStyle(
            color: Colors.green,
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),),
          onTap: (){
            Fluttertoast.showToast(msg: "TAPPED ME");
          },
        ),
          GestureDetector(
            child: Text("Navigate",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),),
            onTap: (){
             Navigator.pushNamed(context, '/');
            },
          ),
          GestureDetector(
            child: Text("DOUBLE TAP",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 26,
                  fontWeight: FontWeight.bold
              ),),
            onDoubleTap: (){
              Fluttertoast.showToast(msg: " DOUBLE TAPPED ME");
            },
          )
        ],
      ),
    );
  }
}