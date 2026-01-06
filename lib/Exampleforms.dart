import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example extends StatefulWidget{
  const Example({super.key});

  @override
  State<StatefulWidget> createState()=> _ExampleState();
}

class _ExampleState extends State<Example> {
  final _formkey = GlobalKey<_ExampleState>();

  String? selectedRadio;
  String? selectGender;

  String name="";
  String last="";
  String password="";
  String email="";
  String phnum="";

  void Register() {
    if(_formkey.currentState!.validate()){
      print("Name: $name");
      print("LastName: $last");
      print("Password: $password");
      print("Email: $email");
      print("Phone Number: $phnum");
      print("Gender: $selectGender");
      print("Is Employed? : $selectedRadio");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
    );
  }

  bool validate() {
    return true;
  }
}



