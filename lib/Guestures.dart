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
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: Text("Forms"),
              onTap: (){
                  Fluttertoast.showToast(
                      msg: "Forms was clicked");
                  Navigator.pushNamed(context, '/forms');
              },
            ),
            ListTile(
              title: Text("Second"),
            ),
          ],
        )
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
      // bottomSheet: Container(
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.vertical(top:Radius.circular(20)
      //     ),
      //   ),
      //   child: Padding(padding: EdgeInsets.all(16),
      //   child: Text("TEXT IS HERE"),
      //   ),
      // ),
      // bottomSheet: Container(
      //   padding: EdgeInsets.all(16),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.share), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.edit), onPressed: () {}),
      //       IconButton(icon: Icon(Icons.delete), onPressed: () {}),
      //     ],
      //   ),
      // ),
      bottomSheet: Container(
        height: 350,
        width: 500,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total: ₹1299",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Checkout"),
            ),
            Text("Total: ₹1299",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Checkout"),
            ),
            Text("Total: ₹1299",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Checkout"),
            ),
            Text("Total: ₹1299",
                style: TextStyle(color: Colors.white, fontSize: 18)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Checkout"),
            )
          ],
        ),
      ),

    );
  }
}