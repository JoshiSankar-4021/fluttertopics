import 'package:flutter/material.dart';

class Third extends StatefulWidget{
  const Third({super.key});
  @override
  State<Third> createState()=>_ThirdState();
}

class _ThirdState extends State<Third>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:Text("THIRD")
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,'/');
          }, child: Text("SECOND"), )
        ],
      )
    );
  }
}