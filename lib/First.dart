import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget{
  const First({super.key});

  @override
  State<StatefulWidget> createState()=>_FirstState();
}

class _FirstState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Kathleen"),
      ),
      body:Column(
          children:[
            Text("HI THIS IS MY FIRST APP"),
            Image.network(
              'https://stimg.cardekho.com/images/carexteriorimages/630x420/Jaguar/F-Pace/10644/1755774688332/front-left-side-47.jpg?impolicy=resize&imwidth=480',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
              loadingBuilder: (context, child, loading) {
                if (loading == null) return child;
                return CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error);
              },
            ),
            ElevatedButton(onPressed: (){
              print("Button pressed");
            }, child: Text("BUTTON"))
          ]
      )
    );
  }
}