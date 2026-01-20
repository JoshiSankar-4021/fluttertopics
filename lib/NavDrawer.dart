import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertopics/Guestures.dart';

class Navdrawer extends StatefulWidget{
  const Navdrawer({super.key});


  @override
  State<Navdrawer> createState()=>_Navdrawer();

}

class _Navdrawer extends State<Navdrawer>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Side Nav"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text("SECOND"),
                onTap: (){
                  Fluttertoast.showToast(msg: "Clicked on SECOND LIST TILE");
                  Navigator.pushNamed(context, '/second');
                },
              ),
              ListTile(
                title: Text("Forms"),
                onTap: (){
                  Fluttertoast.showToast(msg: "Clicked on Form LIST TILE");
                  Navigator.pushNamed(context, '/forms');
                },
              ),
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
              ElevatedButton(onPressed: (){
                Fluttertoast.showToast(msg: "Clicked button");
              }, child: Text("CLICK ME"))

            ],
          ),
      ),
    );
  }

}