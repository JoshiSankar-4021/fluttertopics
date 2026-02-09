import 'package:flutter/material.dart';

class Lists extends StatefulWidget{
  const Lists({super.key});

  @override
  State<StatefulWidget> createState()=>_ListsState();
}

class _ListsState extends State{
  List array =["joshi","akash","karthik","nikita","venkatesh","eswar","srinu"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("LIST RENDERING"),
      ),
      body: ListView.builder(
        itemCount: array.length, // ✅ IMPORTANT
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(array[index]),
              leading: const CircleAvatar(child: Icon(Icons.person)),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),

    );
  }
}