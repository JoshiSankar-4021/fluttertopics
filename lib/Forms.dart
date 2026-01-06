import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<StatefulWidget> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final _formKey = GlobalKey<FormState>();

  String? selectedRadio;
  String? selectedGender;

  String name = "";
  String email = "";
  String password = "";
  String phonenum ="";

  void Register() {
    if (_formKey.currentState!.validate()) {
      print("Name: $name");
      print("Email: $email");
      print("Phone:$phonenum");
      print("Password: $password");
      print("Gender: $selectedGender");
      print("Handicapped: $selectedRadio");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("FORMS"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,  // <-- FIXED
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Name",
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(20)),
                      )),
                  keyboardType: TextInputType.name,
                  validator: (value) =>
                  value!.isEmpty ? "Enter name" : null,
                  onChanged: (value) => name = value,
                ),
                SizedBox(height:10 ,),
                TextFormField(
                  decoration: InputDecoration(labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(20)),
                  )
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                  value!.isEmpty ? "Enter email" : null,
                  onChanged: (value) => email = value,
                ),
                SizedBox(height:10 ,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Phone",border: OutlineInputBorder()),
                  keyboardType: TextInputType.phone,
                  validator: (value) =>
                  value!.isEmpty ? "Enter email" : null,
                  onChanged: (value) => phonenum = value,
                ),
                SizedBox(height:10 ,),
                TextFormField(
                  decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()),
                  obscureText: true,
                  validator: (value) =>
                  value!.length < 6 ? "Password must be 6+ chars" : null,
                  onChanged: (value) => password = value,
                ),
                SizedBox(height:10 ,),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: "Select Gender"),
                  items: ["Male", "Female", "Other"].map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (value) {
                    selectedGender = value;
                  },
                  validator: (value) =>
                  value == null ? "Select gender" : null,
                ),
                SizedBox(height: 20),
              Text("Is Handicapped"),
                Row(
                  children: [
                    Radio(
                      value: "Yes",
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      },
                    ),
                    Text("Yes"),

                    SizedBox(width: 20),

                    Radio(
                      value: "No",
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value.toString();
                        });
                      },
                    ),
                    Text("No"),
                  ],
                ),

                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: Register,
                    child: Text("Register")
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
