// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFeildScreen extends StatefulWidget {
  @override
  State<TextFeildScreen> createState() => _TextFeildScreenState();
}

class _TextFeildScreenState extends State<TextFeildScreen> {
  String firstName = "";
  final _firstNameController = new TextEditingController();
  String lastName = "";
  final _lastNameController = new TextEditingController();
  String email = "";
  final _emailController = new TextEditingController();
  String password = "";
  final _passwordController = new TextEditingController();
  String mobileNO = "";
  final _mobileNoController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignIn form"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "First Name",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _firstNameController,
                keyboardType: TextInputType.name,
                onChanged: ((value) {
                  setState(() {
                    firstName = value;
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'User Name',
                  hintText: 'Enter first Name',
                ),
              ),
              Text(
                "last Name",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.name,
                onChanged: ((value) {
                  setState(() {
                    lastName = value;
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'User Name',
                  hintText: 'Enter last Name',
                ),
              ),
              Text(
                "Email",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: ((value) {
                  setState(() {
                    email = value;
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'User Name',
                  hintText: 'Enter Email',
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.name,
                onChanged: ((value) {
                  setState(() {
                    password = value;
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'User Name',
                  hintText: 'Enter Password ',
                ),
              ),
              Text(
                "mobile No:",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: ((value) {
                  setState(() {
                    mobileNO = value;
                  });
                }),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'User Name',
                  hintText: 'Enter Mobile ',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: Text(
                    'LogIn',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    print(_firstNameController.text);
                    print(_lastNameController.text);
                    print(_emailController.text);
                    print(_passwordController.text);
                    print(_mobileNoController.text);
                  },
                ),
              ),
              Text(
                "First Name : ${firstName}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "last Name : ${lastName}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "email : ${email}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "password : ${password}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "mobile No : ${mobileNO}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
